# Certificates

Image to generate and regenerate SSL certificates

## Usage

### SSL certificate creation

```
docker run -ti --rm -v $(pwd):/app/ssl vfac/certificates /app/certificate.sh
```

Follow all instructions at the screen.
To obtain valid certificate, two questions can not be empty:

1.

```
Enter the name of certificate files:
```

This instruction names the output files.

2.

```
Common Name (eg, fully qualified host name) []:
```

The field must contain the domain used for this certificate.

### SSL certification regeneration

```
docker run -ti --rm -v $(pwd):/app/ssl vfac/certificates /app/regenerate_certificate.sh
```

The SSL certificate to regenerate must be in the local current directory.
The question ask by script is the name of this certificate file (without extension)