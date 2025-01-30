" Plug-In 시작 (플러그인 설치 경로)
call plug#begin('~/.vim/plugged')

" 설치하고 싶은 플러그인 (예, NERDTree)
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/tagbar'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'folke/tokyonight.nvim'
" 플러그인 시스템 초기화
call plug#end()

set cindent "C언어 자동 indent
set breakindent "줄 바꿈 시 들여쓰기 유지

set expandtab "tab을 공백(space)으로 자동 전환
set tabstop=4 "tab의 크기
set shiftwidth=4 "indent의크기
set softtabstop=4 "tab을 4개의 space로 전환


set hlsearch "검색어 하이라이팅
set smartcase "찾을 때 커서를 옮김
set smarttab "tab을 사용할 때 현재 indent에 맞게"

set nu "줄번호

set paste "붙여넣기 계단현상 없애기"
set backspace=indent,eol,start "backspace 키로 줄의 처음까지 삭제

set title "제목을 표시 ,상단에 파일 이름을 표시
set ruler "하단에 현재 커서의 위치를 표시
set showmatch "일치하는 괄호를 보여줌"
set incsearch "검색어를 입력할 때마다 일치하는 문자열을 표시

set autowrite "자동 저장"
set autoread "파일이 변경되었을 때 자동으로 읽기"

set wildmenu "명령어 완성시 탭으로 선택 가능

set laststatus=2 "상태바 표시 항상 표시
set bs=2 "백스페이스 키로 삭제 가능
set mouse=a
set fileencodings=utf8,euc-krAAA

if $TERM_PROGRAM == "iTerm.app"
    set termguicolors
	let g:tokyonight_style = "storm" " night, storm, day 중 선택
    colorscheme tokyonight
elseif $TERM_PROGRAM == "Apple_Terminal"
    set notermguicolors
    colorscheme desert
else
    set termguicolors
	let g:tokyonight_style = "storm" " night, storm, day 중 선택
    colorscheme tokyonight
endif

"----------------------------------------------------------------------"
" ctrlp.vim 설정(파일 탐색 속도 향상)
"----------------------------------------------------------------------"
set wildignore+=*/tmp/*,*.so,*.a,*.swp,*.zip,*.obj  " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  		" Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|public$\|log$\|tmp$\|vendor$',
  \ 'file': '\v\.(exe|so|dll|a)$',
  \ 'link': 'some_bad_symbolic_links'
\ }
let g:ctrlp_max_files = 10000
let g:ctrlp_max_depth = 30
let g:ctrlp_follow_symlinks = 1
"let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
"let g:ctrlp_use_readdir = 0
let g:ctrlp_root_markers = ['ctrlp-marker']
let g:ctrlp_show_hidden = 1

" <c-f>, <c-b> 모드 변환(MRU(Most Recently Used)내 검색, file 전체 검색, buffers내 검색)
" <c-d> path내 검색어가 포함되어 검색 또는 오직 파일내 검색어만 포함 검색
" <c-r> 정규 표현식 모드 전환(검색어와 완전히 일치한 파일만 보여 줌)
" <c-j>, <c-k> 검색결과내 커서 위아래 이동
" <c-t>, <c-v>, <c-x> 파일을 새로운 tab으로 열거나 창을 분활하여 파일을 염.
" <c-n>, <n-p> 검색 history의 next/previous 문자열 선택
" <c-z>, <c-o> 검색된 결과물에 <c-z>로 마크를 하고 <c-o>로 오픈(멀티마크 가능)
" <c-y> 검색입력어로 된 파일을 만든다. 파일 위치는 검색 폴더의 최상위 위치
" :help ctrlp-mappings 키 맵핑에 관한 설명

"-----------------------------------------------------------------------"
" NERDTree 환경 설정
"-----------------------------------------------------------------------"
" NERDTree가 자동으로 열리도록 설정
autocmd vimenter * NERDTree

" NERDTree를 열 때 다른 창으로 열리도록 설정
"let NERDTreeQuitOnOpen=1

" Hidden file 보여주는 설정
let NERDTreeShowHidden=1

let g:NERDTreeGitStatusIndicatorMapCustom = {
	\ 'Modified'  :'✹',
	\ 'Staged'    :'✚',
	\ 'Untracked' :'✭',
	\ 'Renamed'   :'➜',
	\ 'Unmerged'  :'═',
	\ 'Deleted'   :'✖',
	\ 'Dirty'     :'✗',
	\ 'Ignored'   :'☒',
	\ 'Clean'     :'✔︎',
	\ 'Unknown'   :'?',
\ }

let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeDirArrowExpandable = ''
let g:DevIconsDefaultFolderOpenSymbol = ''
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''

"let g:NERDTreeDirArrowCollapsible = ''
"let g:NERDTreeDirArrowExpandable = ''

" you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error

let g:NERDTreeExtensionHighlightColor['c'] = s:lightGreen " sets the color of css files to blue
let g:NERDTreeExtensionHighlightColor['h'] = s:brown " sets the color of css files to blue
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
