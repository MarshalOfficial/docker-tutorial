1- to build the docker image: docker build .
2- to run an instance from a docker image:  run -p 8585:8585 -it 205 
* Note: 205 is the first of targeted docker image
* Note: -p used for mapping your client port to docker container listening port

3- to push your created image to docker hub:
** first create a public or private repo in the DockerHub and fill the name and tag section on the site
** then tag your local docker image with that specific name and tag, for example:
- docker image tag 205 marshalofficial/docker-tutorial:latest
- check that it is updated right now: with docker images command
- docker image push marshalofficial/docker-tutorial:latest
- Note: you must authenticate to docker hub before, with docker login command
