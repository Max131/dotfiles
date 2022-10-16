inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
inoremap <F2> <ESC>:w<CR>
inoremap <F5> <ESC>:tabp<CR>
inoremap <F6> <ESC>:tabn<CR>
inoremap clg console.log();<left><left>
noremap <F2> :w<CR>
noremap <F3> :Lexplore<CR>
noremap <F4> :nohls<CR>
noremap <F5> :tabp<CR>
noremap <F6> :tabn<CR> 
noremap <F9> :silent %!prettier --stdin-filepath %<CR>

map <S-Insert> <MiddleMouse>
