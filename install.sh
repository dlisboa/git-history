#!/bin/bash

for cmd in git-history-begin git-history-up git-history-down \
  git-history-cache git-history-root; do
  cp $cmd $BIN/$cmd
  chmod +x $BIN/$cmd
done
