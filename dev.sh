git clone https://github.com/basd4g/green-turtle.git

rm -rf green-turtle/assets
mkdir -p green-turtle/assets/article
rsync -b ./ green-turtle/assets/article --exclude 'green-turtle'
ls ./ | grep -v green-turtle | grep -v dev.sh | grep -v new.sh | grep -v README.md | xargs -IXXXX cp -r XXXX green-turtle/assets/article/
cd green-turtle
yarn install
yarn dev