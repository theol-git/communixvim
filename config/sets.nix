{ pkgs, lib, config, ... }: {
  config = {
    opts = {
      # Enable relative line numbers
      number = true;
      relativenumber = true;

      # Set tabs to 4 spaces
      tabstop = 4;
      softtabstop = 4;
      expandtab = true;

      # Enable auto indenting and set it to spaces
      smartindent = true;
      shiftwidth = 4;

      # Enable ignorecase + smartcase for better searching
      ignorecase = true;
      smartcase = true; # Don't ignore case with capitals

      # Decrease updatetime
      updatetime = 500; # faster completion (4000ms default)

      # Set completeopt to have a better completion experience
      # need to try this out after
      # completeopt = ["menuone" "noselect" "noinsert"]; # mostly just for cmp

      # Enable persistent undo history
      # not sure about these ones
      # swapfile = false;
      # backup = false;
      undofile = true;

      # Enable the sign column to prevent the screen from jumping
      signcolumn = "yes";

      # Enable cursor line highlight
      cursorline = true; # Highlight the line where the cursor is located

      # Set fold settings
      # These options were reccommended by nvim-ufo
      # See: https://github.com/kevinhwang91/nvim-ufo#minimal-configuration
      foldcolumn = "0";
      foldlevel = 99;
      foldlevelstart = 99;
      foldenable = true;

      # Always keep 8 lines above/below cursor unless at start/end of file
      scrolloff = 8;

      # Place a column line
      colorcolumn = "80";

      # Reduce which-key timeout to 10ms
      timeoutlen = 10;

      # Set encoding type
      encoding = "utf-8";
      fileencoding = "utf-8";

      # OPTIONS UNDER THIS SHOULD BE RECHECKED 
      # More space in the neovim command line for displaying messages
      cmdheight = 2;

      # We don't need to see things like INSERT anymore
      showmode = false;

      # Maximum number of items to show in the popup menu (0 means "use available screen space")
      pumheight = 0;

      # Use conform-nvim for gq formatting. ('formatexpr' is set to vim.lsp.formatexpr(), so you can format lines via gq if the language server supports it)
      formatexpr = "v:lua.require'conform'.formatexpr()";

      laststatus = 3; # (https://neovim.io/doc/user/options.html#'laststatus')
    };

    extraConfigLua = ''
      local opt = vim.opt
      local g = vim.g
      local o = vim.o
    '';
  };
}
