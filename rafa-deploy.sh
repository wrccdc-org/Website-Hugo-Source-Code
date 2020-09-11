#!/bin/bash
# THIS IS RAFA'S PERSONAL COMMIT FILE.
REPO=~/Documents/GitHub/wrccdc.github.io/

# Build the site.
echo "-------------------------------"
echo -e "\033[0;32mCompiling site...\033[0m"
echo "-------------------------------"
hugo -t ananke # if using a theme, replace with `hugo -t <YOURTHEME>` # this creates the "public" folder which is the final website.

cp -r public/ $REPO

# cp -r public [compiled hugo website.io repo location]
# Replace the location above to where ever you locally cloned the second repo to.
# This is basically where the finished website lives and gets finally pushed up to github.

echo "-------------------------------"
echo "Compiled Site Location: $REPO "
echo -e "\033[0;32mDONE... Don't forget to Commit and Push!\033[0m"
open -a Github\ Desktop
echo "-------------------------------"
