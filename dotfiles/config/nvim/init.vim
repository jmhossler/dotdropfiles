" Vim-Plug start
call plug#begin()

Plug 'micha/vim-colors-solarized'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-syntastic/syntastic'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'christoomey/vim-tmux-navigator'

" Vim-Plug end
call plug#end()

au BufNewFile,BufRead *.sux set filetype=javascript

:nmap \l :setlocal number!<CR>
:nmap \o :set paste!<CR>


if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal" || $TERM == "konsole"
	set t_CO=256
endif

:nmap \e :NERDTreeToggle<CR>
:nmap \T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
:nmap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
:nmap \M :set noexpandtab tabstop=8 softstabstop=4 shiftwidth=4<CR>
:nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>
:nmap \w :setlocal wrap!<CR>:setlocal wrap?<CR>

:set background=light

:set expandtab
:set tabstop=2
:set shiftwidth=2
:set softtabstop=2
:set number
:set relativenumber
:set nocompatible

:set splitbelow
:set splitright

:set mouse=a

:set colorcolumn=80

:imap jj <Esc>

function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction

nnoremap <silent> <Leader>rts   :call TrimWhiteSpace()<CR>

autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd BufWritePre     * :call TrimWhiteSpace()
