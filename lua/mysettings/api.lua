local api = {}

api.KEY = os.getenv("GEMINI_API_KEY") --

api.MODELS = {
	GEMINI_2_0_FLASH = "gemini-2.0-flash",
	GEMINI_2_0_PRO = "gemini-2.0-pro",
}

return api
