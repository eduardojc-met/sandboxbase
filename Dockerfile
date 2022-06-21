FROM openjdk
WORKDIR /base
COPY cli/build/libs/worker.cli-all.jar worker.cli-all.jar
CMD ["java","-jar","worker.cli-all.jar"]
EXPOSE 80
#gradle shadowJar