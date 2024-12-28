#!/usr/bin/env sh

set -e

npm run build

cd dist

git init
git add -A
git commit -m 'Nuevo despliegue'
git push -f git@github.com-pruebas:329439E932/ci-cd.git master:gh-pages

cd -