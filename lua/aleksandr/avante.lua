local Avante = require('avante')
local Config = require('avante.config')
local Utils = require('avante.utils')


local config = {
	provider = 'claude',
	claude = {
		model = 'claude-opus-4-20250514'
	},
	vendors = {
		gpt4free = {
			__inherited_from = 'openai',
			api_key_name = '',
			endpoint = 'http://localhost:1337/v1',
			model = 'deepseek-v3',
		}
	},
	file_selector = {
		provider = 'telescope',
	},
}

Avante.setup(config)
