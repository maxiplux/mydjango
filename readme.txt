docker build -t django .
docker run -ti django /bin/bash
docker-compose up  -d
docker exec -it   django bash
https://www.sitepoint.com/how-to-build-an-image-with-the-dockerfile/
http://ruddra.com/2016/08/14/docker-django-nginx-postgres/
docker system prune
docker stop  25b5cad44644
docker rm  b776c83b0d79

