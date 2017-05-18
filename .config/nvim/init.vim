set nocompatible

" General Section{

let mapleader=","
set autoread			" detect when a file has changed
set history=1000		" store more history than default
syntax on
filetype on
set clipboard=unnamed
set ttyfast			" faster redrawing
set diffopt+=vertical
set laststatus=2		" always show statusline
set so=7
set wildmenu			" enhanced cnd line competion
set hidden			" current buffer can be put in background
set showcmd			" show imcomplete cmds
set noshowmode
set wildmode=list:longest	" complete files like a shell
set scrolloff=3
set cmdheight=1
set title			" set terminal title
set noerrorbells
set visualbell
if has('mouse')
	set mouse=a
endif
set wildignore+=*.o,*.obj,.git,node_modules,_site,*.class,*.zip,*.aux
" }

" searching {{{
set ignorecase
set smartcase
set hlsearch
set incsearch
set nolazyredraw
set magic
set showmatch			" show matching braces
set noswapfile
set nobackup
set nowritebackup
set foldmethod=syntax

" }}}
" User interface {{{
set number			" show line numbers
set wrap			" tuen on line wrapping
set wrapmargin=8
set linebreak			" soft line breaks
set showbreak=…			" show break as ellipsis
if (has("termguicolors"))
	set termguicolors
endif

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
set background=dark
colorscheme OceanicNext

"}}}

" Indenting {{{
set autoindent			" automatically indent new line
set smartindent

" }}}

" Tab vs spaces {{{
set noexpandtab			" insert tabs rather than spaces
set smarttab			" tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4			" viible width of tabs
set softtabstop=4		" edit as if the tabs are 4 characters wide
set shiftwidth=4		" number of spaces to use when indenting
set shiftround			" round to a multiple of 'shiftwidth'
set completeopt+=longest
" }}}



" invisible characters {{{
set list
set listchars=tab:‣\ ,eol:¬,trail:·
set backspace=indent,eol,start	" make backspace behave in the ususal manner
 " }}}

" Plugins (keep in alphabetical order to avoid duplicates) {{{
call plug#begin('~/.config/nvim/plugged')
" Syntax
Plug 'othree/html5.vim'
Plug 'mhartington/oceanic-next'
Plug 'othree/yajs.vim'
Plug 'othree/jspc.vim'
Plug 'othree/jsdoc-syntax.vim'
Plug 'elmcast/elm-vim'
Plug 'heavenshell/vim-jsdoc'
Plug 'moll/vim-node'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'ElmCast/elm-vim'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'slashmili/alchemist.vim'
Plug 'elzr/vim-json', {'for': 'json' }
Plug 'hail2u/vim-css3-syntax', {'for': 'css'}
Plug 'ap/vim-css-color'

Plug 'tpope/vim-markdown'
Plug 'valloric/MatchTagAlways', {'for': 'html'}
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'neomake/neomake'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'sbdchd/neoformat'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
" Deoplete Stuff
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deol.nvim'
Plug 'Shougo/denite.nvim'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/context_filetype.vim'
Plug 'zchee/deoplete-jedi'
Plug 'fatih/vim-go'
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'

" Snippets
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'
Plug 'mhinz/vim-sayonara'
Plug 'terryma/vim-multiple-cursors'
Plug 'tyru/open-browser.vim'
Plug 'junegunn/vim-easy-align'
Plug 'Yggdroot/indentLine'
Plug 'ryanoasis/vim-devicons'
Plug 'ternjs/tern_for_vim', {'do': 'npm install' }





call plug#end()
" }}}

" System Mappings ----------------------------{{{
" Not a fan of macros
nnoremap Q <nop> 

nnoremap ; :


" }}}

" Javascript -----------------------------------{{{

let g:tern#commnad=['tern']
let g:tern#arguments=['--persistent']

" }}}

" Java --------------------------------------------{{{
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" }}}

" GO ---------------------------------------------------{{{
let g:go_fmt_commmand = "goimports"

" }}}

" NERDTree ------------------------------------------------{{{
map <silent> - :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTReeHijactNetrw=0
let g:webDevIconsUnicodeDecorateFolderNodes = 1
let g:NERDTreeWinSize=45
let g:NERDTreeAutoDeleteBuffer=1
let g:WebDevIconsOS = 'Darwin'
let NERDTreeMinimalUI=1
let NERDTreeCascadeSingleChildDir=0
" }}}
" Snippets ----------------------------------------------{{{
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#expand_word_boundary =1
imap <C-k>   <Plug>(neosnippet_expand_or_jump)
smap <C-k>   <Plug>(neosnippet_expand_or_jump)
xmap <C-k>   <Plug>(neosnippet_expand_target)
" }}}

