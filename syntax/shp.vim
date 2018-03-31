" Vim syntax file
" Language: ShapeML
" Maintainer: Gaspard Zoss, Stefan Lienhard
" Latest Revision: 31 March 2018

if exists("b:current_syntax")
  finish
endif


syn match shpPreproc "#include"
syn keyword shpTodo TODO NOTE contained
syn match shpComment "//.*$" contains=shpTodo
syn region shpComment start="/\*" end="\*/" contains=shpTodo keepend

syn keyword shpKeyword param const func rule

syn keyword shpBool true false
syn match shpName "[_a-zA-Z][_a-zA-Z0-9]*"
syn match shpNumber "[-]\?\d\+" display
syn match shpNumber "[-]\?\d\+\.\d*" display
syn region shpString start='"' skip='\\"' end='"' keepend

syn match shpSpecial "::\|[:{}^;=\[\]]"
syn match shpEqual "=="

syn sync fromstart


let b:current_syntax = "shp"

hi def link shpPreproc    PreProc
hi def link shpTodo       Todo
hi def link shpComment    Comment
hi def link shpKeyword    Label
hi def link shpBool       Boolean
hi def link shpNumber     Number
hi def link shpString     String
hi def link shpSpecial    Operator

