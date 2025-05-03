" Detect shell scripts by shebang or patterns
autocmd BufRead,BufNewFile * if getline(1) =~ '^#!/.*\b\(bash\|sh\|zsh\)\b' | setfiletype sh | endif

" Optionally, detect files with specific names or patterns
autocmd BufRead,BufNewFile script,myscript,*.bashrc,*.profile setfiletype sh
