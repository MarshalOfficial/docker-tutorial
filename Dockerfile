FROM ubuntu:20.04

RUN apt-get update \
    && apt-get install -y wget

RUN wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb \
    && dpkg -i packages-microsoft-prod.deb \
    && rm packages-microsoft-prod.deb \    
    && apt-get install -y apt-transport-https \
    && apt-get update \
    && apt-get install -y dotnet-sdk-6.0

WORKDIR DockerTutorial

COPY . .

CMD [ "dotnet", "run" ]

