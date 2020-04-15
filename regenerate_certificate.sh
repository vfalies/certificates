#!/bin/sh
echo "Enter the name of certificate files: "
read name

echo "Regenerating certificate..."
openssl x509 -req -days 365 -in /app/ssl/$name.csr -signkey /app/ssl/$name.key -out /app/ssl/$name.crt