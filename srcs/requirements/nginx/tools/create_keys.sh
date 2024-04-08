mkdir -p /etc/nginx/ssl
echo "-----BEGIN CERTIFICATE-----" > /etc/nginx/ssl/jsantann.42.fr.crt;
echo ${SSLCRT} >> /etc/nginx/ssl/jsantann.42.fr.crt;
echo -n "-----END CERTIFICATE-----" >> /etc/nginx/ssl/jsantann.42.fr.crt;
echo "-----BEGIN PRIVATE KEY-----" > /etc/nginx/ssl/jsantann.42.fr.key;
echo ${SSLKEY} >> /etc/nginx/ssl/jsantann.42.fr.key;
echo -n "-----END PRIVATE KEY-----" >> /etc/nginx/ssl/jsantann.42.fr.key;
