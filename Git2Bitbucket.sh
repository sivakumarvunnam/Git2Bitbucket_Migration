#!/usr/bin/env bash
#checkout the source code
REPO_NAME=$1
git clone http://svunnam@XXXXXXXXXXXXXX:7990/scm/aka/${REPO_NAME}.git
cd ${REPO_NAME}
#Whenever you clone a repo, you do not clone all of its branches by default.
#If you wish to do so, use the following script:
for branch in `git branch -a | grep remotes | grep -v HEAD | grep -v master `; do
   git branch --track ${branch#remotes/origin/} $branch
done
# add remote
git remote set-url origin https:svunn00//git.XXXXXXXXXXXXXXX.com/scm/mk/${REPO_NAME}.git
git push -u origin --all
git push origin --tags
