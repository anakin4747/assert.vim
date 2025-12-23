
Vimscript test framework

- assert functions are obviously the first things

- vimscript test suite will print the results so that it can be interpreted as
  :help since the test output is literally the documentation.

- vimscript test suite will work for both vim and neovim

- any test can be easily jumped to by printing out its location in the test
  files so that if a test fails you can jump directly to it

- obviously no truncation of anything

- a way to rerun only failed tests

- a way to run individual tests not just one file of tests

- a way to run a test under the cursor

- snapshot testing

Vimscript exceptions and info:

Variables:
- v:exception
    - most recent exception caught and not finished
    ```vim
    try
        throw "oops"
    catch
        echo v:exception
    endtry
    " oops
    ```
- v:stacktrace
    - stacktrace of most recent exception caught and not finished
    - also see getstacktrace()
    ```vim
    try
        throw "oops"
    catch
        echo v:stacktrace
        echo getstacktrace()
    endtry
    " [{'lnum': 41, 'filepath': ':source buffer=17'}]
    " [{'lnum': 44, 'filepath': ':source buffer=17'}]
    ```
- v:throwpoint
    - The point where the exception most recently caught and not finished was
      thrown
    ```vim
    try
        throw "oops"
    catch
        echo v:throwpoint
    endtry
    " :source buffer=17, line 54
    ```
- v:errmsg
    - Last given error message
    ```vim
    let v:errmsg = ""
    nskjdsnk
    echo v:errmsg
    " Error detected while processing :source buffer=17:
    " line   38:
    " E492: Not an editor command:     silent! nskjdsnk
    " E492: Not an editor command:     silent! nskjdsnk
    ```
- v:errors
    - Errors found by assert functions, such as assert_true()
    ```vim
    let v:errors = []
    call assert_true(v:false)
    call assert_false(v:true)
    echo v:errors
    " [':source buffer=17 line 40: Expected True but got v:false', ':source buffer=17 line 41: Expected False but got v:true']
    ```

Assert functions

```vim
call assert_equal()
call assert_equalfile()
call assert_exception()
call assert_fails()
call assert_false()
call assert_true()
call assert_inrange()
call assert_match()
call assert_notequal()
call assert_notmatch()

call assert_report() " What does this even do ???????
```

```vim
call assert_true(v:true)
call assert_report("test")
```
