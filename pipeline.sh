echo "(0) Preparing Pipeline..."
echo "(1) Installing npm..."

npm install
npm run build

echo "(2) Committing Files to Version Control..."
git init
git add .
git commit -m "Committing Files"
if build; then
git remote add origin https://github.com/ChristopherCason17/COMPX341-A3.git
git push origin master

echo "Commit Successful!"
else
  echo "Commit Failed!"
  fi

echo "(3) Launching Application..."
npm run start