{
  plugins.telescope = {
    enable = true;

    extensions = {
      fzf-native = {
        enable = true;
      };
      ui-select = {
        settings = {
          specific_opts = {
            codeactions = true;
          };
        };
      };
      undo = {
        enable = true;
      };
    };
    # If you'd prefer Telescope not to enter a normal-like mode when hitting escape (and instead exiting), you can map <Esc> to do so via:
    settings = {
      defaults = {
        mappings = {
          i = {
            "<esc>" = {
              __raw = ''
                function(...)
                  return require("telescope.actions").close(...)
                end'';
            };
          };
        };
      };
    };
    keymaps = {
      "<leader>pf" = {
        action = "find_files";
        options.desc = "Find project files";
      };
      "<leader>ps" = {
        action = "live_grep";
        options.desc = "Search project file (grep root dit)";
      };
      "<leader>:" = {
        action = "command_history";
        options.desc = "Command History";
      };
      "<leader>b" = {
        action = "buffers";
        options.desc = "+buffer";
      };
      "<leader>pfr" = {
        action = "oldfiles";
        options.desc = "Recent";
      };
      "<leader>vb" = {
        action = "buffers";
        options.desc = "View buffers";
      };
      "<C-p>" = {
        action = "git_files";
        options.desc = "Search git files";
      };
      "<leader>gc" = {
        action = "git_commits";
        options.desc = "Commits";
      };
      "<leader>sa" = {
        action = "autocommands";
        options.desc = "Auto Commands";
      };
      "<leader>sb" = {
        action = "current_buffer_fuzzy_find";
        options.desc = "Buffer";
      };
      "<leader>sc" = {
        action = "command_history";
        options.desc = "Command History";
      };
      "<leader>sC" = {
        action = "commands";
        options.desc = "Commands";
      };
      "<leader>sD" = {
        action = "diagnostics";
        options.desc = "Workspace diagnostics";
      };
      "<leader>sh" = {
        action = "help_tags";
        options.desc = "Help pages";
      };
      "<leader>sH" = {
        action = "highlights";
        options.desc = "Search Highlight Groups";
      };
      "<leader>sk" = {
        action = "keymaps";
        options.desc = "Keymaps";
      };
      "<leader>sM" = {
        action = "man_pages";
        options.desc = "Man pages";
      };
      "<leader>sm" = {
        action = "marks";
        options.desc = "Jump to Mark";
      };
      "<leader>so" = {
        action = "vim_options";
        options.desc = "Options";
      };
      "<leader>sR" = {
        action = "resume";
        options.desc = "Resume";
      };
      "<leader>uC" = {
        action = "colorscheme";
        options.desc = "Colorscheme preview";
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>sd";
      action = "<cmd>Telescope diagnostics bufnr=0<cr>";
      options = {
        desc = "Document diagnostics";
      };
    }

    {
      mode = "n";
      key = "<leader>st";
      action = "<cmd>TodoTelescope<cr>";
      options = {
        silent = true;
        desc = "Todo (Telescope)";
      };
    }
  ];

  extraConfigLua = ''
    local telescope = require('telescope')
    telescope.setup{
        pickers = {
          colorscheme = {
            enable_preview = true
          }
        }
    }
  '';
}
