{ lib, ... }:
{
  # Leader
  globals.mapleader = " ";
  # Color Scheme
  colorschemes.everforest.enable = true;
  # Plugins
  plugins = {
      mini-pairs.enable = true;
      mini-comment.enable = true;
      mini-git.enable = true;
      mini-statusline.enable = true;
      neoscroll.enable = true;
      todo-comments.enable = true;
      highlight-colors.enable = true;
      emmet.enable = true;
      treesitter = {
	enable = true;
	highlight.enable = true;
	indent.enable = true;
	folding.enable = true;
      };
      telescope = {
	enable = true;
	keymaps = {
	  "<leader>ff" = {
	    action = "find_files";
	    options.desc = "Telescope find files";
	  };
	  "<leader>fg" = {
	    action = "live_grep";
	    options.desc = "Telescope live grep";
	  };
	  "<leader>fb" = {
	    action = "buffers";
	    options.desc = "Telescope buffers";
	  };
	  "<leader>fh" = {
	    action = "help_tags";
	    options.desc = "Telescope help tags";
	  };
	};
      };
      smear-cursor = {
	enable = true;
	settings = {
	  stiffness = 0.8;
	  trailing_stiffness = 0.6;
	  stiffness_insert_mode = 0.7;
	  trailing_stiffness_insert_mode = 0.7;
	  damping = 0.95;
	  damping_insert_mode = 0.95;
	  distance_stop_animating = 0.5;
	};
      };
      oil = {
	enable = true;
	settings = {
	  default_file_explorer = true;
	  skip_confirm_for_simple_edits = true;
	  view_options.show_hidden = true;
	  keymaps = {
	    "\\" = "toggle_float";
	  };
	  float = {
	    padding = 2;
	    max_width = 0.6;
	    max_height = 0.8;
	    border = "rounded";
	    win_options.winblend = 0;
	  };
	};
      };
      # lspconfig.enable = true;
      mini-completion = {
	enable = true;
      };
    };
  lsp = {
    enable = true;
    inlayHints.enable = true;
    servers = {
      ts_ls.enable = true;
      emmet_language_server.enable = true;
      lua_ls.enable = true;
      nil_ls.enable = true;
      tailwindcss.enable = true;
      basedpyright.enable = true;
    };
    keymaps = [
      {
	key = "K";
	lspBufAction = "hover";
      }
      {
	key = "gd";
	lspBufAction = "definition";
      }
      {
	key = "gD";
	lspBufAction = "declaration";
      }
      {
	key = "gi";
	lspBufAction = "implementation";
      }
      {
	key = "go";
	lspBufAction = "type_definition";
      }
      {
	key = "gr";
	lspBufAction = "references";
      }
      {
	key = "gs";
	lspBufAction = "signature_help";
      }
      {
	key = "gl";
	lspBufAction = "open_float";
      }
    ];
  };
  # Options
  opts = {
    number = true;
    relativenumber = true;
    shiftwidth = 4;
    scrolloff = 8;
    cursorline = true;
    colorcolumn = "80";
    termguicolors = true;
    background = "dark";
    signcolumn = "yes";
    updatetime = 50;
  };
}
