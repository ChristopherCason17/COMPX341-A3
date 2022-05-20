echo "(0) Preparing Pipeline..."
echo "(1) Installing npm..."

npm install
npm run build

echo "(2) Committing Files to Version Control..."
git init
git add .
if sam build; then
git commit -m "Committing Files"
git push origin master
echo "(2) Commit Successful!"

else
  echo "(2) Commit Failure. Build error"
  exit
fi
echo "(3) Launching Application..."
npm run start