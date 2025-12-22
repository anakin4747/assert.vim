
function! assert#main(...)
    if index(keys(g:assert_commands), a:1) >= 0
        call call(g:assert_commands[a:1], [])
    endi
endf

function! assert#runall()
    echo "RANALL\n"
    quit
endf
