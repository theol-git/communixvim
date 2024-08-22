{
  plugins.fugitive = {
    enable = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>gs";
      action = ":Git<CR>";
      options = {
        desc = "Enter git interface";
      };
    }
  ];
  files."after/ftplugin/fugitive.lua".keymaps = [
    {
      mode = "n";
      key = "<leader>p";
      action = ":Git push<CR>";
      options = {
          desc = "push commit";
          buffer = true;
          remap = false;
      };
    }
    {
      mode = "n";
      key = "<leader>P";
      action = ":Git pull --rebase<CR>";
      options = {
          desc = "pull with rebase";
          buffer = true;
          remap = false;
      };
    }
    {
      mode = "n";
      key = "<leader>t";
      action = ":Git push -u origin ";
      options = {
          desc = "push to origin (that you define)";
          buffer = true;
          remap = false;
      };
    }
  ];
}
