# This is my personal website: [quentin.legraverend.fr](https://quentin.legraverend.fr)

## HTML / CSS
This is homemade and since I'm not really a developer this might be a bit dirty. This is currently not responsive.

## Go (web server)
I didn't want to use Apache or Nginx web server. This one is only few lines of golang acting like a simple file server.
I would like to serve a personalized 404 page but this is apparently not so easy to do using the FileSever function that I'm using...

## Dockerfile
I used golang:alpine as a base for the build part. Finale image is base on `scratch` and weight only 5MB which is what I was looking for.

## CI/CD
A commit on github triggers a webhook on hub.docker.com. Then I only have to `update` the service on Portainer. I could have used a webhook from hud.docker.com to portainer too but I would rather keep it as a manual trigger for now.
