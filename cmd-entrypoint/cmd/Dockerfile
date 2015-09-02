FROM ubuntu
RUN apt-get update
RUN apt-get install -y wget
# CMD wget -O- -q http://ifconfig.me/ip
CMD ifconfig eth0 | grep 'inet ' | awk '{ print $2}'
