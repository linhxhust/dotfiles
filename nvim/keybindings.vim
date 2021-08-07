""" bind SPC instead of \ like emacs
let mapleader="\<Space>"

""" Clear highlight
nnoremap <F3> :noh<CR>

""" map qq to escape
:imap qq <Esc>

""" Disable arrow button
nnoremap <Left> :echoe "Use h plz"<CR>
nnoremap <Right> :echoe "Use l plz"<CR>
nnoremap <Up> :echoe "Use h plz"<CR>
nnoremap <Down> :echoe "Use k plz"<CR>

""" save and quit
nnoremap <Leader>fs :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>wq :wq<CR>

""" dotfile shortcuts
nnoremap <Leader><Leader>e :e  $MYVIMRC<CR>
nnoremap <Leader><Leader>r :so $MYVIMRC<CR>

""" windows management
nnoremap <Leader>w/ :vsplit<CR>
nnoremap <Leader>w- :split<CR>

""" buffers/files management
" nnoremap <Leader>pb :Clap! buffers<CR>
" nnoremap <Leader>ps :Clap! blines<CR>
" nnoremap <Leader>pf :Clap! files<CR>
nnoremap <Leader>pb :Telescope buffers<CR>
nnoremap <Leader>pf :Telescope find_files<CR>
nnoremap <Leader>ps :Telescope live_grep grep_open_files=true<CR>
nnoremap <Leader>pg :Telescope live_grep<CR>
nnoremap <Leader>bd :bd<CR>
nnoremap <Leader><TAB> :bprevious<CR>

""" floating terminal
nnoremap <Leader>at :call FloatTerm()<CR>

""" NERDTree
nnoremap <Leader>ft :NERDTreeToggle<CR>

""" snippets
let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" NerdCommenter
let g:NERDSpaceDelims = 1

""" Multi select
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'

""" coc
" Using CocList
nnoremap <silent> <space>ca :<C-u>CocList diagnostics<cr>
nnoremap <silent> <space>ce :<C-u>CocList extensions<cr>
nnoremap <silent> <space>cc :<C-u>CocList commands<cr>
nnoremap <silent> <space>co :<C-u>CocList outline<cr>
nnoremap <silent> <space>cs :<C-u>CocList -I symbols<cr>
nnoremap <silent> <space>cj :<C-u>CocNext<CR>
nnoremap <silent> <space>ck :<C-u>CocPrev<CR>
nnoremap <silent> <space>cp :<C-u>CocListResume<CR>

" remap keys for gotos
nmap <silent> gd <plug>(coc-definition)
nmap <silent> gy <plug>(coc-type-definition)
nmap <silent> gi <plug>(coc-implementation)
nmap <silent> gr <plug>(coc-references)

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> ,h <Plug>(coc-diagnostic-prev)
nmap <silent> .h <Plug>(coc-diagnostic-next)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)

" Use <C-d> for select selections ranges
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

""" LSP support
let g:terraform_align=1
let g:terraform_fmt_on_save=1
