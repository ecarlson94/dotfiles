""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug Scripts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if &compatible
  set nocompatible               " Be iMproved
endif

" Install Vim Plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Required:
call plug#begin('~/.vim/plugged')

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AutoSave
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug '907th/vim-auto-save'
let g:auto_save = 1
let g:auto_save_silent = 1
let g:auto_save_write_all_buffers = 1  " write all open buffers as if you would use :wa

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EasyMotion
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'easymotion/vim-easymotion'
map <Leader> <Plug>(easymotion-prefix)
let g:EasyMotion_smartcase = 1
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FZF (Fuzzy Finder): requires ripgrep
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* Rg
      \ call fzf#vim#grep(
      \   'rg --hidden --column --line-number --no-heading --color=always --ignore-case '.shellescape(<q-args>), 1,
      \   <bang>0 ? fzf#vim#with_preview('up:60%')
      \           : fzf#vim#with_preview('right:50%:hidden', '?'),
      \   <bang>0)

nnoremap <C-p><C-a> :Rg<cr>
map <c-p> :Files<CR>
nnoremap <leader>o :Files<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
let Tlist_GainFocus_On_ToggleOpen=1
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Display
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'gosukiwi/vim-atom-dark'
Plug 'changyuheng/color-scheme-holokai-for-vim'
Plug 'flazz/vim-colorschemes'
Plug 'fielding/vice'
Plug 'xdg/vim-darkluma'
Plug 'atahabaki/archman-vim'
Plug 'Mizux/vim-colorschemes', { 'as': 'mizux' }

" Rainbow brackets
Plug 'frazrepo/vim-rainbow'
let g:rainbow_active=1

Plug 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup=1

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline_theme = 'simple'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Snippets
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsSnippetsDir='~/.vim/snippets'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocomplete Engine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LESS / CSS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Javascript
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Terraform
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'hashivim/vim-terraform'
let g:terraform_align=1
let g:terraform_fold_sections=0
let g:terraform_fmt_on_save=1

Plug 'juliosueiras/vim-terraform-completion'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" C#
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'OmniSharp/omnisharp-vim'
let g:OmniSharp_server_use_mono=1
let g:OmniSharp_server_stdio=1
let g:OmniSharp_highlight_types=3

let g:OmniSharp_selector_ui = 'fzf'    " Use fzf.vim
" let g:OmniSharp_selector_ui = ''       " Use vim - command line, quickfix etc.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Markdown
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'mzlogin/vim-markdown-toc'
let g:vmt_fence_hidden_markdown_style='GFM'
let g:vmt_list_item_char='-'
let g:vmt_fence_text = 'TOC'
let g:vmt_fence_closing_text = '/TOC'
nnoremap <leader>tc :GenTocGFM<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Testing
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'janko/vim-test'
let g:test#preserve_screen=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'dense-analysis/ale'
let g:ale_sign_error = "✗"
let g:ale_sign_warning = "⚠"
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
let g:airline#extensions#ale#enabled = 1
" linters
let g:ale_linters = {
\ 'cs': ['OmniSharp']
\}
" fixers
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\  'javascript': ['eslint'],
\}

Plug 'sheerun/vim-polyglot'
Plug 'editorconfig/editorconfig-vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'powerline/fonts', { 'do' : './install.sh' }
Plug 'ryanoasis/vim-devicons'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'wesQ3/vim-windowswap'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jiangmiao/auto-pairs'

" Comments
Plug 'tpope/vim-commentary'

" closetag
Plug 'alvan/vim-closetag', { 'for': [ 'html', 'xml', 'javascript' ] }
let g:closetag_filenames = "*.html, *.js, *.xml"

" You can specify revision/branch/tag.
Plug 'Shougo/vimshell', { 'rev' : '3787e5'  }

set encoding=utf8
" fonts end

" Required:
call plug#end()
