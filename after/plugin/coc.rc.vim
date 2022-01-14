if !exists('g:loaded_coc') | finish | endif

" if hidden is not set, TextEdit might fail.
set hidden

" jsonc syntax highlighting
autocmd FileType json syntax match Comment +\/\/.\+$+

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes



" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
"nmap <silent> <C-d> <Plug>(coc-range-select)
"xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
"nnoremap <silent> ;a  :<C-u>CocList diagnostics<cr>
" Manage extensions
"nnoremap <silent> ;e  :<C-u>CocList extensions<cr>
" Show commands
"nnoremap <silent> ;c  :<C-u>CocList commands<cr>
" Find symbol of current document
"nnoremap <silent> ;o  :<C-u>CocList outline<cr>
" Search workspace symbols
"nnoremap <silent> ;s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
"nnoremap <silent> ;j  :<C-u>CocNext<CR>
" Do default action for previous item.
"nnoremap <silent> ;k  :<C-u>CocPrev<CR>
" Resume latest coc list
"nnoremap <silent> ;p  :<C-u>CocListResume<CR>

" Extensions
let g:coc_global_extensions = [
      \ 'coc-pyright',
      \ 'coc-snippets',
      \ 'coc-marketplace',
      \ 'coc-prettier',
      \ 'coc-explorer',
      \ 'coc-highlight',
      \ 'coc-vetur',
      \ ]

" Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile