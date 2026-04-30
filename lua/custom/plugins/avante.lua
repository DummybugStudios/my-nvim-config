return {
	"yetone/avante.nvim",
	build = "make",
	version = false,
	opts = {
		mode = "agentic",
		provider = "copilot/sonnet-4.6",
		providers = {
			["copilot/sonnet-4.6"] = {
				__inherited_from = "copilot",
				model = "claude-sonnet-4.6",
				context_window = 250000,
				display_name = "copilot/Claude Sonnet 4.6 250k",
			}
		},
		selector = {
			provider = "telescope",
		},
		web_search_engine = {
			provider = "kagi",
			proxy = nil,
		},
		behaviour = {
			auto_apply_diff_after_generation = false,
			auto_focus_on_diff_view = true,
			auto_approve_tool_permissions = {
				"rag_search",
				"python",
				"git_diff",
				"glob",
				"search_keyword",
				"read_file_toplevel_symbols",
				"read_file",
				"copy_path",
				"web_search",
				"fetch",
				"think",
				"get_diagnostics",
				"attempt_completion",
			}
		},
	},
	enabled = false,
}
