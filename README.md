tomcat8-probe
=============

Docker image for Tomcat 8 (from [Docker Hub](https://hub.docker.com/_/tomcat)) with probe app already in place.

# Prebuilt image from docker hub

    docker pull fnetobr/tomcat8-probe

# Make your own image

#### Clone the image from github:

    git clone --depth=1 https://github.com/rataodobanhado/tomcat8-probe <your-git-image-folder>

#### Build your image:

    docker build -t <your-image[:tag]> ./<your-git-image-folder>

# Container execution

#### Run container from your image with port 8081 open:

    docker run -d --name <your-container-name> -p 8081:8080 <your-image[:tag]>

#### Run container through docker-compose:
	docker-compose.yml example:

        service:
            image: tomcat8-probe
            container_name: tomcat8-probe
            ports:
                - 8081:8080
            volumes:
                - ~/docker-folder/tomcat8-probe/logs:/usr/local/tomcat/logs

#### Make a copy from [docker-compose.yml](https://raw.githubusercontent.com/rataodobanhado/tomcat8-probe/master/docker-compose.yml)


# Tomcat Manager and Tomcat Probe authentication:

    user: admin
    password: admin