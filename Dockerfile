FROM nginx:1.10.1-alpine

# ENV key=somekey

COPY src/html /usr/share/nginx/html

# use port 80, or set it during docker run
# EXPOSE 80

# startup commands
CMD [ "nginx", "-g", "daemon off;" ]

# build and run
# docker build -t tag-name .

# run with daemon | expose ports | imageId
# docker run -d -p 80:80 6788cbcf9a1d

# docker ps -> to see running images, server should be available at localhost

# docker stop imageId (or name)
# docker rm container_name -> to remove container
# docker rmi imageId -> to remove image

# entering exec mode in container | interactive mode | for nginx-alpine use exec /bin/sh to open terminal
# docker exec -it imageId /bin/sh