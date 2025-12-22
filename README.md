
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

Vimscript exceptions and info:

Variables:
- v:exception
    - most recent exception caught and not finished
- v:stacktrace
- v:throwpoint
- v:errmsg
- v:errors
