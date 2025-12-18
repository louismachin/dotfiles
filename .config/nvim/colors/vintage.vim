" Vintage Vim Color Scheme
" Converted from VS Code theme
" Author: Ed Fryer
" Maintainer: Converted to Vim

set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "vintage"

" UI Colors
hi Normal guifg=#FAE6E9 guibg=#2B2B2B ctermfg=224 ctermbg=235
hi Cursor guifg=NONE guibg=#FFFFFF ctermfg=NONE ctermbg=15
hi CursorLine guibg=#3A3A3A ctermbg=237 cterm=NONE gui=NONE
hi LineNr guifg=#525252 guibg=#2B2B2B ctermfg=239 ctermbg=235
hi CursorLineNr guifg=#FAE6E9 guibg=#3A3A3A ctermfg=224 ctermbg=237 cterm=bold gui=bold
hi Visual guibg=#4A4A4A ctermfg=NONE ctermbg=239
hi VisualNOS guibg=#4A4A4A ctermfg=NONE ctermbg=239
hi Search guibg=#F0E7AF guifg=#2B2B2B ctermfg=235 ctermbg=229
hi IncSearch guibg=#F5A851 guifg=#2B2B2B ctermfg=235 ctermbg=215
hi StatusLine guifg=#FAE6E9 guibg=#3A3A3A ctermfg=224 ctermbg=237 cterm=NONE gui=NONE
hi StatusLineNC guifg=#8F8F8F guibg=#3A3A3A ctermfg=246 ctermbg=237
hi VertSplit guifg=#525252 guibg=#2B2B2B ctermfg=239 ctermbg=235
hi Pmenu guifg=#FAE6E9 guibg=#3A3A3A ctermfg=224 ctermbg=237
hi PmenuSel guifg=#2B2B2B guibg=#82BD89 ctermfg=235 ctermbg=108
hi PmenuSbar guibg=#4A4A4A ctermbg=239
hi PmenuThumb guibg=#8F8F8F ctermbg=246
hi TabLine guifg=#8F8F8F guibg=#3A3A3A ctermfg=246 ctermbg=237 cterm=NONE gui=NONE
hi TabLineFill guifg=#525252 guibg=#2B2B2B ctermfg=239 ctermbg=235
hi TabLineSel guifg=#FAE6E9 guibg=#2B2B2B ctermfg=224 ctermbg=235 cterm=bold gui=bold
hi Folded guifg=#8F8F8F guibg=#3A3A3A ctermfg=246 ctermbg=237
hi FoldColumn guifg=#8F8F8F guibg=#2B2B2B ctermfg=246 ctermbg=235
hi SignColumn guibg=#2B2B2B ctermbg=235

" Syntax Highlighting - Core
hi Comment guifg=#8F8F8F ctermfg=246 cterm=NONE gui=NONE
hi String guifg=#D1B8BB ctermfg=181
hi Number guifg=#F0E7AF ctermfg=229
hi Constant guifg=#82BD89 ctermfg=108
hi Boolean guifg=#82BD89 ctermfg=108
hi Character guifg=#82BD89 ctermfg=108
hi Float guifg=#F0E7AF ctermfg=229

" Variables and Identifiers - White (default foreground)
hi Variable guifg=#FAE6E9 ctermfg=224
hi Identifier guifg=#FAE6E9 ctermfg=224 cterm=NONE gui=NONE

" Functions - Green
hi Function guifg=#82BD89 ctermfg=108

" Keywords and Statements - Yellow
hi Keyword guifg=#F0E7AF ctermfg=229
hi Statement guifg=#F0E7AF ctermfg=229 cterm=NONE gui=NONE
hi Conditional guifg=#F0E7AF ctermfg=229
hi Repeat guifg=#F0E7AF ctermfg=229
hi Label guifg=#F0E7AF ctermfg=229
hi Operator guifg=#FAE6E9 ctermfg=224
hi Exception guifg=#F0E7AF ctermfg=229

" PreProc and Storage - Yellow
hi PreProc guifg=#F0E7AF ctermfg=229
hi Include guifg=#F0E7AF ctermfg=229
hi Define guifg=#F0E7AF ctermfg=229
hi Macro guifg=#F0E7AF ctermfg=229
hi PreCondit guifg=#F0E7AF ctermfg=229
hi StorageClass guifg=#82BD89 ctermfg=108

" Types - Yellow
hi Type guifg=#F0E7AF ctermfg=229 cterm=italic gui=italic
hi Structure guifg=#F0E7AF ctermfg=229
hi Typedef guifg=#F0E7AF ctermfg=229

" Special
hi Special guifg=#F5A851 ctermfg=215
hi SpecialChar guifg=#F5A851 ctermfg=215
hi Tag guifg=#F0E7AF ctermfg=229
hi Delimiter guifg=#FAE6E9 ctermfg=224
hi SpecialComment guifg=#8F8F8F ctermfg=246
hi Debug guifg=#EB7889 ctermfg=210
hi Underlined guifg=#78B3C2 ctermfg=110 cterm=underline gui=underline
hi Error guifg=#EB7889 guibg=#FFFFFF ctermfg=210 ctermbg=15
hi Todo guifg=#F5A851 guibg=#2B2B2B ctermfg=215 ctermbg=235 cterm=bold gui=bold

