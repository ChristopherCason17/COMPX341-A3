echo "(0) Preparing Pipeline..."
echo "(1) Installing npm..."

npm install
npm run build

echo "(2) Committing Files to Version Control..."
git init
git add .
git commit -m "Committing Files"
git push origin master

echo "(3) Launching Application..."
npm run start