# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -hF --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
else	
  alias ls='ls -hF --color'  # add colors for filetype recognition
  alias l="ls -lAh --color"
  alias ll="ls -l --group-directories-first"
  alias la='ls -Al'          # show hidden files
  alias lx='ls -lXB'         # sort by extension
  alias lk='ls -lSr'         # sort by size, biggest last
  alias lc='ls -ltcr'        # sort by and show change time, most recent last
  alias lu='ls -ltur'        # sort by and show access time, most recent last
  alias lt='ls -ltr'         # sort by date, most recent last
  alias lm='ls -al |more'    # pipe through 'more'
  alias lr='ls -lR'          # recursive ls
  alias tree='tree -Csu'     # nice alternative to 'recursive ls'
fi


alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
# -> Prevents accidentally clobbering files.
alias mkdir='mkdir -p'
