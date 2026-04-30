return {
	'zbirenbaum/copilot.lua',

	dependencies = {
		{ 
			"copilotlsp-nvim/copilot-lsp", -- (optional) for nes functionality
			config = function()
				require('copilot-lsp').setup({
					nes =  {
						move_count_threshold = 3,
					}
				})
			end
		}
	},

	config = function()
		require('copilot').setup({
			suggestion = {
				enabled = true,
				auto_trigger = true,
				debounce = 75,
				keymap = {
					accept = "<C-a>",
					accept_word = '<M-a>',
					accept_line = '<M-A>',
					next = '<M-]>',
					prev = '<M-[>',
					dismiss = '<C-]>',
				}
			},
			nes = {
				enabled = true,
				keymap = {
					accept_and_goto = false,
					accept = '<C-s>',
					dimsiss = '<C-e>'
				}
			},
		})
	end

}
