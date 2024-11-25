autocmd User lsp_setup call lsp#register_server({
      \ 'name': 'gopls',
      \ 'cmd': ['gopls'],
      \ 'whitelist': ['go'],
      \ })

" Key bindings
nnoremap gd :LspDefinition<CR>
nnoremap gr :LspReferences<CR>
source $VIMRUNTIME/vimrc_example.vim
set nobackup
set undodir=~/vimfiles/undodir

if !isdirectory(&undodir)
  call mkdir(&undodir, 'p', 0700)
endif


if has('mouse')
  if has('gui_running') || (&term =~ 'xterm' && !has('mac'))
    set mouse=a
  else
    set mouse=nvi
  endif
endif

" Install vim-plug if not already installed
call plug#begin('~/.vim/plugged')

" 插件列表将在这里添加

" Go 配置插件
 Plug 'fatih/vim-go'

" 启动 vim-go 时自动安装 Go 相关工具
let g:go_fmt_command = "goimports"  " 使用 goimports 格式化代码
let g:go_auto_type_info = 1  " 显示类型信息
let g:go_mappings = 0  " 禁用默认映射，自己定义


" 可以设置更多 Vim-Go 的配置，如自动补全等
autocmd FileType go nmap <silent> <leader>r :GoRun<CR>
 

Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" tmux和vim移动问题
Plug 'christoomey/vim-tmux-navigator'

" 整块注释
Plug 'tpope/vim-commentary'


" 目录栏美化
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'morhetz/gruvbox'

" 快速跳转
Plug 'easymotion/vim-easymotion'


" 图标
Plug 'ryanoasis/vim-devicons'

" 配色
Plug 'sainnhe/everforest'


Plug 'altercation/vim-colors-solarized'


Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

"
call plug#end()

autocmd User lsp_setup call lsp#register_server({
      \ 'name': 'gopls',
      \ 'cmd': ['gopls'],
      \ 'whitelist': ['go'],
      \ })

" Key bindings
nnoremap gd :LspDefinition<CR>
nnoremap gr :LspReferences<CR>

"
" " Enable syntax highlighting
syntax enable
"
" " Set the Solarized color scheme
set background=dark   " Use 'light' for a light background
colorscheme solarized
"
" " Enable 256-color mode for better Solarized support
set t_Co=256
"
" " Optional: Disable line number highlight i
hi LineNr ctermfg=gray guifg=gray

" Solarized specific tweaks
let g:solarized_termtrans = 1  " Enable transparency for terminal Vim (if supported)
let g:solarized_diffmode = 1   " Enable Solarized-specific diff highlighting
"


" Map Shift+s to EasyMotion's line jump
nmap S <Plug>(easymotion-s2)



let g:WebDevIconsUnicodeDecorateFileNodes = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '  " Adds padding after icons
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

" Set NERDTree custom glyphs
let g:NERDTreeGlyphReadOnly = '🔒'
let g:NERDTreeNodeDelimiter = '•'
let g:NERDTreeDirArrowCollapsible = "▼"
let g:NERDTreeDirArrowExpandable = "▶"
"



" Set Everforest as the default color scheme
let g:everforest_background = 'light'  " 'light'
"lso available
let g:everforest_transparent_background = 1  " Optional transparent background
let g:everforest_contrast = 'medium'  " 'low', 'medium', 'high'
colorscheme everforest

" Optional: Disable italic comments
let g:everforest_disable_italic_comment = 1




" " Set Solarized colorscheme
" set background=dark      " Options: 'dark' or 'light'
" colorscheme solarized
" "
" " Enable 256 colors and true color support
" set t_Co=256
" set termguicolors
" "
" " " Customize Solarized to emphasize blue tones
" highlight Normal guibg=#002b36 guifg=#839496     " Dark blue background with
" " light blue text
" highlight Comment guifg=#268bd2                 " Blue for comments
" highlight Identifier guifg=#268bd2              " Blue for identifiers
" highlight Statement guifg=#268bd2               " Blue for keywords like

" Color scheme
" colorscheme OceanicNext
"
" colorscheme gruvbox
" set background=light
" let g:gruvbox_contrast_light = 'hard' 

set number                " 显示行号
syntax enable             " 启用语法高亮
set tabstop=4             " Tab宽度为4个空格

set expandtab             " 将Tab替换为空格
set autoindent            " 自动缩进
set smartindent           " 智能缩进
set clipboard=unnamed
set nowrap




nnoremap <C-a>h <C-w>h
nnoremap <C-a>j <C-w>j
nnoremap <C-a>k <C-w>k
nnoremap <C-a>l <C-w>l
nnoremap <C-a>w <C-w>w

" Set leader key to space
let mapleader = " "

" " Map <Space>e to toggle NERDTree
nnoremap <Leader>e :NERDTreeToggle<CR>


nnoremap <leader>f :Files<CR>
nnoremap <leader>st :Rg<Space>



" TODO
" 复制到系统粘贴板
" 整块注释掉功能
"
