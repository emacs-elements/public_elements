# How One Can Properly Install and Setup Neovim in Windows 11

## Download the 64bit version

https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-win64.zip

## Extract it to C:\

C:\nvim-win64\

## Add that PATH to System Variables/Path

C:\nvim-win64\bin

## Verify your installation in PowerShell

`nvim --version`

## Create a Neovim configuration file

This used to be a `.vim file`. Now it is now called `init.vim`. 

Create a nvim directory if it is not already created at  `C:\Users\woofi\AppData\Local` 

Where "woofi" is "YourUserName"

So you have `C:\Users\woofi\AppData\Local\nvim`

## Inside this nvim folder, create a new file named `init.vim`

## Install vim-plug

```
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
ni $env:LOCALAPPDATA\nvim\autoload\plug.vim -Force
```

## Edit your init.vim file with a basic configurations

Run this in PowerShell:

`nvim C:\Users\woofi\AppData\Local\nvim\init.vim`

Add this code:

```
call plug#begin('C:\Users\woofi\AppData\Local\nvim\plugged')

" Place your plugin declarations here. For example:
" Plug 'author/pluginname'
Plug 'rebelot/kanagawa.nvim'

call plug#end()

colorscheme kanagawa
```

This code adds the ability to add plugins + a popular theme

# Exit and restart neovim

Run `:PlugInstall`

# Make further configurations

## Automatically center the last line of any file in the window when you first open it or when you switch to its buffer

```
augroup EndOfFile
  autocmd!
  autocmd BufWinEnter * normal Gzz
augroup END
```

## Create some PowerShell Aliases to make things easier

### Alias to open your Neovim config file

```
function Open-InitWithNVim {
    & 'nvim' 'c:/Users/woofi/AppData/Local/nvim/init.vim'
}

Set-Alias -Name init -Value Open-InitWithNVim
```

Now you can just type "init" to edit your config file.

### Alias to quickly open files in PowerShell

```
function Open-With-NVim { param([string]$file) nvim $file }

Set-Alias -Name vi -Value Open-With-NVim
```

Open any file in terminal with "vi"

### More plugins

```
Plug 'rebelot/kanagawa.nvim'
Plug 'preservim/nerdtree'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'stephpy/vim-yaml'
Plug 'PProvost/vim-ps1'
Plug 'jceb/vim-orgmode'
```

### Additional Configurations

```
" Optionally set a font of your choice
set guifont=JetBrains\ Mono:h13
" Show line numbers
set number
```

```
" Run python scripts easily
autocmd FileType python nnoremap <buffer> <F5> :!python %<CR>
```

```
" Prevent folding of headers Markdown
let g:vim_markdown_folding_disabled = 1
```

```
" Set a leader key
let mapleader = ","
```

```
" Open my config file easily from within Neovim
nnoremap <leader>e :edit $MYVIMRC<CR>
```

```
" Remove highlighting after a search
nnoremap <leader>h :noh<CR>

" Open terminal
nnoremap <leader>t :term<CR>
```

```
" Turn spelling on or off
nnoremap <leader>s :setlocal spell!<CR>
```

```
" Scroll up and down
nnoremap <C-Down> <C-E>
nnoremap <C-Up> <C-Y>
```

```
" Tweak useage for yaml files
autocmd Filetype yaml set cursorcolumn
autocmd Filetype yml set cursorcolumn
```

```
" Go to last saved place
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
```

```
" Compile and run C scripts easily

function! CompileOrRun()
  let l:filename = expand('%')
  let l:extension = expand('%:e')
  let l:basename = expand('%:r')

  if l:extension == 'c'
    exec '!gcc ' . l:filename . ' -o ' . l:basename . '.exe && ' . l:basename . '.exe'
  elseif l:extension == 'ps1'
    exec ':term cmd.exe /c "C:\\Program Files\\PowerShell\\7\\pwsh.exe" -NoProfile -File ' . l:filename
  else
    echo "Unsupported file type: " . l:extension
  endif
endfunction

" Map F5 to the CompileOrRun function
nnoremap <F5> :call CompileOrRun()<CR>
```

```
" Terminal tweaks
" Automatically enter Insert mode to start typing commands immediately without needing to switch modes manually
augroup terminal_settings
    autocmd!
    autocmd TermOpen * startinsert
augroup END
```

```
" Configure Neovim to use PowerShell Core for all shell-related operations
set shell=pwsh
set shellcmdflag=-command
set shellquote=\"
set shellxquote=
```

```
" Find stuff using Telescope
nnoremap <Leader>f :Telescope find_files<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
```

