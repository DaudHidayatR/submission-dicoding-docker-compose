image_app="item-app"
image_version="v1"
github="daudhidayatr"

#docker login ghcr.io -u $github
echo $CR_PAT | docker login ghcr.io -u $github --password-stdin
docker build -t ghcr.io/$github/$image_app:$image_version .

docker images
##
docker tag item-app:v1 ghcr.io/$github/$image_app:$image_version
##
docker images

docker push ghcr.io/$github/$image_app:$image_version
