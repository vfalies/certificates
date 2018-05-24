#!/bin/sh
echo "Enter the name of certificate files: "
read name

echo "Regenerating certificate..."
openssl x509 -req -days 365 -in ./ssl/$name.csr -signkey ./ssl/$name.key -out ./ssl/$name.crt