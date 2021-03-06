export HELLO_WORLD_IMAGE="fkrutakov/asphelloworld:$1"
envsubst < deploy.yaml | microk8s kubectl apply -f -