-- Plugins
require "paq" {
    "savq/paq-nvim";  -- Let Paq manage itself
    {"nvim-treesitter/nvim-treesitter", run=":TSUpdate"};
    "nvim-treesitter/nvim-treesitter-textobjects";
    "machakann/vim-sandwich";
}

-- TreeSitter TextObjects
require "nvim-treesitter.configs".setup {
    ensure_installed = "maintained",
    textobjects = {
        select = {
	    enable = true,
	    lookahead = true,
	    keymaps = {
	        ["af"] = "@function.outer",
	        ["if"] = "@function.inner",
	        ["ac"] = "@class.outer",
	        ["ic"] = "@class.inner",
	    },
        },
	move = {
            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = {
                ["]m"] = "@function.outer",
                ["]]"] = "@class.outer",
            },
            goto_next_end = {
                ["]M"] = "@function.outer",
                ["]["] = "@class.outer",
            },
            goto_previous_start = {
                ["[m"] = "@function.outer",
                ["[["] = "@class.outer",
            },
            goto_previous_end = {
                ["[M"] = "@function.outer",
                ["[]"] = "@class.outer",
            },
        },
    },
}

-- Vscode Comment
vim.api.nvim_set_keymap("x", "gc", "<Plug>VSCodeCommentary", { silent = true });
vim.api.nvim_set_keymap("n", "gc", "<Plug>VSCodeCommentary", { silent = true });
vim.api.nvim_set_keymap("o", "gc", "<Plug>VSCodeCommentary", { silent = true });
vim.api.nvim_set_keymap("n", "gcc","<Plug>VSCodeCommentaryLine", { silent = true });