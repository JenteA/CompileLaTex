"=============================================================================
" File: CompileLaTex.vim
" Author: Jente Adams
" Version: 0.1.0

if exists("g:loaded_CompileLaTex")
    finish
elseif v:version < 800
    echohl WarningMsg |
        \ echomsg "CompileLaTex only suports vim 8+" |
        \ echohl None
    finish
endif
let g:loaded_CompileLaTex = 1 " your version number
let s:save_cpo = &cpo
set cpo&vim

if !exists(":CompileLaTex")
    command -nargs=0  CompileLaTex  :call s:CompileAndOpenLatex()
endif

function s:CompileAndOpenLatex()
    silent execute "!" . expand(g:CompileLaTexCompiler). " %"
    let l:filename= expand("%<.pdf").".pdf"
    let open=system('pgrep -fc "' . g:CompileLaTexPDFReader . ' ' . l:filename . '"' )
    if open == 0
        let pdf = job_start(expand(g:CompileLaTexPDFReader) . " " .expand(l:filename))
    endif
"    :redraw!
endfunction

let &cpo = s:save_cpo
