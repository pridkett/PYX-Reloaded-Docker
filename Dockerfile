# Multi-stage Docker build for PYX
#
# see:
# https://blog.frankel.ch/dockerfile-maven-based-github-projects/

FROM alpine/git
WORKDIR /app
RUN git clone https://github.com/pridkett/PYX-Reloaded.git

FROM maven:3.6-openjdk-15
WORKDIR /app
COPY --from=0 /app/PYX-Reloaded /app 
RUN mvn clean package

FROM openjdk:8-jre-alpine
WORKDIR /app
COPY --from=1 /app/target/PYX-Reloaded-jar-with-dependencies.jar /app
COPY start.sh /app
CMD ["/app/start.sh"]
