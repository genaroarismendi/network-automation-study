#### get help for git [_command_]

git help [_command_]

#### clone remote repository [_https://url.git_] to working directory [_folder_]

git clone [_https://url.git_] [_folder_]

#### initialize git

git init .

#### identify myself

git config --global user.email "genaroarismendi@gmail.com"
git config --global user.name "g-on-ubuntu"

#### check git status

git status

#### stage/track [_file_]

git add [_file_]

#### stage/track all files in folder

git add .

#### discard changes in working directory

git restore -- [_file_]

#### check log of commits

git log

#### roll back file to a previous version with [_hash(first 7 digits)_] found using git log

git reset [_hash(first 7 digits)_]

#### discard changes in staging directory

git reset HEAD

#### commit changes to .git repository

git commit -am "[_comments_]"

#### discard changes in working directory

git checkout -- . # all files 

git checkout -- [_file_] # just [_file_]

#### branching to a new wd called [_NEWBRANCH_]

git checkout -b [_NEWBRANCH_]

#### visualize branches: git log in a concise way, showing branches, commit ids, commit messages and HEAD location

git log --all --decorate --oneline --graph

#### create shortcut for "log --all --decorate --oneline --graph" as "hist"

git config --global alias.hist "log --all --decorate --oneline --graph"

#### use shortcut for "log --all --decorate --oneline --graph" as "hist"

git hist

#### check on which branch we're working

git branch

#### express commit

git commit -am "added decimal and $"

#### print end of [_FILE_]

tail [_FILE_]

#### move to branch called [_MASTER_]

git checkout [_MASTER_]

#### once the changes has been commited or discarded, the [_experimental-branch_] can be deleted

git branch -d [_experimental-branch_]

#### display differences between original and staged file

git diff

#### compare 2 files in bash

diff -u database.py database2.py

#### pushes the updated main branch to GitHub

git push origin main

#### merge (pull) remote repository changes to working directory

git pull origin main

git pull origin main -p # in case you want to prune remote-tracking branches no longer on remote

#### merge (fetch) remote repository changes [_https://url.git_] to local repository [_folder_]

git fetch [_https://url.git_]

#### another way to pull

git fetch [_https://url.git_]

then

git merge ?

#### 

git remote add origin git@github.com:genaroarismendi/globomantics_crm.git
git branch -M main
git push -u origin main

Generate ssh key inside .ssh/ folder. It will ask for path and passphrase where you can just press enter and proceed.

cd ~/.ssh
ssh-keygen
Copy the key You can view your key using

cat ~/.ssh/id_rsa.pub
 
incase you hadnt specified a different path then this will be the default path

Add this key to your github account

#### suggestion from chatgpt:

######## Organize Your Work in Branches

############ on macosx 

1) Create branch: for every new concept or task you work on, create a new branch. This approach helps you focus on one thing at a time and keeps your main branch clean.

git checkout -b testing/branch-for-git-sh

2) After completing the task, you can merge this branch back into the main branch:

git checkout main
git merge testing/branch-for-git-sh
git branch -d testing/branch-for-git-sh  # Deletes the branch locally
git push origin --delete testing/branch-for-git-sh  # Deletes the branch on GitHub
git push origin main  # Pushes the updated main branch to GitHub

############ on ubuntu 

1) Create branch: for every new concept or task you work on, create a new branch. This approach helps you focus on one thing at a time and keeps your main branch clean.

git checkout -b testing/branch-for-notes

2) After completing the task, you can merge this branch back into the main branch:

git checkout main
git merge testing/branch-for-notes
git branch -d testing/branch-for-notes  # Deletes the branch locally
git push origin --delete testing/branch-for-notes  # Deletes the branch on GitHub
git push origin main  # Pushes the updated main branch to GitHub
