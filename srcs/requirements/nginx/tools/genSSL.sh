#import ssl certificate
#mkdir -p /etc/ssl/private
#mkdir -p /etc/ssl/certs
echo "-----BEGIN CERTIFICATE-----" > /etc/ssl/certs/certified.crt
echo $SSIGNEDCRT >> /etc/ssl/certs/certified.crt
echo -n "-----END CERTIFICATE-----" >> /etc/ssl/certs/certified.crt

echo "-----BEGIN PRIVATE KEY-----" > /etc/ssl/private/private.key
echo $SSIGNEDKEY >> /etc/ssl/private/private.key
echo -n "-----END PRIVATE KEY-----" >> /etc/ssl/private/private.key