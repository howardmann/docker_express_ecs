# // build docker image
docker build . -t sample-nodejs-app

# // run the docker app expose port 80 to 3000
docker run -p 80:3000 sample-nodejs-app

# // For AWS deployment
# // push the docker image to docker hub
docker login
docker tag sample-nodejs-app <YOUR_DOCKER_USERNAME>/sample-nodejs-app
docker push <YOUR_DOCKER_USERNAME>/sample-nodejs-app

# // Setup EC2 Instance
# // Select AWS Marketplace and enter ECS. Select 'ECS Optimized Linux 2' which comes with Docker
# // after ssh into EC2 instance launch app via Docker
docker run -d -p 80:3000 <YOUR_DOCKER_USERNAME>/sample-nodejs-app

# // to ssh into docker container. find ID then ssh into
docker ps 
docker exec -it <YOUR_CONTAINER_ID> sh
# or
docker exec -it <YOUR_CONTAINER_ID> /bin/bash