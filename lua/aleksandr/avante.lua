local Avante = require('avante')
local Config = require('avante.config')
local Utils = require('avante.utils')


local config = {
	provider = 'gpt4free',
	vendors = {
		gpt4free = {
			__inherited_from = 'openai',
			api_key_name = '',
			endpoint = 'http://localhost:1337/v1',
			model = 'gpt-4o-mini',
		}
	},
	file_selector = {
		provider = 'telescope',
	},
}

Avante.setup(config)
