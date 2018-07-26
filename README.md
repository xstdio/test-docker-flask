# Simple Python Flask Dockerized Application#

Build the image using the following command

```bash
$ docker build -t test/docker-flask:latest .
```

Run the Docker container using the command shown below.

```bash
$ docker run -d -p 5000:5000 test/docker-flask:latest 
```

The application will be accessible at http:127.0.0.1:5000 
