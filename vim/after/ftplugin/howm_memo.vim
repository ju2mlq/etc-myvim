set fo=mtrow
set previewheight=40

let QFixHowm_Key = 'g'
let howm_dir             = '~/Dropbox/howm'
let howm_filename        = '%Y/%m/%Y-%m-%d-000000.txt'
let howm_fileencoding    = 'utf-8'
let howm_fileformat      = 'unix'
let mygrepprg = 'grep'
let MyGrep_ShellEncoding = 'utf-8'

let g:QFixHowm_FoldingChapterTitle = 1
let g:QFixHowm_FoldingPattern = '^=[^=]'
let g:QFixHowm_DefaultSearchWord=0

let calendar_action = "QFixHowmCalendarDiary"
let calendar_sign   = "QFixHowmCalendarSign"

let QFixHowm_SwitchListActionLock = ['{ }', '{-}', '{+}']

inoremap <C-]>  { } 
inoremap <C-c>  [<C-r>=strftime("%Y-%m-%d")<CR>]
nnoremap <C-h> 0f}:<C-U>call QFixMemoUserModeCR()<CR>
nnoremap g,d :Calendar<CR>
nmap <C-y> F<SPACE>ly$i[[<ESC>A]]<ESC>:w<CR>g,<SPACE>g,N<ESC>pjjo
nmap g,X g,x:w<CR>g,<SPACE>Gp<CR>

