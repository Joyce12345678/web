@echo off
cd /d %~dp0
if exist .git rd /s /q .git
set "GIT_SSH_COMMAND=ssh -i C:/Users/joyc5/.ssh/id_ed25519_nopass -o IdentitiesOnly=yes"
git init
git remote add origin git@github.com:Joyce12345678/web.git
git checkout -B gh-pages
git add .
git commit -m "Deploy current build"
git push -f origin gh-pages
rd /s /q .git
echo DEPLOY_DONE