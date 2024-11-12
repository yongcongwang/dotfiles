" By yongcong.wang @ 27/04/2020

" highlight methods after .
syntax match pythonDot "\."
syntax match pythonMethod "\(\.\)\h\w*" contains=pythonDot
highlight def link pythonMethod Function

" hightlight functions 
syntax match pythonParen "("
syntax match pythonParenFunction "\w\+\s*(\@=" contains=pythonParen
highlight def link pythonParenFunction Function

" highlight param
syntax match pythonEqual "="
syntax match pythonParam "\w*=" contains=pythonEqual
highlight def link pythonParam Conditional

syntax keyword pyConstant self
hi def link pyConstant Constant
