" vimwiki configurations
  let g:vimwiki_list = [{'path': '~/vimwiki/',
                        \ 'syntax': 'markdown', 'ext': '.md'}]

  let g:vimwiki_auto_chdir = 1
  let g:vimwiki_conceallevel = 0

  augroup vimwiki
    autocmd BufWritePost ~/vimwiki/* !git add "%";git commit -m "Auto commit of %:t." "%"
  augroup END


