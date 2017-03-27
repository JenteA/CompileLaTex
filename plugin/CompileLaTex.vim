"=============================================================================
" File: 
" Author: 
" Version: 

function CompileAndOpenLatex()
    silent execute expand(g:CompileLaTexCompiler). " %"
    let l:filename= expand("%<.pdf").".pdf"
    let open=system('ps -fe | grep "' .expand(g:CompileLaTexPDFReader) . ' ' .expand(l:filename) .'" | grep -vc g    rep')
    if open == 0
        let pdf = job_start(expand(g:CompileLaTexPDFReader) . " " .expand(l:filename))
    endif
    :redraw!
endfunction

command! -nargs=0 -bar CompileAndOpen call <SID>CompileAndOpenLatex()
