"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
" set nobackup
" set nowb
"
"set undo swap file
set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => make it transparent & theme, looks good
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colo slate
hi Normal guibg=NONE ctermbg=NONE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spelling stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set spelllang=en
setlocal spell
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=red
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => The ESC save mapping :-)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Esc><Esc> :w<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Auto complete the file
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_autoclose_preview_window_after_completion=1
map <leade r>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Line execution with inline terminal.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim cmdline mappings
let cmdline_map_start          = '<Space>'
let cmdline_map_send           = '<Space>'
let cmdline_map_send_and_stay  = '<LocalLeader><Space>'
let cmdline_map_source_fun     = '<LocalLeader>f'
let cmdline_map_send_paragraph = '<LocalLeader>p'
let cmdline_map_send_block     = '<LocalLeader>b'
let cmdline_map_quit           = '<LocalLeader>q'

" vimcmdline options
let cmdline_vsplit      = 1      " Split the window vertically
let cmdline_esc_term    = 1      " Remap <Esc> to :stopinsert in Neovim's terminal
let cmdline_in_buffer   = 1      " Start the interpreter in a Neovim's terminal
let cmdline_term_height = 15     " Initial height of interpreter window or pane
let cmdline_term_width  = 80     " Initial width of interpreter window or pane
let cmdline_tmp_dir     = '/tmp' " Temporary directory to save files
let cmdline_outhl       = 1      " Syntax highlight the output
let cmdline_auto_scroll = 1      " Keep the cursor at the end of terminal (nvim)
let g:remoteSession = ($STY == "")
"let cmdline_external_term_cmd = "gnome-terminal -e '%s' &&  sleep 1 & bspc node -f prev.local.!above"

set showtabline=2
set foldcolumn=0
set number
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fix nave key mapping :-)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
nnoremap <C-f> <PageUp>
nnoremap <C-b> <PageDown>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Multi cursor keybindings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

let g:pymode_python = '/usr/bin/python3.6'
set clipboard=unnamedplus
" Use deoplete.
let g:deoplete#enable_at_startup = 0

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

