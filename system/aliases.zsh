# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -hF --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color --group-directories-first"
  alias la='gls -A --color'
else
  alias ls='ls -hF --color'  # add colors for filetype recognition
  alias l="ls -lAh --color"
  alias ll="ls -l --color --group-directories-first "
  alias la='ls -A'          # show hidden files
fi

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
# -> Prevents accidentally clobbering files.
alias mkdir='mkdir -p'
