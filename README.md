#BlockChain_Development


#Run the following to set up docker environment

#Build blockchain-dev docker image from Dockerfile
docker build -t solidity-dev . 

#Run solidity-dev docker container to go live
##8584 port for blockchain network
docker run -t -v $(pwd):/app 8545:8545 solidity-dev

#Check all live containers
docker ps -a


