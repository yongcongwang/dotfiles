" Vim color file
" | Light Theme        | Light Theme   | Dark Theme    |
" ------------------------------------------------------
" | color         | 4b | 8b  | 24b     |  8  | 24b     |
" ------------------------------------------------------
" | Black         | 0  | 255 | #eeeeee | 234 | #1c1c1c |
" | Red           | 1  | 124 | #af0000 | 125 | #af005f |
" | Green         | 2  | 28  | #008700 | 70  | #5faf00 |
" | Yellow        | 3  | 64  | #5f8700 | 179 | #d7af5f |
" | Blue          | 4  | 31  | #0087af | 74  | #5fafd7 |
" | Magenta       | 5  | 102 | #878787 | 244 | #808080 |
" | Cyan          | 6  | 24  | #005f87 | 173 | #d7875f |
" | White         | 7  | 238 | #444444 | 252 | #d0d0d0 |
" | Lisght Gray   | 8  | 250 | #bcbcbc | 240 | #585858 |
" | Light Red     | 9  | 160 | #d70000 | 71  | #5faf5f |
" | Light Green   | 10 | 162 | #d70087 | 148 | #afd700 |
" | Light Yellow  | 11 | 91  | #8700af | 140 | #af87d7 |
" | Light Blue    | 12 | 166 | #d75f00 | 214 | #ffaf00 |
" | Light Magenta | 13 | 166 | #d75f00 | 205 | #ff5faf |
" | Light Cyan    | 14 | 25  | #005faf | 37  | #00afaf |
" | Light White   | 15 | 24  | #005f87 | 66  | #5f8787 |

highlight clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "code"

" default settings
highlight SpecialKey     ctermfg=31
highlight TermCursor     cterm=reverse
highlight NonText        ctermfg=91
highlight Directory      ctermfg=31
highlight ErrorMsg       ctermfg=15 ctermbg=1
highlight IncSearch      cterm=reverse
highlight MoreMsg        ctermfg=2
highlight ModeMsg        cterm=bold
highlight CursorLineNr   ctermfg=64
highlight Question       ctermfg=2
highlight Title          ctermfg=102
highlight WarningMsg     ctermfg=124
highlight WildMenu       ctermfg=0 ctermbg=11
highlight Conceal        ctermfg=7 ctermbg=7
highlight SpellBad       ctermbg=2
highlight SpellRare      ctermbg=5
highlight SpellLocal     ctermbg=14
highlight PmenuSbar      ctermbg=8
highlight PmenuThumb     ctermbg=0
highlight TabLine        cterm=underline ctermfg=255 ctermbg=7
highlight TabLineSel     cterm=bold
highlight TabLineFill    cterm=reverse
highlight CursorColumn   ctermbg=238
highlight CursorLine     cterm=underline
highlight MatchParen     ctermbg=14
highlight Constant       ctermfg=124
highlight Special        ctermfg=5
highlight Identifier     cterm=NONE ctermfg=6
highlight Statement      ctermfg=31 cterm=bold
highlight PreProc        ctermfg=5
highlight Type           ctermfg=166
highlight Underlined     cterm=underline ctermfg=5
highlight Ignore         ctermfg=15
highlight Error          ctermfg=24 ctermbg=160
highlight Todo           ctermfg=255  ctermbg=91

" In diffs, added lines are green, changed lines are yellow, deleted lines are
" red, and changed text (within a changed line) is bright yellow and bold.
highlight DiffAdd        ctermfg=0    ctermbg=2
highlight DiffChange     ctermfg=0    ctermbg=3
highlight DiffDelete     ctermfg=0    ctermbg=1
highlight DiffText       ctermfg=0    ctermbg=11   cterm=bold

" Invert selected lines in visual mode
highlight Visual         ctermfg=NONE ctermbg=NONE cterm=inverse

" Highlight search matches in black, with a yellow background
highlight Search         ctermfg=0    ctermbg=11

" Line numbers, comments, color columns, the status line, splits and sign
" columns.
if &background == "light"
  highlight LineNr       ctermfg=7
  highlight Comment      ctermfg=250
  highlight ColorColumn  ctermfg=8    ctermbg=7
  highlight Folded       ctermfg=8    ctermbg=7
  highlight FoldColumn   ctermfg=8    ctermbg=7
  highlight Pmenu        ctermfg=0    ctermbg=7
  highlight PmenuSel     ctermfg=7    ctermbg=0
  highlight SpellCap     ctermfg=8    ctermbg=7
  highlight StatusLine   ctermfg=0    ctermbg=7    cterm=bold
  highlight StatusLineNC ctermfg=8    ctermbg=7    cterm=NONE
  highlight VertSplit    ctermfg=8    ctermbg=7    cterm=NONE
  highlight SignColumn                ctermbg=7
else
  highlight LineNr       ctermfg=8
  highlight Comment      ctermfg=8
  highlight ColorColumn  ctermfg=7    ctermbg=8
  highlight Folded       ctermfg=7    ctermbg=8
  highlight FoldColumn   ctermfg=7    ctermbg=8
  highlight Pmenu        ctermfg=15   ctermbg=8
  highlight PmenuSel     ctermfg=8    ctermbg=15
  highlight SpellCap     ctermfg=7    ctermbg=8
  highlight StatusLine   ctermfg=15   ctermbg=8    cterm=bold
  highlight StatusLineNC ctermfg=7    ctermbg=8    cterm=NONE
  highlight VertSplit    ctermfg=7    ctermbg=8    cterm=NONE
  highlight SignColumn                ctermbg=8
endif