" Deoplete ----------------------------------------------------{{{
" enable deoplete
let g:deoplete#enable_at_startup=1
let g:echodoc_enable_at_startup=1
set splitbelow
set completeopt+=noselect
autocmd CompleteDone * pclose
function! Multiple_cusors_before()
	let b:deoplete_disable_auto_complete=2
endfunction
function! Multiple_cursors_after()
	let b:deoplete_disable_auto_complete=0
endfunction

call deoplete#custom#set('buffer', 'mark', 'buffer')
call deoplete#custom#set('ternjs', 'mark', '')
call deoplete#custom#set('typescript', 'mark', '')
call deoplete#custom#set('omni', 'mark', 'omni')
call deoplete#custom#set('file', 'mark', 'file')

" }}}

" Denite --------------------------------------------------------------------{{{
"
  set showtabline=0

  autocmd FileType unite call s:uniteinit()
  augroup END
  function! s:uniteinit()
      set nonumber
      set norelativenumber
      nunmap <buffer> d
      nunmap <buffer> a
      nunmap <buffer> <c-n>
      nunmap <buffer> <c-k>
      nunmap <buffer> <c-p>

      nmap <silent> <Esc> <Plug>(unite_all_exit)
      nmap <silent> <c-n> <Plug>(unite_loop_cursor_down)
      nmap <silent> <c-p> <Plug>(unite_loop_cursor_up)

    endfunction

  call denite#custom#option('default', 'prompt', '❯')
  "  \     'rg', '--glob', '!.git', ''

  call denite#custom#source(
	\ 'file_rec', 'vars', {
	\   'command': [
  \      'ag', '--follow','--nogroup','--hidden', '-g', '', '--ignore', '.git', '--ignore', '*.png'
	\   ] })
  let s:menus = {}
	call denite#custom#var('grep', 'command', ['rg'])
	call denite#custom#var('grep', 'default_opts',
			\ ['--vimgrep', '--no-heading'])
	call denite#custom#var('grep', 'recursive_opts', [])
	call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
	call denite#custom#var('grep', 'separator', ['--'])
	call denite#custom#var('grep', 'final_opts', [])
  " call denite#custom#source('file_rec', 'sorters', ['sorter_sublime'])
  " call denite#custom#option('default', 'statusline', 0)
  call denite#custom#option('default', 'highlight-matched-char', '')
  call denite#custom#option('default', 'highlight-matched-range', '')
  hi deniteMatched guibg=None
  hi deniteMatchedChar guibg=None

  nnoremap <silent> <c-p> :Denite file_rec<CR>
  nnoremap <silent> <leader>h :Denite  help<CR>
  nnoremap <silent> <leader>c :Denite colorscheme<CR>
  nnoremap <silent> <leader>u :call dein#update()<CR>
  nnoremap <silent> <leader>b :Denite buffer<CR>
  call denite#custom#map(
      \ 'insert',
      \ '<C-n>',
      \ '<denite:move_to_next_line>',
      \ 'noremap'
      \)
	call denite#custom#map(
	      \ 'insert',
	      \ '<C-p>',
	      \ '<denite:move_to_previous_line>',
	      \ 'noremap'
	      \)

  call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
    \ [ '.git/', '.ropeproject/', '__pycache__/',
    \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])

  call denite#custom#var('menu', 'menus', s:menus)
  nnoremap <silent> <Leader>i :Denite -auto-resize menu:ionic <CR>

"}}}

