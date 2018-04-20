
"Start dein Scripts-------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/tb/opt/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/tb/opt/dein')
  call dein#begin('/home/tb/opt/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/tb/opt/dein/repos/github.com/Shougo/dein.vim')


    " basics ------------------------------------------


        call dein#add('ntpeters/vim-better-whitespace')
        call dein#add('tpope/vim-obsession')


        " themes ------------------------------------------

        call dein#add('tomasr/molokai')



        " snippets -----------------------------------------

        call dein#add('Shougo/neosnippet.vim')
        call dein#add('Shougo/neosnippet-snippets')

        " code completion ----------------------------------

        call dein#add('Shougo/deoplete.nvim')
        call dein#add('tweekmonster/deoplete-clang2')

        " languages ----------------------------------------
        call dein#add('tpope/vim-commentary')

        " project management -------------------------------

        call dein#add('ctrlpvim/ctrlp.vim')
        call dein#add('scrooloose/nerdtree')
        call dein#add('majutsushi/tagbar')
        call dein#add('jlanzarotta/bufexplorer')
        call dein#add('tpope/vim-fugitive')
        call dein#add('tpope/vim-eunuch')
        call dein#add('mfulz/cscope.nvim')
        " call dein#add('neomake/neomake')

        " misc.
        call dein#add('chrisbra/Recover.vim')


        " You can specify revision/branch/tag.
        call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })

      " Required:
      call dein#end()
      call dein#save_state()
    endif

    " Required:
    filetype plugin indent on
    syntax enable


    " -----------------------------------------------------------------------------
    "  Basics
    " -----------------------------------------------------------------------------


    "set nobackup
    "set noswapfile

    set backupdir=~/.vim/backup/
    set directory=~/.vim/swp/

    set tabstop=4       	" The width of a TAB is set to 4. Still it is a \t.
                            " It is just that Vim will interpret it to be having
                            " a width of 4.
    set shiftwidth=4    	" Indents will have a width of 4
    set softtabstop=4   	" Sets the number of columns for a TAB
    set expandtab       	" Expand TABs to spaces



    " Map leader to ,
    let mapleader = ","
    let g:mapleader = ","

    " Return to last edit position when opening files (You want this!)
    autocmd BufReadPost *
         \ if line("'\"") > 0 && line("'\"") <= line("$") |
         \   exe "normal! g`\"" |
         \ endif


    " More natural splits
    set splitbelow          " Horizontal split below current.
    set splitright          " Vertical split to right of current.

    set ruler               " Show the line and column numbers of the cursor.
    set number

    set showmatch           " Show matching brackets.
    set nostartofline       " Do not jump to first character with page commands.

    set showmode            " Show current mode.




    " ntpeters/vim-better-whitespace

    let g:better_whitespace_enabled=1
    let g:strip_whitespaces_on_save=0

    autocmd FileType javascript,c,cpp,java,html,ruby,lex,yacc,latex,python,css,hs,perl,prolog EnableStripWhitespaceOnSave

    let g:strip_whitelines_at_eof=0
    let g:show_spaces_that_precede_tabs=0
    let g:better_whitespace_skip_empty_lines=0

    nnoremap ]w :NextTrailingWhitespace<CR>
    nnoremap [w :PrevTrailingWhitespace<CR>




    " ----------------------------------------------------------------------------=
    "  Themes
    " ----------------------------------------------------------------------------=

    colorscheme molokai



    " ----------------------------------------------------------------------------=
    "  Code Completion
    " ----------------------------------------------------------------------------=

    let g:python_host_prog = '/usr/bin/python'
    let g:python3_host_prog = '/usr/bin/python3'

    let g:deoplete#enable_at_startup = 1

    let g:neosnippet#enable_completed_snippet = 1

    " select completion entries with TAB
    inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"



" -----------------------------------------------------------------------------
"  Languages
" -----------------------------------------------------------------------------



" -----------------------------------------------------------------------------
" Project Management
" -----------------------------------------------------------------------------

" nnoremap <silent> <leader>p :CtrlPTag<cr>
nnoremap <silent> <leader>t :TagbarToggle<cr>
nnoremap <silent> <leader>n :NERDTreeToggle<cr>
nnoremap <silent> <leader>b :BufExplorer<cr>


" call neomake#configure#automake('w')

" -----------------------------------------------------------------------------
"  Misc
" -----------------------------------------------------------------------------



" -----------------------------------------------------------------------------
"  Functions
" -----------------------------------------------------------------------------


" ----------------------------------------------------------------------------=
"  Bug fixes
" ----------------------------------------------------------------------------=


" Neovim tries to be clever and changes the style of your cursor depending on the mode you're in. Not all terminal emulators support that, but those which don't, should simply ignore it.

" The terminal emulator does not ignore it and prints it to the screen (it thinks of it as normal characters).

" This tells Neovim not to try changing the cursor style.

let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 0

" also set export VTE_VERSION="100" in .zshrc




" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


