#!/bin/sh

case ":${PATH}:" in
    *:"/usr/local/go/bin":*)
        
        ;;
    *)
        # echo "default"
        export PATH="/usr/local/go/bin:$PATH"
        ;;
esac
