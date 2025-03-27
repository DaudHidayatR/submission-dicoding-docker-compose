image_app="item-app"
image_version="v1"
github="DaudHidayatR"


docker build -t $image_app:$image_version .

docker images

docker tag $image_app:$image_version ghcr.io/$github/$image_app:$image_version

docker images

docker login ghcr.io -u $github

docker push ghcr.io/$github/$image_app:$image_version
