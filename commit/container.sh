apt update;
apt install -y python3;
mkdir -p /var/www/html;
cd /var/www/html;
echo "Hello, <strong>Docker</strong>" > index.html;
python3 -u -m http.server;