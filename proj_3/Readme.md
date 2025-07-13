Inside the go-web-app dir, there are two dockerfiles one will create distroless multi build image and the other will create a normal image

To build use command make

%make docker-test-large
%make docker-test-small

~~~~~~~~~~~~~~
%docker images

REPOSITORY                                                                     TAG                    IMAGE ID       CREATED         SIZE
go-web-app-small                                                               v1                     9863c6672f44   6 seconds ago   38.9MB
go-web-app-large                                                               v1                     0c4911964955   6 minutes ago   927MB
``````````````

Once the image is ready, run and check the container whether it is working fine

%docker run -p 8080:8080 -itd 9863c6672f44 

