{
  plugins.which-key = {
    enable = true;
    settings = {
      icons = {
        breadcrumb = "»";
        group = "+";
        separator = ""; # ➜
      };
      spec = [
        # Harpoon Configs
        {
          __unkeyed-1 = "<leader>a";
          mode = "n";
          group = "Add file to Harpoon";
        }
        {
          __unkeyed-1 = "<C-e>";
          mode = "n";
          group = "Show Harpoon file list";
        }
        {
          __unkeyed-1 = "<C-h>";
          mode = "n";
          group = "Harpoon File 1";
        }
        {
          __unkeyed-1 = "<C-t>";
          mode = "n";
          group = "Harpoon File 2";
        }
        {
          __unkeyed-1 = "<C-n>";
          mode = "n";
          group = "Harpoon File 3";
        }
        {
          __unkeyed-1 = "<C-s>";
          mode = "n";
          group = "Harpoon File 4";
        }
        {
          __unkeyed-1 = "<C-S-P>";
          mode = "n";
          group = "Toggle previous buffer stored in Harpoon list";
        }
        {
          __unkeyed-1 = "<C-S-N>";
          mode = "n";
          group = "Toggle next buffer stored in Harpoon list";
        }

        # General maps
        {
          __unkeyed-1 = "<leader>f";
          mode = "n";
          group = "+find/file";
        }

        {
          __unkeyed-1 = "<leader>s";
          mode = "n";
          group = "+search";
        }

        {
          __unkeyed-1 = "<leader>q";
          mode = "n";
          group = "+quit/session";
        }

        {
          __unkeyed-1 = "<leader>g";
          mode = ["n" "v"];
          group = "+git";
        }

        {
          __unkeyed-1 = "<leader>u";
          mode = "n";
          group = "+ui";
        }

        {
          __unkeyed-1 = "<leader>w";
          mode = "n";
          group = "+windows";
        }

        {
          __unkeyed-1 = "<leader><Tab>";
          mode = "n";
          group = "+tab";
        }

        {
          __unkeyed-1 = "<leader>d";
          mode = ["n" "v"];
          group = "+debug";
        }

        {
          __unkeyed-1 = "<leader>c";
          mode = ["n" "v"];
          group = "+code";
        }

        {
          __unkeyed-1 = "<leader>t";
          mode = ["n" "v"];
          group = "+test";
        }
      ];
      win = {
        border = "none";
        wo.winblend = 0;
      };
    };
  };
}