" Git from denite...ERMERGERD -----------------------------------------------{{{
  let s:menus.git = {
    \ 'description' : 'Fugitive interface',
    \}
  let s:menus.git.command_candidates = [
    \[' git status', 'Gstatus'],
    \[' git diff', 'Gvdiff'],
    \[' git commit', 'Gcommit'],
    \[' git stage/add', 'Gwrite'],
    \[' git checkout', 'Gread'],
    \[' git rm', 'Gremove'],
    \[' git cd', 'Gcd'],
    \[' git push', 'exe "Git! push " input("remote/branch: ")'],
    \[' git pull', 'exe "Git! pull " input("remote/branch: ")'],
    \[' git pull rebase', 'exe "Git! pull --rebase " input("branch: ")'],
    \[' git checkout branch', 'exe "Git! checkout " input("branch: ")'],
    \[' git fetch', 'Gfetch'],
    \[' git merge', 'Gmerge'],
    \[' git browse', 'Gbrowse'],
    \[' git head', 'Gedit HEAD^'],
    \[' git parent', 'edit %:h'],
    \[' git log commit buffers', 'Glog --'],
    \[' git log current file', 'Glog -- %'],
    \[' git log last n commits', 'exe "Glog -" input("num: ")'],
    \[' git log first n commits', 'exe "Glog --reverse -" input("num: ")'],
    \[' git log until date', 'exe "Glog --until=" input("day: ")'],
    \[' git log grep commits',  'exe "Glog --grep= " input("string: ")'],
    \[' git log pickaxe',  'exe "Glog -S" input("string: ")'],
    \[' git index', 'exe "Gedit " input("branchname\:filename: ")'],
    \[' git mv', 'exe "Gmove " input("destination: ")'],
    \[' git grep',  'exe "Ggrep " input("string: ")'],
    \[' git prompt', 'exe "Git! " input("command: ")'],
    \] " Append ' --' after log to get commit info commit buffers
"}}}

" Navigate between vim buffers and tmux panels ------------------------------{{{
  let g:tmux_navigator_no_mappings = 1
  nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
  nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
  nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
  nnoremap <silent> <C-h> :TmuxNavigateLeft<CR>
  nnoremap <silent> <C-;> :TmuxNavigatePrevious<cr>
  tmap <C-j> <C-\><C-n>:TmuxNavigateDown<cr>
  tmap <C-k> <C-\><C-n>:TmuxNavigateUp<cr>
  tmap <C-l> <C-\><C-n>:TmuxNavigateRight<cr>
  tmap <C-h> <C-\><C-n>:TmuxNavigateLeft<CR>
  tmap <C-;> <C-\><C-n>:TmuxNavigatePrevious<cr>
"}}}

" vim-airline ---------------------------------------------------------------{{{
  let g:airline#extensions#tabline#enabled = 1
  let g:airline_skip_empty_sections = 1
  set hidden
  let g:airline#extensions#tabline#fnamemod = ':t'
  " let g:airline#extensions#tabline#buffer_nr_show = 1
  " let g:airline#extensions#tabline#buffer_nr_format = '%s '
  let g:airline#extensions#tabline#buffer_idx_mode = 1
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#neomake#error_symbol='✖ '
  let g:airline#extensions#neomake#warning_symbol='⚠️  '
  "let g:airline_theme='oceanicnextdark'
  let g:airline_theme='oceanicnext'
  cnoreabbrev <expr> x getcmdtype() == ":" && getcmdline() == 'x' ? 'Sayonara' : 'x'
  tmap <leader>x <c-\><c-n>:bp! <BAR> bd! #<CR>
  nmap <leader>t :term<cr>
  nmap <leader>, :bnext<CR>
  tmap <leader>, <C-\><C-n>:bnext<cr>
  nmap <leader>. :bprevious<CR>
  tmap <leader>. <C-\><C-n>:bprevious<CR>
  tmap <leader>1  <C-\><C-n><Plug>AirlineSelectTab1
  tmap <leader>2  <C-\><C-n><Plug>AirlineSelectTab2
  tmap <leader>3  <C-\><C-n><Plug>AirlineSelectTab3
  tmap <leader>4  <C-\><C-n><Plug>AirlineSelectTab4
  tmap <leader>5  <C-\><C-n><Plug>AirlineSelectTab5
  tmap <leader>6  <C-\><C-n><Plug>AirlineSelectTab6
  tmap <leader>7  <C-\><C-n><Plug>AirlineSelectTab7
  tmap <leader>8  <C-\><C-n><Plug>AirlineSelectTab8
  tmap <leader>9  <C-\><C-n><Plug>AirlineSelectTab9
  nmap <leader>1 <Plug>AirlineSelectTab1
  nmap <leader>2 <Plug>AirlineSelectTab2
  nmap <leader>3 <Plug>AirlineSelectTab3
  nmap <leader>4 <Plug>AirlineSelectTab4
  nmap <leader>5 <Plug>AirlineSelectTab5
  nmap <leader>6 <Plug>AirlineSelectTab6
  nmap <leader>7 <Plug>AirlineSelectTab7
  nmap <leader>8 <Plug>AirlineSelectTab8
  nmap <leader>9 <Plug>AirlineSelectTab9

   " let g:airline_section_z = airline#section#create(['circleci'])

  let g:airline#extensions#tabline#buffer_idx_format = {
        \ '0': '0 ',
        \ '1': '1 ',
        \ '2': '2 ',
        \ '3': '3 ',
        \ '4': '4 ',
        \ '5': '5 ',
        \ '6': '6 ',
        \ '7': '7 ',
        \ '8': '8 ',
        \ '9': '9 ',
        \ '10': '10 '
        \}

