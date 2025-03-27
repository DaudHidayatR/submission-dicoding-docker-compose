#membuild image dan push ke github container registry

#menginisiasi variabel
image_app="item-app"
image_version="v1"
github="daudhidayatr"

#melakukan login ke github container registry
echo $CR_PAT | docker login ghcr.io -u $github --password-stdin

#build image dari Dockerfile
docker build -t ghcr.io/$github/$image_app:$image_version .

#menampilkan daftar image yang ada
docker images

#memberikan tag pada image yang sudah dibuild
docker tag item-app:v1 ghcr.io/$github/$image_app:$image_version

#menampilkan daftar image yang ada
docker images

#push image ke github container registry
docker push ghcr.io/$github/$image_app:$image_version
