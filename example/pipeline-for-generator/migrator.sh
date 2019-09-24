# echo input vars
echo "Name archetype from copy: $ARCHETYPE_NAME"
echo "New project name: $PROJECT_NAME"
echo "Group Owner: $GROUP_OWNER"
echo "User IC: $USER_IC" #ic_user (en variable)
echo "Server host: $SERVER_HOST" # (en variable)
echo "HTTP/HTTPS Protocol: $PROTOCOL" #http (en variabe)
# $PASSWORD_IC (en variable)

# clone the template project to local
cd ..
echo "git clone from $SERVER_HOST the archetype project $ARCHETYPE_NAME of user $USER_IC"
echo "git clone $PROTOCOL://$USER_IC:$PASSWORD_IC@$SERVER_HOST/$USER_IC/$ARCHETYPE_NAME.git"
# git clone http://ic_user:*****@192.168.1.53:9080/ic_user/template1.git
git clone $PROTOCOL://$USER_IC:$PASSWORD_IC@$SERVER_HOST/$USER_IC/$ARCHETYPE_NAME.git

# rename project name
echo "Rename project $ARCHETYPE_NAME to $PROJECT_NAME"
echo "PWD path is $PWD"
mv $ARCHETYPE_NAME $PROJECT_NAME

# Create project for group and push to new origin
cd $PROJECT_NAME
# git push --set-upstream https://gitlab.example.com/namespace/nonexistent-project.git master
git push --set-upstream $SERVER_URL/$GROUP_OWNER/$PROJECT_NAME.git master
