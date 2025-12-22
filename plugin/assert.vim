
command! -nargs=* Assert call assert#main(<f-args>)

let g:assert_commands = {
    \ "runall": function('assert#runall')
    \ }
