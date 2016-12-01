read -r -p "Are you sure? [y/N] " response
case $response in
    [yY][eE][sS]|[yY]) 

        # cd to project codebase directory
        cd /var/www/html;
        for i in $(git branch | sed 's/^.//');
        do
            if [ $i = 'branch1' ] || [ $i = 'branch2' ] || [ $i = 'branch3' ] || [ $i = 'branch4' ];
                then
                echo -e "\n--------------------------------\nSwitching to branch: $i";
                git checkout $i;

                echo -e "Merging master into $i";

                # Merge master branch with all above specified branches.
                # change master to other branch which you want to merge to above branches.
                git merge master $i;
                echo -e "Merged master into $i\n";
            fi
        done
        osascript -e 'display notification "Completed" with title "GIT MERGED"'

        ;;
    *)
        ;;
esac
