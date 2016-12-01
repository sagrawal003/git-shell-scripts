# Git Shell Scripts

## Use Case:
Useful to those who are maintaining multiple branches on multiple servers and merge production branch or any specific
branch to all other branches once something gets updated to production branch or the specific branch.

For example:
If you have a multiple server with its respective branches and you are making master as your base branch to create other
branches and whenever you are merging some code to master, you want all other branches to have latest code from master
like:

* dev_branch(on Dev server) – [To git merge developers code to dev_branch and git update Dev server for developer testing)
* release_branch(on release server) – [ To git merge developers build into release_branch and git update release server for
Tester to test release/build)
* stage_branch(on Stage server) – [To merge passed release that is release_branch into stage_branch and git update on Stage
server for tester and client to test on Stage server(pre-production))
* Production server – master_branch (To merge passed release that is release_branch to master_branch and git update on
Production server for users)
* Any other branches for anything to maintain like next_release_branch etc.
And once release or any code is moved to Production then you want to merge master_branch or master into all other branches
to make all the branches up-to-date with Production code.
So If you have this kind of structure or similar structure where you are maintaining multiple branches then it would be
difficult to manually check out to all branches, merge master code into each branch and push the branch.

These shell scripts are 
- To update multiple branches to local in loop at once. [cp-pull.command]
- To merge once branch to multiple branches. [cp-merge.command]
- To push multiple branches from local to origin in loop at once. [cp-push.command]

## Usage:
These scripts are tested successfully in mac.
Since these are .command file so you just need to double click the file(permission should be executable for the file).

Script also has notification enabled, so once scripts gets completed, it will show mac notification bar with message for
its status as completed so that you do not need to keep watching the terminal to see if its completed or not.
