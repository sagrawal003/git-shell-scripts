# cd to project codebase directory
cd /var/www/html;

for i in $(git branch | sed 's/^.//');
do
    if [ $i = 'branch1' ] || [ $i = 'branch2' ] || [ $i = 'branch3' ] || [ $i = 'branch4' ];
        then

        echo -e "\n--------------------------------\nSwitching to branch: $i";
        git checkout $i;

        echo -e "Pulling branch: $i";
        git pull origin $i;
        echo -e "Pulled branch: $i";

        echo -e "Pushing branch: $i";
        git push origin $i;
        echo -e "\nPushed branch: $i\n";
    fi
done


read -r -p "Are you sure? [y/N] " response
case $response in
    [yY][eE][sS]|[yY]) 

        cd /var/www/html;
        for i in $(git branch | sed 's/^.//');
        do
            if [ $i = 'branch1' ] || [ $i = 'branch2' ] || [ $i = 'branch3' ] || [ $i = 'branch4' ];
                then
                echo -e "\n--------------------------------\nSwitching to branch: $i";
                git checkout $i;

                echo -e "Pulling branch: $i";
                git pull origin $i;
                echo -e "Pulled branch: $i";

                echo -e "Pushing branch: $i";
                git push origin $i;
                echo -e "\nPushed branch: $i\n";
            fi
        done
        osascript -e 'display notification "Completed" with title "GIT PUSH"'

        ;;
    *)
        ;;
esac
