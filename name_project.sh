if [ $# -ne 2 ]
  then
    echo "Usage: sh name_project.sh project_slug \"Full project name\""
    exit 1
fi

PROJECT_SLUG=$1
PROJECT_NAME=$2
mv django_server/PROJECT_SLUG django_server/$PROJECT_SLUG
find . -type d \( -path ./.git -o -path ./.idea \) -prune -o -exec sed -i '' -e "s/\$PROJECT_SLUG/$PROJECT_SLUG/g" {} \;
find . -type d \( -path ./.git -o -path ./.idea \) -prune -o -exec sed -i '' -e "s/\$PROJECT_NAME/$PROJECT_NAME/g" {} \;
mv README_PROJECT.md README.md
rm name_project.sh
