if $(docker &>/dev/null)
then
  alias dockerrm="docker ps -a -q | xargs docker rm"  
  alias dockerrmi="docker images -q | xargs docker rmi"  
  alias dockerrmf="docker ps -a -q | docker stop ; docker ps -a -q | xargs docker rm"  
fi

