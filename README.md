# Backend
Backend Repository

## Docker
I assume you have docker installed on your machine. if not, go [here](https://docs.docker.com/) and follow the instruction.
It will install ~oracle-java8~ and ~typesafe activator~
1. Clone repository by run this command 
```bash
git@github.com:coska-davisville/Backend.git
```
2. Go to the directory "Backend"
3. Create a docker image
```bash
docker build -t {IMAGE_NAME}:{IMAGE_VERSION} ./
```
4. Run container from your image
```bash
docker run --name {CONTAINER_NAME} -d -p 80:80 -v {REPOSITORY_PATH}:/study/Backend {IMAGE_NAME}:{IMAGE_VERSION}
```

## Vagrant
I assume you have vagrant and virtualbox installed on your machine. if not, go [here](https://docs.vagrantup.com/v2/) and follow the instruction.
1. Clone repository by run this command 
```bash
git@github.com:coska-davisville/Backend.git
```
2. Go to the directory "Backend"
3. Create a vagrant box
```bash
vagrant up
```
