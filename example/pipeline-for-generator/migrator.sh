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
rm -rf tmp_clone/
mkdir tmp_clone
cd tmp_clone
echo "git clone $PROTOCOL://$USER_IC:$PASSWORD_IC@$SERVER_HOST/$USER_IC/$ARCHETYPE_NAME.git"
git clone $PROTOCOL://$USER_IC:$PASSWORD_IC@$SERVER_HOST/$USER_IC/$ARCHETYPE_NAME.git

# rename project name
echo "Rename project $ARCHETYPE_NAME to $PROJECT_NAME"
mkdir $PROJECT_NAME
cd $PROJECT_NAME && git init
git config --global user.email "ic_user@example.com"
git config --global user.name "$USER_IC"
cp -r ../$ARCHETYPE_NAME/* ../$PROJECT_NAME && rm -rf ../$ARCHETYPE_NAME/

# Create project for group and push to new origin
#cd $PROJECT_NAME
# git remote add upstream
git remote add origin $PROTOCOL://$USER_IC:$PASSWORD_IC@$SERVER_HOST/$GROUP_OWNER/$PROJECT_NAME
git add .
git commit -a -m "commit inicial from archetype $ARCHETYPE_NAME"
git push --set-upstream origin --all

