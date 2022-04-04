# docker
    sudo apt-get remove docker docker-engine docker.io containerd runc
    apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
    
    curl -fsSL https://download.docker.com/linux/debian/gpg |  gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
    echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" |  tee /etc/apt/sources.list.d/docker.list > /dev/null
  
# 
    docker images ls
    unalias docker
    docker pull centos
    docker container ls --all
    
    docker run -id --name=centos centos
    docker exec -it centos /bin/bash
