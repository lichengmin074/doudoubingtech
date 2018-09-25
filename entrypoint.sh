cd /v2ray
wget -O v2ray.zip http://github.com/v2ray/v2ray-core/releases/download/v$VER/v2ray-linux-64.zip
unzip v2ray.zip 
mv /v2ray/v2ray-v$VER-linux-64/v2ray .
mv /v2ray/v2ray-v$VER-linux-64/v2ctl .
mv /v2ray/v2ray-v$VER-linux-64/geoip.dat .
mv /v2ray/v2ray-v$VER-linux-64/geosite.dat .

chmod +x v2ray v2ctl
echo -e "$CONFIG_JSON" > config.json
./v2ray