" Ruby/Elixir Specific
hi rubySymbol guifg=#82BD89 ctermfg=108
hi rubyConstant guifg=#FAE6E9 ctermfg=224
hi rubyAttribute guifg=#78B3C2 ctermfg=110
hi rubyInclude guifg=#F0E7AF ctermfg=229
hi rubyModule guifg=#F0E7AF ctermfg=229
hi rubyClass guifg=#F0E7AF ctermfg=229
hi rubyDefine guifg=#F0E7AF ctermfg=229
hi rubyFunction guifg=#82BD89 ctermfg=108
hi rubyControl guifg=#F0E7AF ctermfg=229
hi rubyConditional guifg=#F0E7AF ctermfg=229
hi rubyRepeat guifg=#F0E7AF ctermfg=229
hi rubyKeyword guifg=#F0E7AF ctermfg=229
hi rubyInstanceVariable guifg=#78B3C2 ctermfg=110
hi rubyGlobalVariable guifg=#78B3C2 ctermfg=110
hi rubyClassVariable guifg=#78B3C2 ctermfg=110
hi rubyInterpolationDelimiter guifg=#F5A851 ctermfg=215
hi rubyStringDelimiter guifg=#D1B8BB ctermfg=181
hi rubyLocalVariableOrMethod guifg=#FAE6E9 ctermfg=224

hi elixirAtom guifg=#82BD89 ctermfg=108
hi elixirModuleDefine guifg=#F0E7AF ctermfg=229
hi elixirDefine guifg=#F0E7AF ctermfg=229
hi elixirPrivateDefine guifg=#F0E7AF ctermfg=229
hi elixirKeyword guifg=#F0E7AF ctermfg=229
hi elixirFunctionDeclaration guifg=#82BD89 ctermfg=108
hi elixirBlockDefinition guifg=#F0E7AF ctermfg=229
hi elixirModuleDeclaration guifg=#FAE6E9 ctermfg=224
hi elixirInclude guifg=#F0E7AF ctermfg=229
hi elixirVariable guifg=#FAE6E9 ctermfg=224
hi elixirUnusedVariable guifg=#FAE6E9 ctermfg=224
hi elixirAlias guifg=#FAE6E9 ctermfg=224

" HTML/XML
hi htmlTag guifg=#F0E7AF ctermfg=229
hi htmlEndTag guifg=#F0E7AF ctermfg=229
hi htmlTagName guifg=#F0E7AF ctermfg=229
hi htmlArg guifg=#78B3C2 ctermfg=110

" CSS
hi cssClassName guifg=#42964D ctermfg=71
hi cssProp guifg=#78B3C2 ctermfg=110
hi cssValueLength guifg=#F0E7AF ctermfg=229
hi cssValueNumber guifg=#F0E7AF ctermfg=229

" JavaScript
hi jsFunction guifg=#F0E7AF ctermfg=229
hi jsFuncCall guifg=#82BD89 ctermfg=108
hi jsVariableDef guifg=#FAE6E9 ctermfg=224
hi jsStorageClass guifg=#F0E7AF ctermfg=229
hi jsThis guifg=#78B3C2 ctermfg=110

" Python
hi pythonFunction guifg=#82BD89 ctermfg=108
hi pythonBuiltin guifg=#EB7889 ctermfg=210
hi pythonDefine guifg=#F0E7AF ctermfg=229

" Git
hi DiffAdd guifg=#82BD89 guibg=#3A3A3A ctermfg=108 ctermbg=237
hi DiffChange guifg=#F0E7AF guibg=#3A3A3A ctermfg=229 ctermbg=237
hi DiffDelete guifg=#EB7889 guibg=#3A3A3A ctermfg=210 ctermbg=237
hi DiffText guifg=#78B3C2 guibg=#3A3A3A ctermfg=110 ctermbg=237 cterm=bold gui=bold

" Markdown
hi markdownH1 guifg=#F5A851 ctermfg=215 cterm=bold gui=bold
hi markdownH2 guifg=#F5A851 ctermfg=215 cterm=bold gui=bold
hi markdownH3 guifg=#F5A851 ctermfg=215 cterm=bold gui=bold
hi markdownH4 guifg=#F5A851 ctermfg=215
hi markdownH5 guifg=#F5A851 ctermfg=215
hi markdownH6 guifg=#F5A851 ctermfg=215
hi markdownCode guifg=#F0E7AF ctermfg=229
hi markdownCodeBlock guifg=#F0E7AF ctermfg=229
hi markdownCodeDelimiter guifg=#F0E7AF ctermfg=229
hi markdownBlockquote guifg=#4B8D9C ctermfg=67
hi markdownBold guifg=#82BD89 ctermfg=108 cterm=bold gui=bold
hi markdownItalic guifg=#82BD89 ctermfg=108 cterm=italic gui=italic

" Spelling
hi SpellBad guisp=#EB7889 gui=undercurl ctermfg=210 cterm=underline
hi SpellCap guisp=#78B3C2 gui=undercurl ctermfg=110 cterm=underline
hi SpellLocal guisp=#82BD89 gui=undercurl ctermfg=108 cterm=underline
hi SpellRare guisp=#F5A851 gui=undercurl ctermfg=215 cterm=underline

" Misc
hi Directory guifg=#78B3C2 ctermfg=110
hi ErrorMsg guifg=#EB7889 guibg=#2B2B2B ctermfg=210 ctermbg=235
hi WarningMsg guifg=#F5A851 ctermfg=215
hi MoreMsg guifg=#82BD89 ctermfg=108
hi Question guifg=#82BD89 ctermfg=108
hi Title guifg=#F5A851 ctermfg=215 cterm=bold gui=bold
hi WildMenu guifg=#2B2B2B guibg=#F0E7AF ctermfg=235 ctermbg=229
hi NonText guifg=#525252 ctermfg=239
hi SpecialKey guifg=#525252 ctermfg=239
hi MatchParen guifg=#F5A851 guibg=#4A4A4A ctermfg=215 ctermbg=239 cterm=bold gui=bold
