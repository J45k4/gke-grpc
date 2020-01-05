mkdir certs
openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 ^
-keyout certs/privateKey.key ^
-out certs/certificate.crt ^
-subj "/C=UK/ST=Warwickshire/L=Leamington/O=OrgName/OU=IT Department/CN=localhost"

openssl req -x509 -new -nodes -key certs/privateKey.key -sha256 -days 1024 -out certs/root.crt