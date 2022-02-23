echo "Creating image tar!"
# Create local image.tar

#docker build . -t acordo-blockchain-rest-api:local
#docker save acordo-blockchain-rest-api > acordo-blockchain-rest-api.tar


##echo "Importing image to microk8s!"
#microk8s ctr image import acordo-blockchain-rest-api.tar

#echo "Done!"
microk8s.docker build -t nebua/nebua-dex .

#docker build -t acordo/acordo-blockchain-rest-api .