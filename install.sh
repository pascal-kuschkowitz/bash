#!/bin/bash

set -euo pipefail
IFS=$' \n\t' # Not useful yet (Input Field Separator)
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

# Create symlinks

rm -v $HOME/.inputrc || true
ln -vs $DIR/.inputrc $HOME/.inputrc

rm -v $HOME/.bash_colors || true
ln -vs $DIR/.bash_colors $HOME/.bash_colors

rm -v $HOME/.bash_aliases || true
ln -vs $DIR/.bash_aliases $HOME/.bash_aliases

# Append .bashrc to system-bashrc
# only append sourcing when not already done
grep -E 'source .+/\.bashrc$' ~/.bashrc > /dev/null || echo "source $DIR/.bashrc" >> ~/.bashrc
