echo "(0) Preparing Pipeline..."
echo "(1) Installing npm..."

npm install
npm run build

echo "(2) Launching Application..."
npm run start