#!/bin/bash
# THIS IS RAFA'S PERSONAL COMMIT FILE.
REPO=/opt/wrccdc.org/
SOURCEREPO=/opt/Website-Hugo-Source-Code

# Build the site.
echo "-------------------------------"
echo -e "\033[0;32mCompiling site...\033[0m"
echo "-------------------------------"
hugo -t ananke # if using a theme, replace with `hugo -t <YOURTHEME>` # this creates the "public" folder which is the final website.

cd public && cp -a . $REPO

# cp -r public [compiled hugo website.io repo location]
# Replace the location above to where ever you locally cloned the second repo to.
# This is basically where the finished website lives and gets finally pushed up to github.

echo "-------------------------------"
echo "Compiled Site Location: $REPO "
echo -e "\033[0;32mDONE... Don't forget to Commit and Push!\033[0m"
cd $REPO
git add *
git commit
git push origin master
#open -a Github\ Desktop
echo "-------------------------------"

echo "-------------------------------"
echo "Pushing latest source code up to Github."
cd $SOURCEREPO
git add *
git commit -m "Pushing latest changes."
git push origin master
echo "-------------------------------"
