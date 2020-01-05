envsubst '${GRPC_PATH},${TARGET_HOST}' < /etc/nginx/nginx.conf  > /etc/nginx/nginx.conf

echo "Generating self-signed cert"
mkdir -p /certs
openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 \
-keyout /certs/privateKey.key \
-out /certs/certificate.crt \
-subj "/C=UK/ST=Warwickshire/L=Leamington/O=OrgName/OU=IT Department/CN=example.com"

echo "Starting nginx"

ln -sf /dev/stdout /var/log/nginx/access.log
ln -sf /dev/stderr /var/log/nginx/error.log

echo $GRPC_PATH
echo $TARGET_HOST

nginx -g "daemon off;"