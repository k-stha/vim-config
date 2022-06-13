function! UsePythonChecker()

  let checkers = [ "pylint", "flake8", "mypy" ]

  echo "Available Checkers:\n\n"

  let i = 1

  for checker in checkers
    echo i . ": " . checker
    let i = i + 1
  endfor

  call inputsave()
  let option = input("\nWhich checker do you want to use: ")
  call inputrestore()

  echo "\n\n"

  if option == 1
    setlocal makeprg=pylint\ --enable-all-extensions\ --score=n\ --persistent=n\
          \ --jobs=0\ --max-line-length=88\ --expected-line-ending-format=LF\
          \ --notes=TODO\ --check-quote-consistency=y
  elseif option == 2
    setlocal makeprg=flake8\ --doctests\ --extend-ignore=E203\ --max-complexity\
          \ 10\ --max-line-length\ 88\ --max-doc-length\ 72
  elseif option == 3
    setlocal makeprg=mypy\ --strict\ --namespace-packages\ --show-error-context\
          \ --show-column-numbers\ --show-error-codes\ --show-absolute-path\
          \ --no-incremental\ --no-silence-site-packages\ --disallow-any-unimported\
          \ --disallow-any-expr\ --disallow-any-decorated\ --disallow-any-explicit\
          \ --warn-incomplete-stub\ --warn-unreachable\ --no-color-output\
          \ --no-error-summary
  else
    echo "Checker not on the list!"
    return
  endif

  lmake %

endfunction
