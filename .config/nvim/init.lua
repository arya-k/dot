-- Plugins
require "paq" {
    "savq/paq-nvim";  -- Let Paq manage itself
    {"nvim-treesitter/nvim-treesitter", run=":TSUpdate"};
    "nvim-treesitter/nvim-treesitter-textobjects";
    "machakann/vim-sandwich";
}

-- TreeSitter TextObjects
require "nvim-treesitter.configs".setup {
    ensure_installed = {'python', 'cpp', 'rust', 'go'},
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
                ["]f"] = "@function.outer",
                ["]c"] = "@class.outer",
            },
            goto_previous_start = {
                ["[f"] = "@function.outer",
                ["[c"] = "@class.outer",
            },
        },
    },
}

-- Vscode Comment
if vim.fn.exists('g:vscode') then
    vim.api.nvim_set_keymap("x", "gc", "<Plug>VSCodeCommentary", { silent = true });
    vim.api.nvim_set_keymap("n", "gc", "<Plug>VSCodeCommentary", { silent = true });
    vim.api.nvim_set_keymap("o", "gc", "<Plug>VSCodeCommentary", { silent = true });
    vim.api.nvim_set_keymap("n", "gcc","<Plug>VSCodeCommentaryLine", { silent = true });
end
