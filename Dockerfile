FROM eclipse-temurin:17-jdk-jammy

RUN apt update
RUN apt-get install -y git

# for spring-boot-cli
RUN apt-get install -y zip
RUN curl -s "https://get.sdkman.io" | bash
RUN source "/root/.sdkman/bin/sdkman-init.sh"
RUN sdk install springboot

# add 2024.10.22
#    for CLI gradle
RUN apt install sudo -y
RUN apt-get install debianutils
RUN apt-get install software-properties-common
RUN add-apt-repository ppa:cwchien/gradle
RUN apt update
RUN apt install gradle
