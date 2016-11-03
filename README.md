# docker-base-cron
A simple debian based docker image with cron.  It is based on litalidev/docker-base


To build, just issue

  docker build -t litalidev/docker-base-cron .


To test
  1. docker run -d --restart=always -h debian8d -p 22:22 --name base001 docker-base
  2. putty/ssh to the host computer
  3. login root/rootpw


Note
  This image was tested under a Windows system

