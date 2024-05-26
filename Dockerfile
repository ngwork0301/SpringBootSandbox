FROM eclipse-temurin:17-jdk-jammy

RUN apt update
RUN apt-get install -y git

# for spring-boot-cli
RUN apt-get install -y zip
RUN curl -s "https://get.sdkman.io" | bash
RUN source "/root/.sdkman/bin/sdkman-init.sh"
RUN sdk install springboot
