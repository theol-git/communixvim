{
  plugins.harpoon = {
    enable = true;
    enableTelescope = true;
  };

  keymaps = [
    # Harpoon
    {
      mode = "n";
      key = "<leader>a";
      action.__raw = "function() require('harpoon'):list():add() end";
      options = {
        desc = "Harpoon: Add file";
      };
    }

    {
      mode = "n";
      key = "<C-e>";
      action.__raw = "function() require('harpoon').ui:toggle_quick_menu(require'harpoon':list()) end";
      options = {
        desc = "Harpoon: Toggle Quick Menu";
      };
    }

    {
      mode = "n";
      key = "<C-j>";
      action.__raw = "function() require'harpoon':list():select(1) end";
      options = {
        desc = "Harpoon: Navigate to 1";
      };
    }

    {
      mode = "n";
      key = "<C-k>";
      action.__raw = "function() require'harpoon':list():select(2) end";
      options = {
        desc = "Harpoon: Navigate to 2";
      };
    }

    {
      mode = "n";
      key = "<C-l>";
      action.__raw = "function() require'harpoon':list():select(3) end";
      options = {
        desc = "Harpoon: Navigate to 3";
      };
    }

    {
      mode = "n";
      key = "<C-m>";
      action.__raw = "function() require'harpoon':list():select(4) end";
      options = {
        desc = "Harpoon: Navigate to 4";
      };
    }

    {
      mode = "n";
      key = "<C-S-P>";
      action.__raw = "function() require'harpoon':list():prev() end";
      options = {
        desc = "Harpoon: Previous file.";
      };
    }

    {
      mode = "n";
      key = "<C-S-N>";
      action.__raw = "function() require'harpoon':list():next() end";
      options = {
        desc = "Harpoon: Next file.";
      };
    }
  ];
}
