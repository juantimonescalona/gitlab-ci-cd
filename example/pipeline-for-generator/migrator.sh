# echo input vars
echo "Name archetype from copy: $ARCHETYPE_NAME"
echo "New project name: $PROJECT_NAME"
echo "Group Owner: $GROUP_OWNER"
echo "User IC: $USER_IC" #ic_user (en variable)
echo "Server host: $SERVER_HOST"
# $PASSWORD_IC (en variable)
# $SERVER_URL (en variable)

# clone the template project to local
# git clone ssh://john@example.com/path/to/my-project.git
git clone https://$USER_IC:$PASSWORD_IC@$ARCHETYPE_NAME.git

# rename project name
mv $ARCHETYPE_NAME $PROJECT_NAME

# Sharing a project with a group
# https://docs.gitlab.com/ee/api/members.html
# 10 => Guest access
# 20 => Reporter access
# 30 => Developer access
# 40 => Maintainer access
# 50 => Owner access # Only valid for groups

# Create project for group and push to new origin
cd $PROJECT_NAE
# git push --set-upstream https://gitlab.example.com/namespace/nonexistent-project.git master
git push --set-upstream $SERVER_URL/$GROUP_OWNER/$PROJECT_NAME.git master

