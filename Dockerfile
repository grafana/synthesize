from ubuntu:14.04.1

run	apt-get -y update
run apt-get -y install curl
run apt-get -y install wget

add ./install /tmp/synthesize/install

add ./templates /tmp/synthesize/templates

run cd /tmp/synthesize/ && ./install

expose 443
expose 8125
expose 2003
expose 2004
