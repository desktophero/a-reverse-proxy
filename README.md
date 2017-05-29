# a-reverse-proxy
little proxy helper

## Environment Variables
Here are examples adding the env variables to the container.

```
"environment": [
  {
    "name": "ENV_X_JFrog_Art_Api",
    "value": "a_really_long_string"
  },
  {
    "name": "ENV_HOST_NAME",
    "value": "the host name of the backend server"
  },
  {
    "name": "ENV_PROXY_PASS",
    "value": "url to do proxy pass"
  },
  {
    "name": "ENV_PROXY_URL",
    "value": "the http(s) url to do proxy pass"
  },
  {
    "name": "ENV_SERVER_NAME",
    "value": "server name for your reverse proxy"
  },
  {
    "name": "ENV_SERVER_ADMIN",
    "value": "admin@example.com"
  }
],
```

## ENTRYPOINT
You can override the entrypoint script by having a script in the `/data` directory called `startup.sh` (a la `/data/startup.sh`)

This can allow additional ENV VARIABLES to be added to the Docker container on startup. Or other things you may need to capture.

An example:
```text
#!/bin/sh
set -e
if [ -f /data/exports.sh ] ; then
  $(cat /data/exports.sh)
fi
/usr/sbin/httpd -DFOREGROUND
```
