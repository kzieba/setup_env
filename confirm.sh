#!/usr/bin/env bash

read -r -p "Are you sure? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo 'now doing sth'
        ;;
    *)
        echo 'now not doing anything'
        ;;
esac