"}}}

" Linting -------------------------------------------------------------------{{{

  let g:neomake_warning_sign = {'text': '•', 'texthl': 'NeomakeWarningSign'}
  let g:neomake_error_sign = {'text': '•', 'texthl': 'NeomakeErrorSign'}

  let g:ale_sign_error = '•'
  let g:ale_sign_warning = '•'

  hi ALEErrorSign guifg=#ec5f67 ctermfg=203 guibg=#343d46 ctermbg=237
  hi ALEWarningSign guifg=#fac863 ctermfg=221 guibg=#343d46 ctermbg=237


  let g:neomake_typescript_tsc_maker = {
            \ 'args': ['--project', getcwd() . '/tsconfig.json', '--noEmit'],
            \ 'append_file': 0,
            \ 'errorformat':
            \   '%E%f %#(%l\,%c): error %m,' .
            \   '%E%f %#(%l\,%c): %m,' .
            \   '%Eerror %m,' .
            \   '%C%\s%\+%m'
          \ }

      " let g:neomake_typescript_tslint_maker = {
      "     \ 'args': [ '%:p', '--format verbose', '--stdin', '--stdin-filename'],
      "     \ 'errorformat': '%f[%l\, %c]: %m'
      "     \ }
      "
  " let g:neomake_open_list = 2
  " let g:neomake_verbose = 3
  let g:neomake_markdown_alex_maker = {
                \ 'errorformat': '%P%f,' .
                \ '%-Q,' .
                \ '%*[ ]%l:%c-%*\d:%n%*[ ]%tarning%*[ ]%m,' .
                \ '%-G%.%#'
                \}
  let g:neomake_ft_maker_remove_invalid_entries = 0
  let g:neomake_markdown_enabled_makers = ['alex']
  let g:neomake_html_enabled_makers = []
  let g:neomake_javascript_enabled_makers = ['eslint']
  " autocmd! BufWritePost * Neomake
  autocmd! BufEnter,BufRead,BufWritePost * Neomake
  " autocmd! TextChanged,TextChangedI * Neomake
  function! TsLintFix()
      let l:winview = winsaveview()
      let l:config = getcwd() . '/tslint.json'
      let l:command = 'tslint --config '. l:config . '--x'
      %
      call winrestview(l:winview)
  endfunction
  command TsLintFix :call TsLintFix()
"}}}

let g:tagbar_type_typescript = {
  \ 'ctagstype': 'typescript',
  \ 'kinds': [
  \ 'c:classes',
  \ 'n:modules',
  \ 'f:functions',
  \ 'v:variables',
  \ 'v:varlambdas',
  \ 'm:members',
  \ 'i:interfaces',
  \ 'e:enums',
  \ ]
  \ }

" FZF.vim
nnoremap <leader>t :Files<cr>
nnoremap <leader>b :Buffers<cr>

nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

let g:fzf_prefer_tmux = 1

" Elm.vim settings
let g:elm_format_autosave = 1
let g:elm_setup_keybindings = 0

" toggle folds with space
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
set foldlevel=99999


" stop Elm.vim trying to show compiler erorrs in Vim
let g:elm_format_fail_silently = 1

" fugitive.vim maps

nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit --verbose<CR>
nnoremap <leader>gpl :Gpull<CR>
nnoremap <leader>gpu :Gpush<CR>
nnoremap <leader>gr :Gremove<CR>
nnoremap <leader>gco :Git checkout<Space>
nnoremap <leader>gcb :Git checkout -b <Space>

" ELM ----------------------------------{{{
let g:elm_format_autosave= 1
" }}}
