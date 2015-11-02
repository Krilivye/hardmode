" hardmode.vim - Vim: HARD MODE!!!
" Authors:      Matt Parrott <parrott.matt@gmail.com>, Xeross <contact@xeross.me>
" Version:      1.0

if exists('g:HardMode_loaded')
    finish
endif
let g:HardMode_loaded = 1

if !exists('g:HardMode_currentMode')
    let g:HardMode_currentMode = 'easy'
end

if !exists('g:HardMode_level')
    let g:HardMode_level = 'advanced'
end

if !exists('g:HardMode_echo')
    let g:HardMode_echo = 1
end

if !exists('g:HardMode_hardmodeMsg')
    let g:HardMode_hardmodeMsg = "VIM: Hard Mode [ ':call EasyMode()' to exit ]"
end
if !exists('g:HardMode_easymodeMsg')
    let g:HardMode_easymodeMsg = "You are weak..."
end

" Only echo if g:HardMode_echo = 1
fun! HardModeEcho(message)
    if g:HardMode_echo
        echo a:message
    end
endfun

fun! NoArrows()

    nnoremap <buffer> <Left> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <buffer> <Right> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <buffer> <Up> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <buffer> <Down> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <buffer> <PageUp> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <buffer> <PageDown> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>

    inoremap <buffer> <Left> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    inoremap <buffer> <Right> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    inoremap <buffer> <Up> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    inoremap <buffer> <Down> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    inoremap <buffer> <PageUp> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    inoremap <buffer> <PageDown> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>

    vnoremap <buffer> <Left> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <buffer> <Right> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <buffer> <Up> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <buffer> <Down> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <buffer> <PageUp> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <buffer> <PageDown> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>

endfun

fun! NoLetters()

    vnoremap <buffer> c <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <buffer> t <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <buffer> s <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <buffer> r <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <buffer> - <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <buffer> + <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>

    " Display line motions
    vnoremap <buffer> gt <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <buffer> gs <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <buffer> gs <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <buffer> gt <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>

    nnoremap <buffer> c <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <buffer> t <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <buffer> s <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <buffer> r <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <buffer> - <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <buffer> + <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>

endfun

fun! NoBackspace()

    set backspace=0

endfun

fun! HardMode()

    call NoArrows()

    if g:HardMode_level != 'wannabe'
        call NoLetters()
        call NoBackspace()
    end

    let g:HardMode_currentMode = 'hard'

    call HardModeEcho(g:HardMode_hardmodeMsg)
endfun

fun! EasyMode()
    set backspace=indent,eol,start

    silent! nunmap <buffer> <Left>
    silent! nunmap <buffer> <Right>
    silent! nunmap <buffer> <Up>
    silent! nunmap <buffer> <Down>
    silent! nunmap <buffer> <PageUp>
    silent! nunmap <buffer> <PageDown>

    silent! iunmap <buffer> <Left>
    silent! iunmap <buffer> <Right>
    silent! iunmap <buffer> <Up>
    silent! iunmap <buffer> <Down>
    silent! iunmap <buffer> <PageUp>
    silent! iunmap <buffer> <PageDown>

    silent! vunmap <buffer> <Left>
    silent! vunmap <buffer> <Right>
    silent! vunmap <buffer> <Up>
    silent! vunmap <buffer> <Down>
    silent! vunmap <buffer> <PageUp>
    silent! vunmap <buffer> <PageDown>

    silent! vunmap <buffer> c
    silent! vunmap <buffer> t
    silent! vunmap <buffer> s
    silent! vunmap <buffer> r
    silent! vunmap <buffer> -
    silent! vunmap <buffer> +

    silent! nunmap <buffer> c
    silent! nunmap <buffer> t
    silent! nunmap <buffer> s
    silent! nunmap <buffer> r
    silent! nunmap <buffer> -
    silent! nunmap <buffer> +

    let g:HardMode_currentMode = 'easy'

    call HardModeEcho(g:HardMode_easymodeMsg)
endfun

fun! ToggleHardMode()
    if g:HardMode_currentMode == 'hard'
        call EasyMode()
    else
        call HardMode()
    end
endfun
