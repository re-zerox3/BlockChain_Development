
#Base image(Node.js LTS version, often used for blockchain projects)
FROM node:20

#Set environment variable (optional, but can be useful)
ENV DEBIAN_FRONTEND=noninteractive


#Update and install necessary packages
RUN apt-get update && apt-get install -y git vim python3 python3-pip

#Install Solidity compiler(latest version)
RUN npm install -g solc

#Install blockchain dev tools globally
RUN npm install -g truffle ganache-cli hardhat

VOLUME /data
#set the working directory inside the container
WORKDIR /app

#Copy local project files into container
COPY . .


#Expose port commonly used in blockcahin dev
EXPOSE 8545 3000

#Default command when the container run(Optional)
CMD ["/bin/bash"]




























