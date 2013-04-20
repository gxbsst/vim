let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <D-9> 9gt
imap <D-8> 8gt
imap <D-7> 7gt
imap <D-6> 6gt
imap <D-5> 5gt
imap <D-4> 4gt
imap <D-3> 3gt
imap <D-2> 2gt
imap <D-1> 1gt
imap <D-0> 0gt
imap <D-BS> 
imap <M-BS> 
imap <M-Down> }
inoremap <D-Down> <C-End>
imap <M-Up> {
inoremap <D-Up> <C-Home>
noremap! <M-Right> <C-Right>
noremap! <D-Right> <End>
noremap! <M-Left> <C-Left>
noremap! <D-Left> <Home>
inoremap <silent> <S-Tab> =BackwardsSnippet()
inoremap <Plug>ZenCodingAnchorizeSummary :call zencoding#anchorizeURL(1)a
inoremap <Plug>ZenCodingAnchorizeURL :call zencoding#anchorizeURL(0)a
inoremap <Plug>ZenCodingRemoveTag :call zencoding#removeTag()a
inoremap <Plug>ZenCodingSplitJoinTagInsert :call zencoding#splitJoinTag()
inoremap <Plug>ZenCodingToggleComment :call zencoding#toggleComment()a
inoremap <Plug>ZenCodingImageSize :call zencoding#imageSize()a
inoremap <Plug>ZenCodingPrev :call zencoding#moveNextPrev(1)
inoremap <Plug>ZenCodingNext :call zencoding#moveNextPrev(0)
inoremap <Plug>ZenCodingBalanceTagOutwardInsert :call zencoding#balanceTag(-1)
inoremap <Plug>ZenCodingBalanceTagInwardInsert :call zencoding#balanceTag(1)
inoremap <Plug>ZenCodingExpandWord u:call zencoding#expandAbbr(1,"")a
inoremap <Plug>ZenCodingExpandAbbr u:call zencoding#expandAbbr(0,"")a
inoremap <silent> <Plug>XPTrawKey 
imap <silent> <Plug>XPTfallback <Plug>XPTrawKey
inoremap <silent> <Plug>ragtagXmlV ="&#".getchar().";"
snoremap <silent> 	 i<Right>=TriggerSnippet()
nnoremap 	 iu=NERDSnippets_SwitchRegion(0)
nnoremap <silent>  :CtrlP
nnoremap <silent>  :call RelatedSpecVOpen()
snoremap  b<BS>
vmap c <Plug>ZenCodingCodePretty
nmap A <Plug>ZenCodingAnchorizeSummary
nmap a <Plug>ZenCodingAnchorizeURL
nmap k <Plug>ZenCodingRemoveTag
nmap j <Plug>ZenCodingSplitJoinTagNormal
vmap m <Plug>ZenCodingMergeLines
nmap / <Plug>ZenCodingToggleComment
nmap i <Plug>ZenCodingImageSize
nmap N <Plug>ZenCodingPrev
nmap n <Plug>ZenCodingNext
vmap D <Plug>ZenCodingBalanceTagOutwardVisual
nmap D <Plug>ZenCodingBalanceTagOutwardNormal
vmap d <Plug>ZenCodingBalanceTagInwardVisual
nmap d <Plug>ZenCodingBalanceTagInwardNormal
nmap , <Plug>ZenCodingExpandNormal
vmap , <Plug>ZenCodingExpandVisual
snoremap <silent>  `>a=XPTemplateStart(0,{'k':'<C-\++'})
xnoremap <silent>  "0s=XPTemplatePreWrap(@0)
nnoremap <silent>  :TComment
nnoremap <silent> r :TCommentRight
noremap s :TCommentAs =&ft_
noremap n :TCommentAs =&ft 
noremap a :TCommentAs 
noremap b :TCommentBlock
vnoremap <silent> r :TCommentRight
vnoremap <silent> i :TCommentInline
onoremap <silent> r :TCommentRight
noremap   :TComment 
noremap <silent> p m`vip:TComment``
vnoremap <silent>  :TCommentMaybeInline
onoremap <silent>  :TComment
snoremap % b<BS>%
snoremap ' b<BS>'
nmap <silent> ,<D-R> :call RunLastConqueCommand()
nnoremap <silent> , :call RelatedSpecOpen()
nmap <silent> ,cI :call NERDComment(0, "prepend")
nmap <silent> ,cA :call NERDComment(0, "append")
nnoremap <silent> ,c$ :call NERDComment(0, "toEOL")
vnoremap <silent> ,cu :call NERDComment(1, "uncomment")
nnoremap <silent> ,cu :call NERDComment(0, "uncomment")
vnoremap <silent> ,cn :call NERDComment(1, "nested")
nnoremap <silent> ,cn :call NERDComment(0, "nested")
vnoremap <silent> ,cb :call NERDComment(1, "alignBoth")
nnoremap <silent> ,cb :call NERDComment(0, "alignBoth")
vnoremap <silent> ,cr :call NERDComment(1, "alignRight")
nnoremap <silent> ,cr :call NERDComment(0, "alignRight")
vnoremap <silent> ,cl :call NERDComment(1, "alignLeft")
nnoremap <silent> ,cl :call NERDComment(0, "alignLeft")
vmap <silent> ,cy :call NERDComment(1, "yank")
nmap <silent> ,cy :call NERDComment(0, "yank")
vnoremap <silent> ,ci :call NERDComment(1, "invert")
nnoremap <silent> ,ci :call NERDComment(0, "invert")
vnoremap <silent> ,cs :call NERDComment(1, "sexy")
nnoremap <silent> ,cs :call NERDComment(0, "sexy")
vnoremap <silent> ,cm :call NERDComment(1, "minimal")
nnoremap <silent> ,cm :call NERDComment(0, "minimal")
vnoremap <silent> ,c  :call NERDComment(1, "toggle")
nnoremap <silent> ,c  :call NERDComment(0, "toggle")
vnoremap <silent> ,cc :call NERDComment(1, "norm")
nnoremap <silent> ,cc :call NERDComment(0, "norm")
inoremap ï o
xmap S <Plug>VSurround
snoremap U b<BS>U
nmap [xx <Plug>unimpairedLineXmlEncode
xmap [x <Plug>unimpairedXmlEncode
nmap [x <Plug>unimpairedXmlEncode
nmap [uu <Plug>unimpairedLineUrlEncode
xmap [u <Plug>unimpairedUrlEncode
nmap [u <Plug>unimpairedUrlEncode
nmap [yy <Plug>unimpairedLineStringEncode
xmap [y <Plug>unimpairedStringEncode
nmap [y <Plug>unimpairedStringEncode
xmap [e <Plug>unimpairedMoveUp
nmap [e <Plug>unimpairedMoveUp
nmap [  <Plug>unimpairedBlankUp
nmap [o <Plug>unimpairedOPrevious
nmap <silent> [Q <Plug>unimpairedQFirst
nmap <silent> [q <Plug>unimpairedQPrevious
nmap <silent> [L <Plug>unimpairedLFirst
nmap <silent> [l <Plug>unimpairedLPrevious
nmap <silent> [B <Plug>unimpairedBFirst
nmap <silent> [b <Plug>unimpairedBPrevious
nmap <silent> [A <Plug>unimpairedAFirst
nmap <silent> [a <Plug>unimpairedAPrevious
vmap [% [%m'gv``
nnoremap <silent> \__ :TComment
nnoremap <silent> \_r :TCommentRight
snoremap \ b<BS>\
nmap <silent> \rcrel :RunRspecRelated
nmap <silent> \rcrl :RunLastConqueCommand
nmap <silent> \rcRR :RunRakeConque
nmap <silent> \rccc :CloseSingleConque
nmap <silent> \rccl :RunCucumberCurrentLineConque
nmap <silent> \rcll :RunRspecCurrentLineConque
nmap <silent> \rcss :RunRspecCurrentFileConque
nmap <silent> \rcrr :RunRubyCurrentFileConque
map <silent> \cd <Plug>RooterChangeToRootDirectory
nmap \P :Preview
map <silent> \p <Plug>PeepOpen
nmap <silent> \ig <Plug>IndentGuidesToggle
vnoremap <silent> \\w :call EasyMotion#WB(1, 0)
onoremap <silent> \\w :call EasyMotion#WB(0, 0)
nnoremap <silent> \\w :call EasyMotion#WB(0, 0)
vnoremap <silent> \\t :call EasyMotion#T(1, 0)
onoremap <silent> \\t :call EasyMotion#T(0, 0)
nnoremap <silent> \\t :call EasyMotion#T(0, 0)
vnoremap <silent> \\n :call EasyMotion#Search(1, 0)
onoremap <silent> \\n :call EasyMotion#Search(0, 0)
nnoremap <silent> \\n :call EasyMotion#Search(0, 0)
vnoremap <silent> \\k :call EasyMotion#JK(1, 1)
onoremap <silent> \\k :call EasyMotion#JK(0, 1)
nnoremap <silent> \\k :call EasyMotion#JK(0, 1)
vnoremap <silent> \\j :call EasyMotion#JK(1, 0)
onoremap <silent> \\j :call EasyMotion#JK(0, 0)
nnoremap <silent> \\j :call EasyMotion#JK(0, 0)
vnoremap <silent> \\gE :call EasyMotion#EW(1, 1)
onoremap <silent> \\gE :call EasyMotion#EW(0, 1)
nnoremap <silent> \\gE :call EasyMotion#EW(0, 1)
vnoremap <silent> \\f :call EasyMotion#F(1, 0)
onoremap <silent> \\f :call EasyMotion#F(0, 0)
nnoremap <silent> \\f :call EasyMotion#F(0, 0)
vnoremap <silent> \\e :call EasyMotion#E(1, 0)
onoremap <silent> \\e :call EasyMotion#E(0, 0)
nnoremap <silent> \\e :call EasyMotion#E(0, 0)
vnoremap <silent> \\b :call EasyMotion#WB(1, 1)
onoremap <silent> \\b :call EasyMotion#WB(0, 1)
nnoremap <silent> \\b :call EasyMotion#WB(0, 1)
vnoremap <silent> \\W :call EasyMotion#WBW(1, 0)
onoremap <silent> \\W :call EasyMotion#WBW(0, 0)
nnoremap <silent> \\W :call EasyMotion#WBW(0, 0)
vnoremap <silent> \\T :call EasyMotion#T(1, 1)
onoremap <silent> \\T :call EasyMotion#T(0, 1)
nnoremap <silent> \\T :call EasyMotion#T(0, 1)
vnoremap <silent> \\N :call EasyMotion#Search(1, 1)
onoremap <silent> \\N :call EasyMotion#Search(0, 1)
nnoremap <silent> \\N :call EasyMotion#Search(0, 1)
vnoremap <silent> \\ge :call EasyMotion#E(1, 1)
onoremap <silent> \\ge :call EasyMotion#E(0, 1)
nnoremap <silent> \\ge :call EasyMotion#E(0, 1)
vnoremap <silent> \\F :call EasyMotion#F(1, 1)
onoremap <silent> \\F :call EasyMotion#F(0, 1)
nnoremap <silent> \\F :call EasyMotion#F(0, 1)
vnoremap <silent> \\E :call EasyMotion#EW(1, 0)
onoremap <silent> \\E :call EasyMotion#EW(0, 0)
nnoremap <silent> \\E :call EasyMotion#EW(0, 0)
vnoremap <silent> \\B :call EasyMotion#WBW(1, 1)
onoremap <silent> \\B :call EasyMotion#WBW(0, 1)
nnoremap <silent> \\B :call EasyMotion#WBW(0, 1)
noremap \_s :TCommentAs =&ft_
noremap \_n :TCommentAs =&ft 
noremap \_a :TCommentAs 
noremap \_b :TCommentBlock
vnoremap <silent> \_r :TCommentRight
onoremap <silent> \_r :TCommentRight
vnoremap <silent> \_i :TCommentInline
noremap \_  :TComment 
noremap <silent> \_p vip:TComment
vnoremap <silent> \__ :TCommentMaybeInline
onoremap <silent> \__ :TComment
map \mq <Plug>MBEMarkCurrent
map \mbt <Plug>TMiniBufExplorer
map \mbu <Plug>UMiniBufExplorer
map \mbc <Plug>CMiniBufExplorer
map \mbe <Plug>MiniBufExplorer
nmap \a <Plug>ToggleAutoCloseMappings
map \rwp <Plug>RestoreWinPosn
map \swp <Plug>SaveWinPosn
map \tt <Plug>AM_tt
map \tsq <Plug>AM_tsq
map \tsp <Plug>AM_tsp
map \tml <Plug>AM_tml
map \tab <Plug>AM_tab
map \m= <Plug>AM_m=
map \tW@ <Plug>AM_tW@
map \t@ <Plug>AM_t@
map \t~ <Plug>AM_t~
map \t? <Plug>AM_t?
map \w= <Plug>AM_w=
map \ts= <Plug>AM_ts=
map \ts< <Plug>AM_ts<
map \ts; <Plug>AM_ts;
map \ts: <Plug>AM_ts:
map \ts, <Plug>AM_ts,
map \t= <Plug>AM_t=
map \t< <Plug>AM_t<
map \t; <Plug>AM_t;
map \t: <Plug>AM_t:
map \t, <Plug>AM_t,
map \t# <Plug>AM_t#
map \t| <Plug>AM_t|
map \T~ <Plug>AM_T~
map \Tsp <Plug>AM_Tsp
map \Tab <Plug>AM_Tab
map \TW@ <Plug>AM_TW@
map \T@ <Plug>AM_T@
map \T? <Plug>AM_T?
map \T= <Plug>AM_T=
map \T< <Plug>AM_T<
map \T; <Plug>AM_T;
map \T: <Plug>AM_T:
map \Ts, <Plug>AM_Ts,
map \T, <Plug>AM_T,o
map \T# <Plug>AM_T#
map \T| <Plug>AM_T|
map \Htd <Plug>AM_Htd
map \anum <Plug>AM_aunum
map \aenum <Plug>AM_aenum
map \aunum <Plug>AM_aunum
map \afnc <Plug>AM_afnc
map \adef <Plug>AM_adef
map \adec <Plug>AM_adec
map \ascom <Plug>AM_ascom
map \aocom <Plug>AM_aocom
map \adcom <Plug>AM_adcom
map \acom <Plug>AM_acom
map \abox <Plug>AM_abox
map \a( <Plug>AM_a(
map \a= <Plug>AM_a=
map \a< <Plug>AM_a<
map \a, <Plug>AM_a,
map \a? <Plug>AM_a?
nmap \n :NERDTreeToggle
map \# vs#
map \- vs-
map \= vs=
map \t :FuzzyFinderTextMate
map \tm :tabmove
map \tl :tablast
map \tf :tabfirst
map \tp :tabprevious
map \tn :tabnext
map \to :tabonly
map \tc :tabclose
map \te :tabedit
nmap ]xx <Plug>unimpairedLineXmlDecode
xmap ]x <Plug>unimpairedXmlDecode
nmap ]x <Plug>unimpairedXmlDecode
nmap ]uu <Plug>unimpairedLineUrlDecode
xmap ]u <Plug>unimpairedUrlDecode
nmap ]u <Plug>unimpairedUrlDecode
nmap ]yy <Plug>unimpairedLineStringDecode
xmap ]y <Plug>unimpairedStringDecode
nmap ]y <Plug>unimpairedStringDecode
xmap ]e <Plug>unimpairedMoveDown
nmap ]e <Plug>unimpairedMoveDown
nmap ]  <Plug>unimpairedBlankDown
nmap ]o <Plug>unimpairedONext
nmap <silent> ]Q <Plug>unimpairedQLast
nmap <silent> ]q <Plug>unimpairedQNext
nmap <silent> ]L <Plug>unimpairedLLast
nmap <silent> ]l <Plug>unimpairedLNext
nmap <silent> ]B <Plug>unimpairedBLast
nmap <silent> ]b <Plug>unimpairedBNext
nmap <silent> ]A <Plug>unimpairedALast
nmap <silent> ]a <Plug>unimpairedANext
vmap ]% ]%m'gv``
snoremap ^ b<BS>^
snoremap ` b<BS>`
vmap a% [%v]%
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
vnoremap <silent> gC :TCommentMaybeInline
nnoremap <silent> gCc :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorLineAnywayg@$
nnoremap <silent> gC :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorAnywayg@
vnoremap <silent> gc :TCommentMaybeInline
nnoremap <silent> gcc :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorLineg@$
nnoremap <silent> gc :let w:tcommentPos = getpos(".") | set opfunc=tcomment#Operatorg@
xmap gS <Plug>VgSurround
xmap s <Plug>Vsurround
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
map <D-9> 9gt
map <D-8> 8gt
map <D-7> 7gt
map <D-6> 6gt
map <D-5> 5gt
map <D-4> 4gt
map <D-3> 3gt
map <D-2> 2gt
map <D-1> 1gt
map <D-0> 0gt
map <D-F> :Ack 
nmap <silent> <D-L> :call RunRspecCurrentLineConque()
nmap <silent> <D-R> :call RunRspecCurrentFileConque()
map <D-t> <Plug>PeepOpen
map <M-Down> }
noremap <D-Down> <C-End>
map <M-Up> {
noremap <D-Up> <C-Home>
noremap <M-Right> <C-Right>
noremap <D-Right> <End>
noremap <M-Left> <C-Left>
noremap <D-Left> <Home>
snoremap <Left> bi
snoremap <Right> a
snoremap <BS> b<BS>
snoremap <silent> <S-Tab> i<Right>=BackwardsSnippet()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
vnoremap <Plug>ZenCodingCodePretty :call zencoding#codePretty()
nnoremap <Plug>ZenCodingAnchorizeSummary :call zencoding#anchorizeURL(1)
nnoremap <Plug>ZenCodingAnchorizeURL :call zencoding#anchorizeURL(0)
nnoremap <Plug>ZenCodingRemoveTag :call zencoding#removeTag()
nnoremap <Plug>ZenCodingSplitJoinTagNormal :call zencoding#splitJoinTag()
vnoremap <Plug>ZenCodingMergeLines :call zencoding#mergeLines()
nnoremap <Plug>ZenCodingToggleComment :call zencoding#toggleComment()
nnoremap <Plug>ZenCodingImageSize :call zencoding#imageSize()
nnoremap <Plug>ZenCodingPrev :call zencoding#moveNextPrev(1)
nnoremap <Plug>ZenCodingNext :call zencoding#moveNextPrev(0)
vnoremap <Plug>ZenCodingBalanceTagOutwardVisual :call zencoding#balanceTag(-2)
nnoremap <Plug>ZenCodingBalanceTagOutwardNormal :call zencoding#balanceTag(-1)
vnoremap <Plug>ZenCodingBalanceTagInwardVisual :call zencoding#balanceTag(2)
nnoremap <Plug>ZenCodingBalanceTagInwardNormal :call zencoding#balanceTag(1)
nnoremap <Plug>ZenCodingExpandWord :call zencoding#expandAbbr(1,"")
nnoremap <Plug>ZenCodingExpandNormal :call zencoding#expandAbbr(3,"")
vnoremap <Plug>ZenCodingExpandVisual :call zencoding#expandAbbr(2,"")
snoremap <Plug>selectToInsert d<BS>
xnoremap <silent> <Plug>unimpairedMoveDown :exe 'norm m`'|exe '''<,''>move''>+'.v:count1``
xnoremap <silent> <Plug>unimpairedMoveUp :exe 'norm m`'|exe '''<,''>move--'.v:count1``
nnoremap <silent> <Plug>unimpairedMoveDown :exe 'norm m`'|exe 'move+'.v:count1``
nnoremap <silent> <Plug>unimpairedMoveUp :exe 'norm m`'|exe 'move--'.v:count1``
nnoremap <silent> <Plug>unimpairedBlankDown :put =repeat(nr2char(10),v:count)|'[-1
nnoremap <silent> <Plug>unimpairedBlankUp :put!=repeat(nr2char(10),v:count)|']+1
nmap <silent> <Plug>unimpairedQLast :exe "clast ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedQFirst :exe "cfirst ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedQNext :exe "cnext ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedQPrevious :exe "cprevious ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedLLast :exe "llast ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedLFirst :exe "lfirst ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedLNext :exe "lnext ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedLPrevious :exe "lprevious ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedBLast :exe "blast ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedBFirst :exe "bfirst ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedBNext :exe "bnext ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedBPrevious :exe "bprevious ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedALast :exe "last ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedAFirst :exe "first ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedANext :exe "next ".(v:count ? v:count : "")
nmap <silent> <Plug>unimpairedAPrevious :exe "previous ".(v:count ? v:count : "")
nnoremap <silent> <F11> :call conque_term#exec_file()
nmap <silent> <Plug>RestoreWinPosn :call RestoreWinPosn()
nmap <silent> <Plug>SaveWinPosn :call SaveWinPosn()
nmap <SNR>26_WE <Plug>AlignMapsWrapperEnd
map <SNR>26_WS <Plug>AlignMapsWrapperStart
xmap <BS> "-d
inoremap <silent>   <BS>:call NERDComment(0, "insert")
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <silent> 	 u=TriggerSnippet()
inoremap  :call ZenCodingExpandAbbr()
imap  <Plug>DiscretionaryEnd
inoremap <silent> 	 =ShowAvailableSnips()
inoremap <silent>  =XPTemplateStart(0,{'k':'<C-r++<C-\++','forcePum':1})
inoremap <silent>  =XPTemplateStart(0,{'k':'<C-r++<C-r++<C-\++','popupOnly':1})
imap  <Plug>Isurround
imap  <Plug>AlwaysEnd
imap A <Plug>ZenCodingAnchorizeSummary
imap a <Plug>ZenCodingAnchorizeURL
imap k <Plug>ZenCodingRemoveTag
imap j <Plug>ZenCodingSplitJoinTagInsert
imap / <Plug>ZenCodingToggleComment
imap i <Plug>ZenCodingImageSize
imap N <Plug>ZenCodingPrev
imap n <Plug>ZenCodingNext
imap D <Plug>ZenCodingBalanceTagOutwardInsert
imap d <Plug>ZenCodingBalanceTagInwardInsert
imap ; <Plug>ZenCodingExpandWord
imap , <Plug>ZenCodingExpandAbbr
inoremap <silent>  =XPTemplateStart(0,{'k':'<C-\++'})
inoremap s :TCommentAs =&ft_
inoremap n :TCommentAs =&ft 
inoremap a :TCommentAs 
inoremap b :TCommentBlock
inoremap <silent> r :TCommentRight
inoremap   :TComment 
inoremap <silent> p :norm! m`vip:TComment``
inoremap <silent>  :TComment
cabbr grtoggle GoldenRatioToggle
cabbr grresize GoldenRatioResize
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set background=dark
set backspace=indent,eol,start
set cpoptions=aABceFs$
set directory=~/.vim/tmp//,.
set noequalalways
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set guifont=Monaco:h14
set guioptions=egmLt
set guitablabel=%M%t
set helplang=cn
set hidden
set hlsearch
set ignorecase
set incsearch
set isident=@,48-57,_,192-255,$
set iskeyword=@,48-57,_,192-255,-
set langmenu=none
set laststatus=2
set listchars=tab:,.,trail:.,extends:#,nbsp:.
set mouse=a
set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error
set ruler
set rulerformat=%30(%=:b%n%y%m%r%w\ %l,%c%V\ %P%)%{XPMautoUpdate(\"ruler\")}
set runtimepath=~/.vim,~/.vim/bundle/ack,~/.vim/bundle/AutoClose,~/.vim/bundle/Better-CSS-Syntax-for-Vim,~/.vim/bundle/HTML-AutoCloseTag,~/.vim/bundle/Puppet-Syntax-Highlighting,~/.vim/bundle/better-snipmate-snippets,~/.vim/bundle/bufexplorer,~/.vim/bundle/cmdalias,~/.vim/bundle/colorschemes,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/endwise,~/.vim/bundle/minibufexpl.vim,~/.vim/bundle/mustache.vim,~/.vim/bundle/sessionman.vim,~/.vim/bundle/syntastic,~/.vim/bundle/tabular,~/.vim/bundle/tagbar,~/.vim/bundle/tlib_vim,~/.vim/bundle/tpope-vim-ragtag,~/.vim/bundle/tpope-vim-rails,~/.vim/bundle/tpope-vim-surround,~/.vim/bundle/tsaleh-vim-tcomment,~/.vim/bundle/vim-addon-background-cmd,~/.vim/bundle/vim-coffee-script,~/.vim/bundle/vim-colors-solarized,~/.vim/bundle/vim-conque,~/.vim/bundle/vim-cucumber,~/.vim/bundle/vim-easymotion,~/.vim/bundle/vim-fugitive,~/.vim/bundle/vim-git,~/.vim/bundle/vim-indent-guides,~/.vim/bundle/vim-json,~/.vim/bundle/vim-less,~/.vim/bundle/vim-makegreen,~/.vim/bundle/vim-markdown,~/.vim/bundle/vim-nerdtree-
set scrolljump=5
set scrolloff=3
set shiftwidth=2
set showcmd
set showmatch
set showtabline=2
set smartcase
set statusline=%<%f\ %w%h%m%r%{fugitive#statusline()}\ [%{&ff}/%Y]\ [%{getcwd()}]%=%-14.(%l,%c%V%)\ %p%%
set tabstop=1
set termencoding=utf-8
set title
set updatetime=300
set viminfo=!,'100,<50,s10,h
set visualbell
set whichwrap=b,s,h,l,<,>,[,]
set wildmenu
set wildmode=list:longest,full
set window=30
set winminheight=0
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Projects/Patrick
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 app/controllers/albums_controller.rb
silent! argdel *
edit app/controllers/albums_controller.rb
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 19 + 15) / 31)
exe 'vert 1resize ' . ((&columns * 46 + 61) / 123)
exe '2resize ' . ((&lines * 19 + 15) / 31)
exe 'vert 2resize ' . ((&columns * 76 + 61) / 123)
exe '3resize ' . ((&lines * 9 + 15) / 31)
argglobal
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> f <Plug>RailsSplitFind
nmap <buffer> gf <Plug>RailsTabFind
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nmap <buffer> [f <Plug>RailsAlternate
nmap <buffer> ]f <Plug>RailsRelated
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> <Plug>RailsAlternate :A
nnoremap <buffer> <silent> <Plug>RailsRelated :R
nnoremap <buffer> <silent> <Plug>RailsFind :REfind
nnoremap <buffer> <silent> <Plug>RailsSplitFind :RSfind
nnoremap <buffer> <silent> <Plug>RailsVSplitFind :RVfind
nnoremap <buffer> <silent> <Plug>RailsTabFind :RTfind
cnoremap <buffer> <expr>  fugitive#buffer().rev()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=80
setlocal colorcolumn=80
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,-
setlocal keywordprg=ri\ -T
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,~/Projects/Patrick,~/Projects/Patrick/app,~/Projects/Patrick/app/models,~/Projects/Patrick/app/controllers,~/Projects/Patrick/app/helpers,~/Projects/Patrick/config,~/Projects/Patrick/lib,~/Projects/Patrick/app/views,~/Projects/Patrick/app/views/albums,~/Projects/Patrick/public,~/Projects/Patrick/test,~/Projects/Patrick/test/unit,~/Projects/Patrick/test/functional,~/Projects/Patrick/test/integration,~/Projects/Patrick/spec,~/Projects/Patrick/spec/models,~/Projects/Patrick/spec/controllers,~/Projects/Patrick/spec/helpers,~/Projects/Patrick/spec/views,~/Projects/Patrick/spec/lib,~/Projects/Patrick/spec/integration,~/Projects/Patrick/app/*,~/Projects/Patrick/vendor,~/Projects/Patrick/vendor/plugins/*/lib,~/Projects/Patrick/vendor/plugins/*/test,~/Projects/Patrick/vendor/rails/*/lib,~/Projects/Patrick/vendor/rails/*/test,~/.rvm/gems/ruby-1.9.2-p320@global/gems/rubygems-bundler-1.0.3/bin,~/.rvm/gems/ruby-1.9.2-p320@global/gems/rubygems-bundler-1.0.3/lib,/Library/Ruby/Site/1.8,/Library/Ruby/Site/1.8/powerpc-darwi
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!Pl#Statusline(0,0)
setlocal suffixesadd=.rb,.rhtml,.erb,.rxml,.builder,.rjs,.mab,.liquid,.haml,.dryml,.mn,.yml,.csv,.rake,s.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=1
setlocal tags=~/Projects/Patrick/tmp/tags,./tags,tags,~/Projects/Patrick/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 53 - ((7 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
53
normal! 0
lcd ~/Projects/Patrick
wincmd w
argglobal
edit ~/Projects/Patrick/app/controllers/albums_controller.rb
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> f <Plug>RailsSplitFind
nmap <buffer> gf <Plug>RailsTabFind
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nmap <buffer> [f <Plug>RailsAlternate
nmap <buffer> ]f <Plug>RailsRelated
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> <Plug>RailsAlternate :A
nnoremap <buffer> <silent> <Plug>RailsRelated :R
nnoremap <buffer> <silent> <Plug>RailsFind :REfind
nnoremap <buffer> <silent> <Plug>RailsSplitFind :RSfind
nnoremap <buffer> <silent> <Plug>RailsVSplitFind :RVfind
nnoremap <buffer> <silent> <Plug>RailsTabFind :RTfind
cnoremap <buffer> <expr>  fugitive#buffer().rev()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=80
setlocal colorcolumn=80
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,-
setlocal keywordprg=ri\ -T
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,~/Projects/Patrick,~/Projects/Patrick/app,~/Projects/Patrick/app/models,~/Projects/Patrick/app/controllers,~/Projects/Patrick/app/helpers,~/Projects/Patrick/config,~/Projects/Patrick/lib,~/Projects/Patrick/app/views,~/Projects/Patrick/app/views/albums,~/Projects/Patrick/public,~/Projects/Patrick/test,~/Projects/Patrick/test/unit,~/Projects/Patrick/test/functional,~/Projects/Patrick/test/integration,~/Projects/Patrick/spec,~/Projects/Patrick/spec/models,~/Projects/Patrick/spec/controllers,~/Projects/Patrick/spec/helpers,~/Projects/Patrick/spec/views,~/Projects/Patrick/spec/lib,~/Projects/Patrick/spec/integration,~/Projects/Patrick/app/*,~/Projects/Patrick/vendor,~/Projects/Patrick/vendor/plugins/*/lib,~/Projects/Patrick/vendor/plugins/*/test,~/Projects/Patrick/vendor/rails/*/lib,~/Projects/Patrick/vendor/rails/*/test,~/.rvm/gems/ruby-1.9.2-p320@global/gems/rubygems-bundler-1.0.3/bin,~/.rvm/gems/ruby-1.9.2-p320@global/gems/rubygems-bundler-1.0.3/lib,/Library/Ruby/Site/1.8,/Library/Ruby/Site/1.8/powerpc-darwi
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!Pl#Statusline(0,1)
setlocal suffixesadd=.rb,.rhtml,.erb,.rxml,.builder,.rjs,.mab,.liquid,.haml,.dryml,.mn,.yml,.csv,.rake,s.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=1
setlocal tags=~/Projects/Patrick/tmp/tags,./tags,tags,~/Projects/Patrick/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 15 - ((14 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 0
lcd ~/Projects/Patrick
wincmd w
argglobal
edit ~/Projects/Patrick/app/controllers/albums_controller.rb
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> f <Plug>RailsSplitFind
nmap <buffer> gf <Plug>RailsTabFind
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nmap <buffer> [f <Plug>RailsAlternate
nmap <buffer> ]f <Plug>RailsRelated
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> <Plug>RailsAlternate :A
nnoremap <buffer> <silent> <Plug>RailsRelated :R
nnoremap <buffer> <silent> <Plug>RailsFind :REfind
nnoremap <buffer> <silent> <Plug>RailsSplitFind :RSfind
nnoremap <buffer> <silent> <Plug>RailsVSplitFind :RVfind
nnoremap <buffer> <silent> <Plug>RailsTabFind :RTfind
cnoremap <buffer> <expr>  fugitive#buffer().rev()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=80
setlocal colorcolumn=80
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,-
setlocal keywordprg=ri\ -T
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,~/Projects/Patrick,~/Projects/Patrick/app,~/Projects/Patrick/app/models,~/Projects/Patrick/app/controllers,~/Projects/Patrick/app/helpers,~/Projects/Patrick/config,~/Projects/Patrick/lib,~/Projects/Patrick/app/views,~/Projects/Patrick/app/views/albums,~/Projects/Patrick/public,~/Projects/Patrick/test,~/Projects/Patrick/test/unit,~/Projects/Patrick/test/functional,~/Projects/Patrick/test/integration,~/Projects/Patrick/spec,~/Projects/Patrick/spec/models,~/Projects/Patrick/spec/controllers,~/Projects/Patrick/spec/helpers,~/Projects/Patrick/spec/views,~/Projects/Patrick/spec/lib,~/Projects/Patrick/spec/integration,~/Projects/Patrick/app/*,~/Projects/Patrick/vendor,~/Projects/Patrick/vendor/plugins/*/lib,~/Projects/Patrick/vendor/plugins/*/test,~/Projects/Patrick/vendor/rails/*/lib,~/Projects/Patrick/vendor/rails/*/test,~/.rvm/gems/ruby-1.9.2-p320@global/gems/rubygems-bundler-1.0.3/bin,~/.rvm/gems/ruby-1.9.2-p320@global/gems/rubygems-bundler-1.0.3/lib,/Library/Ruby/Site/1.8,/Library/Ruby/Site/1.8/powerpc-darwi
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!Pl#Statusline(0,0)
setlocal suffixesadd=.rb,.rhtml,.erb,.rxml,.builder,.rjs,.mab,.liquid,.haml,.dryml,.mn,.yml,.csv,.rake,s.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=1
setlocal tags=~/Projects/Patrick/tmp/tags,./tags,tags,~/Projects/Patrick/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 17 - ((3 * winheight(0) + 4) / 9)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
normal! 026l
lcd ~/Projects/Patrick
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 19 + 15) / 31)
exe 'vert 1resize ' . ((&columns * 46 + 61) / 123)
exe '2resize ' . ((&lines * 19 + 15) / 31)
exe 'vert 2resize ' . ((&columns * 76 + 61) / 123)
exe '3resize ' . ((&lines * 9 + 15) / 31)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
