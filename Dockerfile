FROM ubuntu:18.04

RUN apt-get update && apt-get install -y g++ cmake qt5-default libqt5webkit5-dev python wget unzip \
&& cd /home/  && wget https://codeload.github.com/ariya/phantomjs/zip/master \ 
&& unzip phantomjs-master.zip && cd phantomjs-master/ && ./configure && make \
&& ./bin/phantomjs --version &&  make check && make install

CMD ["phantomjs"]
