set nowrap
set tabstop=4
set expandtab
set ai
set number
set ruler
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4 smartindent

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
filetype indent plugin on
" Taglist variables
" Display function name in status bar:
let g:ctags_statusline=1
" Automatically start script
let generate_tags=1
" Displays taglist results in a vertical window:
let Tlist_Use_Horiz_Window=0
" Various Taglist display config:
let Tlist_Use_Right_Window=1
let Tlist_Compact_Format=1
let Tlist_Exist_OnlyWindow=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_File_Fold_Auto_Close=1

" Configuration for miniBufferExplorer
let g:miniBufferExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1
map T :TaskList<CR>
map P :TlistToggle<CR>
