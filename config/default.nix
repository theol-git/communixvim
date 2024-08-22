{
  # Import all your configuration modules here
  imports = [
    ./sets.nix
    ./keymaps.nix

    ./colorscheme.nix

    ./dap/dap.nix

    ./git/gitsigns.nix
    ./git/diffview.nix
    ./git/fugitive.nix

    ./languages/nvim-lint.nix
    ./languages/treesitter/treesitter.nix
    ./languages/treesitter/treesitter-context.nix # need to see if i like this
    ./languages/treesitter/treesitter-textobjects.nix
    ./languages/treesitter/ts-autotag.nix
    ./languages/treesitter/ts-context-commentstring.nix

    ./lsp/conform.nix
    ./lsp/fidget.nix
    ./lsp/lsp.nix
    ./lsp/lspsaga.nix
    ./lsp/trouble.nix
    ./lsp/cmp.nix

    ./none-ls/none-ls.nix

    ./pluginmanagers/lazy.nix

    ./statusline/lualine.nix

    ./ui/nui.nix

    ./telescope/telescope.nix
    ./misc/better-escape.nix
    ./misc/hardtime.nix
    ./misc/harpoon.nix
    ./misc/illuminate.nix
    ./misc/markdown-preview.nix
    ./misc/mini.nix
    ./misc/neodev.nix
    ./misc/neotest.nix
    ./misc/nvim-colorizer.nix
    ./misc/persistence.nix
    ./misc/plenary.nix
    ./misc/todo-comments.nix
    ./misc/toggleterm.nix
    ./misc/undotree.nix
    ./misc/whichkey.nix
  ];
}
