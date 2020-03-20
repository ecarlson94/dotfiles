let mapleader = ","    " change <leader> from \ to ,

if !exists('g:vscode')
  " Plugins
  source ~/.vim_plugins

  " Settings
  source ~/.vim_settings
else
 " VS Code
 source ~/.vim_plugins
endif

" Bindings
source ~/.vim_bindings