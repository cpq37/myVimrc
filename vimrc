" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin indent on
" 智能补全 
set completeopt=longest,menu

" 将 pathogen 自身也置于独立目录中，需指定其路径 
"runtime bundle/pathogen/autoload/pathogen.vim
" 运行 pathogen
execute pathogen#infect()

" 配色方案
if has('gui_running')
    set background=light
else
    set background=dark
endif

colorscheme darkblue
"colorscheme  morning
"colorscheme desert
"colorscheme solarized
"colorscheme molokai
"colorscheme phd

" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
"set guioptions-=m
"set guioptions-=T

" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
"set number
" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 高亮显示搜索结果
set hlsearch

" 禁止折行
set nowrap



if has('gui_running')
    set encoding=gb2312
else
    set encoding=utf-8
endif

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

filetype indent on        " 自适应不同语言的智能缩进
set expandtab		  " 将制表符扩展为空格

set guifont=Luxi\ Mono\ 9 " 设置字体，字体名称和字号
set tabstop=4             " 设置tab键的宽度
set shiftwidth=4          " 换行时行间交错使用4个空格
set softtabstop=4	  " 让 vim 把连续数量的空格视为一个制表符
set autoindent            " 自动对齐
set backspace=2           " 设置退格键可用
set smartindent           " 智能对齐方式
set ai!                   " 设置自动缩进
set nu!                   " 显示行号
set showmatch             " 设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
set ruler                 " 在编辑过程中，在右下角显示光标位置的状态行
set incsearch             " 查询时非常方便，如要查找book单词，当输入到/b时，会自动找到
                        " 第一个b开头的单词，当输入到/bo时，会自动找到第一个bo开头的
                        " 单词，依次类推，进行查找时，使用此设置会快速找到答案，当你
                        " 找要匹配的单词时，别忘记回车
set vb t_vb=             " vim进行编辑时，如果命令错误，会发出一个响声，该设置去掉响声

" set TagList Settings
let Tlist_Show_One_File=1 	" 不同时显示多个文件的tag，只显示当前文件
let Tlist_Exit_OnlyWindow=1	" 如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_SingleClick=1
let Tlist_File_Fold_Auto_Close=1
let mapleader=','
"map <silent> <F9> :TlistToggle<cr>	" 使用<F9>键就可以打开/关闭taglist窗口
map <silent><leader>tl :TlistToggle<cr>
set mouse=a 

" set WinMamager Settings 
let g:winManagerWindowLayout='FileExplorer|TagList'
let g:winManagerWidth = 30
let g:defaultExplorer = 0
map <silent> <F9> :WMToggle<cr>
map <c-w><c-f> :FirstExplorerWindow<cr>
map <c-w><c-b> :BottomExplorerWindow<cr>
map <c-w><c-t> :WMToggle<cr>

" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=1
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=3:
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
map <silent><F10> :IndentGuidesToggle<cr>


" set MiniBufExplorer
map <silent> <leader>bl :MBEToggle<cr>
map <silent> <c-t><c-n> :MBEbn<cr>
map <silent> <c-t><c-p> :MBEbp<cr>

set cscopequickfix=s-,c-,d-,i-,t-,e-

nnoremap <silent> <F3> :Grep<cr>

" 基于标签的智能代码补全
let OmniCpp_DefaultMamespaces = ["_GLIBCXX_STD"]
set tags+=/usr/include/c++/4.9.2/stdcpp.tags
set tags+=/usr/include/sys.tags


