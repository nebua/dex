sudo -v
#echo "Docker login"
#docker login
# Built in registry : https://microk8s.io/docs/registry-built-in
echo "Creating image tar!"
# Create local image.tar
docker build . -t nebua/nebua-dex:local
echo "Saving image tar!"
docker save nebua/nebua-dex:local > nebua-dex.tar

# Import to microk8s
echo "Importing image to microk8s!"
microk8s ctr image import nebua-dex.tar

echo "Remove File tar!"
sudo rm -r nebua-dex.tar
echo "Done!"

