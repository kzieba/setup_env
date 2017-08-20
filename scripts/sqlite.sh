#!/usr/bin/env bash

if ! type "sqlite" > /dev/null; then
	sudo apt install sqlite
	sudo apt install php7.0-sqlite3
fi
