set -e

npm run build

cd dist

echo > .nojekyll

git init
git checkout -b main
git add -A
git commit -m 'deploy'

git push -f git@github.com:lucasalbuquerque57/PC_Maker_View.git main:gh-pages

cd -