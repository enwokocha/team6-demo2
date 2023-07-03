#!/bin/bash
#demo on how to standardize github contribution
ticketnumber=$1
read -p "Please enter your repoURL: " repoURL
read -p "Please enter your remote repo: " repo
git clone $repoURL
cd $repo
git checkout -b $ticketnumber
touch file1
git add .
git commit -m "code change by $USER from $ticketnumber"
git push origin $ticketnumber
echo "end of job"