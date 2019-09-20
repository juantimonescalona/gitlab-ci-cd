# echo input vars
echo "Name from copy: $ARCHETYPE_NAME"
echo "New project name: $PROJECT_NAME"
echo "Group Owner: $GROUP_OWNER"
echo "User IC: $USER_IC"
# $PASSWORD_IC

# clone the template project to local
# git clone ssh://john@example.com/path/to/my-project.git
git clone https://$USER_IC:$PASSWORD_IC@$ARCHETYPE_NAME.git

# rename project name
mv $ARCHETYPE_NAME $PROJECT_NAME

# Sharing a project with a group
# 10 => Guest access
# 20 => Reporter access
# 30 => Developer access
# 40 => Maintainer access
# 50 => Owner access # Only valid for groups
GROUP_OWNER

# push to new origin

