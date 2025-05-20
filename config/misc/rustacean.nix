{
  dependencies = {
    rust-analyzer.enable = true;
  };

  plugins.rustaceanvim = {
    enable = true;
  };

  files."after/ftplugin/rust.lua".keymaps = [
    # Example keymap
    #    {
    #      mode = "n";
    #      key = "<leader>t";
    #      action = ":Git push -u origin ";
    #      options = {
    #        desc = "push to origin (that you define)";
    #        buffer = true;
    #        remap = false;
    #      };
    #    }
  ];
}
