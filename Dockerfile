FROM hokiegeek/scala:latest

RUN mkdir /app
VOLUME /app
WORKDIR /app

RUN wget https://dl.bintray.com/sbt/native-packages/sbt/0.13.12/sbt-0.13.12.tgz

RUN tar -xvzf sbt-0.13.12.tgz
RUN cp sbt/bin/* /usr/bin

RUN rm -rf sbt-0.13.12.tgz sbt

ENTRYPOINT ["sbt"]
