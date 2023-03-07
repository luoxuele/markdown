# !/bin/bash

path="/usr/lib/code-server/lib/vscode/bin/remote-cli:/root/.cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/go-1.19/bin:/root/go/bin:/root/nodejs/bin"

# echo $path
case $path in
    *"/bin:/usr/lib/go-1.19/bin"*)
        echo "go"
        ;;
    *)
        echo "default"
        ;;

esac

