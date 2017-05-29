# Docker Registry

## Run a local registry: Quick Version
$ docker run -d -p 5000:5000 --restart always --name registry stakater/docker-registry:2
Now, use it from within Docker:

$ docker pull ubuntu
$ docker tag ubuntu localhost:5000/ubuntu
$ docker push localhost:5000/ubuntu

## Recommended Reading
The documentation over at docs.docker.com is a good place to learn more about what the registry is, how it works, and how to use it.

## Specifically, the section regarding deployment has pointers for more complex use cases than simply running a registry on localhost.

## Support
If you are interested in commercial support, the Docker Trusted Registry provides an image registry, LDAP/Active Directory integration, security certificates, and more in a solution that includes commercial support

## Inspiration
https://github.com/docker/distribution-library-image