#!/bin/bash
export DEST="./.exvim.core"
export TOOLS="/home/ylf/.vim/tools/"
export TMP="${DEST}/_inherits"
export TARGET="${DEST}/inherits"
sh ${TOOLS}/shell/bash/update-inherits.sh
