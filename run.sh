#!/usr/bin/env bash
# build apache image
docker build -t my-static .

# run image as container
docker run -p 8888:80 -d --volume /srv/my-static-site/htdocs:/usr/local/apache2/htdocs/ --restart always --name my-static-site my-static

# set site admin user
chown user:user /srv/my-static-site/htdocs

