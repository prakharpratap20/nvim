return {
	"kiddos/gemini.nvim",
	config = function()
		local api = require("mysettings.api") -- Ensure api is required
		require("gemini").setup({
			model_config = {
				completion_delay = 500,
				model_id = api.MODELS.GEMINI_2_0_FLASH,
				temperature = 0.2,
				top_k = 20,
				max_output_tokens = 8196,
				response_mime_type = "text/plain",
			},
			chat_config = {
				enabled = true,
			},
			hints = {
				enabled = true,
				hints_delay = 1000,
				insert_result_key = "<S-Tab>",
				get_prompt = function(node, bufnr)
					local code_block = vim.treesitter.get_node_text(node, bufnr)
					local filetype = vim.api.nvim_get_option_value("filetype", { buf = bufnr })
					local prompt = string.format(
						"Instruction: Use 1 or 2 sentences to describe what the following %s function does:\n\n```%s\n%s\n```",
						filetype,
						filetype,
						code_block
					)
					return prompt
				end,
			},
			completion = {
				enabled = true,
				blacklist_filetypes = { "help", "qf", "json", "yaml", "toml" },
				blacklist_filenames = { ".env" },
				completion_delay = 300,
				move_cursor_end = false,
				insert_result_key = "<S-Tab>",
				get_system_text = function()
					return "You are a coding AI assistant that autocompletes user's code at a specific cursor location marked by <insert_here></insert_here>.\nDo not wrap the code in ```"
				end,
				get_prompt = function(bufnr, pos)
					local filetype = vim.api.nvim_get_option_value("filetype", { buf = bufnr })
					local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)
					local line = pos[1]
					local col = pos[2]
					local target_line = lines[line]

					if target_line then
						lines[line] = target_line:sub(1, col)
							.. "<insert_here></insert_here>"
							.. target_line:sub(col + 1)
					else
						return nil
					end

					local code = table.concat(lines, "\n")
					return string.format(
						"Below is a %s file:\n```%s\n%s\n```\n\nInstruction:\nWhat code should be placed at <insert_here></insert_here>?",
						filetype,
						filetype,
						code
					)
				end,
			},
			instruction = {
				enabled = true,
				menu_key = "<C-o>",
				prompts = {
					{
						name = "Unit Test",
						command_name = "GeminiUnitTest",
						menu = "Unit Test 🚀",
						get_prompt = function(lines, bufnr)
							local code = table.concat(lines, "\n")
							local filetype = vim.api.nvim_get_option_value("filetype", { buf = bufnr })
							return string.format(
								"Context:\n\n```%s\n%s\n```\n\nObjective: Write unit tests for the above snippet of code.",
								filetype,
								code
							)
						end,
					},
					{
						name = "Code Review",
						command_name = "GeminiCodeReview",
						menu = "Code Review 📜",
						get_prompt = function(lines, bufnr)
							local code = table.concat(lines, "\n")
							local filetype = vim.api.nvim_get_option_value("filetype", { buf = bufnr })
							return string.format(
								"Context:\n\n```%s\n%s\n```\n\nObjective: Perform a thorough code review for the following code.\nProvide detailed explanations and constructive feedback.",
								filetype,
								code
							)
						end,
					},
					{
						name = "Code Explain",
						command_name = "GeminiCodeExplain",
						menu = "Code Explain",
						get_prompt = function(lines, bufnr)
							local code = table.concat(lines, "\n")
							local filetype = vim.api.nvim_get_option_value("filetype", { buf = bufnr })
							return string.format(
								"Context:\n\n```%s\n%s\n```\n\nObjective: Explain the following code in detail.\nProvide thorough explanations and meaningful insights.",
								filetype,
								code
							)
						end,
					},
				},
			},
			task = {
				enabled = true,
				get_system_text = function()
					return "You are an AI assistant that helps users write code.\nYour output should be a code diff for git."
				end,
				get_prompt = function(bufnr, user_prompt)
					local buffers = vim.api.nvim_list_bufs()
					local file_contents = {}

					for _, b in ipairs(buffers) do
						if vim.api.nvim_buf_is_loaded(b) then
							local lines = vim.api.nvim_buf_get_lines(b, 0, -1, false)
							local filename = vim.api.nvim_buf_get_name(b)
							filename = vim.fn.fnamemodify(filename, ":.")
							local filetype = vim.api.nvim_get_option_value("filetype", { buf = b })
							local file_content = string.format(
								"`%s`:\n\n```%s\n%s\n```\n\n",
								filename,
								filetype,
								table.concat(lines, "\n")
							)
							table.insert(file_contents, file_content)
						end
					end

					local current_filepath = vim.api.nvim_buf_get_name(bufnr)
					current_filepath = vim.fn.fnamemodify(current_filepath, ":.")
					local context = table.concat(file_contents, "\n\n")

					return string.format(
						"%s\n\nCurrent Opened File: %s\n\nTask: %s",
						context,
						current_filepath,
						user_prompt
					)
				end,
			},
		})
	end,
}
