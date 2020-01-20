FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y unzip curl libcurl4 libssl1.0.0
# https://www.minecraft.net/en-us/download/server/bedrock/
RUN curl https://minecraft.azureedge.net/bin-linux/bedrock-server-1.14.1.4.zip --output bedrock-server.zip && \
    unzip bedrock-server.zip -d bedrock-server && \
    rm bedrock-server.zip
WORKDIR /bedrock-server
CMD LD_LIBRARY_PATH=. ./bedrock_server
