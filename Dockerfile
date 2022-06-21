FROM openjdk
WORKDIR /base
COPY cli/build/libs/worker.cli-all.jar worker.cli-all.jar
CMD ["java","-jar","worker.cli-all.jar","--port","8080"]
EXPOSE 8080
#gradle shadowJar