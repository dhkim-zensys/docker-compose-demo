# docker-compose demo app

This is a Spring Boot based Java app which connects to a MySQL instance 
running inside a Docker container in order to demonstrate docker-compose
capabilities.

Application assumes that a MySQL database with name **demo** is deployed 
on the host **demodb**. Default credentials are below:

* **Username:** user
* **Password:** test

You do not have to do anything if you use `docker-compose`.

## Usage

Type the following command and app should be available at 
`http://localhost:8080/api/people` if everything goes well.

```
docker-compose up -d
```

When you're done with it, you may stop and remove containers with below
command:

```
docker-compose down
```