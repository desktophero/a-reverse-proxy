# a-reverse-proxy
little proxy helper

## Environment Variables
Here are examples adding the env variables to the container.

```
"environment": [
  {
    "name": "ENV-X-JFrog-Art-Api",
    "value": "a-really-long-string"
  },
  {
    "name": "ENV-HOST-NAME",
    "value": "the host name of the backend server"
  },
  {
    "name": "ENV-PROXY-PASS",
    "value": "url to do proxy pass"
  },
  {
    "name": "ENV-PROXY-URL",
    "value": "the http(s) url to do proxy pass"
  },
  {
    "name": "ENV-SERVER-NAME",
    "value": "server name for your reverse proxy"
  }
],
```
