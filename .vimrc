set nowrap
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set ai
set number
set ruler

autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4 smartindent
autocmd FileType php setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4 smartindent
autocmd FileType html setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4 smartindent
autocmd FileType shell setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4 smartindent

" view trailing whitespaces and tabs
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.,eol:¬

let g:FavColorSchemes = ['darkblue', 'evening', 'desert', 'evening']
" setting templates according to the time of the day
function DayTime()
        let dayTime = strftime("%H")
        let currentHourIndex = (strftime('%H') + 0) / 6
        let colorName = g:FavColorSchemes[currentHourIndex]
                if g:colors_name !~ colorName
                        execute "colorscheme ".colorName
                endif
endfunction

" set the statusline
colorscheme default
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}[%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"set statusline+=\%{DayTime()}
set laststatus=2
set linebreak
set sbr=@@@
syntax on

"MAPPINGS
:autocmd FileType php noremap <C-M> :w!<CR>:!/usr/bin/php %<CR>
:autocmd FileType php noremap <C-L> :!/usr/bin/php -l %<CR>
