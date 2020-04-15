#!/bin/sh
echo "Enter the name of certificate files: "
read name

echo "Generating an SSL private key to sign your certificate..."
openssl genrsa -des3 -out $name.key 1024

echo "Generating a Certificate Signing Request..."
openssl req -new -key $name.key -out $name.csr

echo "Removing passphrase from key (for nginx)..."
cp $name.key $name.key.org
openssl rsa -in $name.key.org -out $name.key
rm $name.key.org

echo "Generating certificate..."
openssl x509 -req -days 365 -in $name.csr -signkey $name.key -out $name.crt

echo "Moving certificate ($name.crt) to ssl/"
mv $name.crt /app/ssl/.

echo "Moving key ($name.key) to ssl/"
mv $name.key /app/ssl/.

echo "Moving csr ($name.csr) to ssl/"
mv $name.csr /app/ssl/.