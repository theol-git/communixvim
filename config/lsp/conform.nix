{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      notify_on_error = true;
      formatters_by_ft = {
        html = [["prettierd" "prettier"]];
        css = [["prettierd" "prettier"]];
        javascript = [["prettierd" "prettier"]];
        javascriptreact = [["prettierd" "prettier"]];
        typescript = [["prettierd" "prettier"]];
        typescriptreact = [["prettierd" "prettier"]];
        java = ["google-java-format"];
        python = ["ruff"];
        lua = ["stylua"];
        nix = ["alejandra"];
        markdown = [["prettierd" "prettier"]];
        rust = ["rustfmt"];
        bash = ["shfmt"];
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>uf";
      action = ":FormatToggle<CR>";
      options = {
        desc = "Toggle Format";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>f";
      action = "<cmd>lua require('conform').format()<cr>";
      options = {
        silent = true;
        desc = "Format Buffer";
      };
    }

    {
      mode = "v";
      key = "<leader>F";
      action = "<cmd>lua require('conform').format()<cr>";
      options = {
        silent = true;
        desc = "Format Lines";
      };
    }
  ];
}
