#!/bin/bash
###
###
###
###   Purpose:   Create gh-pages branch
###   started:   2018-04-12 (pvr)
###
### ############################################## ###


PARDIR=/Users/pvr/Data/Projects/Github/charlotte-ngs/RStudioServerTerminal
BRANCH=gh-pages
cd $PARDIR
mkdir $BRANCH
cd $BRANCH
pwd


### Step 2
#Clone the master branch into the newly created directory

PROJ=RStudioServerTerminal
GITHUBURL="https://github.com/charlotte-ngs/${PROJ}.git"
echo $GITHUBURL
git clone $GITHUBURL

### Step 3
#Change into the directory that has been cloned and change from master branch to new branch

cd $PROJ
git checkout -b $BRANCH
# check
git branch

### Step 4
#Remove master branch from current working dir

MASTER=master
git branch -d $MASTER
# check
git branch

### Step 5
#Remove all unwanted material from working directory

git rm -rf *

### Step 6
#Committing and pushing the current material

git add .
git commit -m"First commit of new branch $BRANCH"
git push origin $BRANCH
#git status

