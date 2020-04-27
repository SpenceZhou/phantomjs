FROM ubuntu:18.04

RUN apt-get update && apt-get install -y g++ cmake qt5-default libqt5webkit5-dev python wget unzip \
&& cd /home/  && wget -O phantomjs.zip https://codeload.github.com/ariya/phantomjs/zip/master \ 
&& unzip phantomjs.zip && cd phantomjs/ && ./configure && make \
&& ./bin/phantomjs --version &&  make check && make install

CMD ["phantomjs"]
