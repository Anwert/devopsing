HELLO_WORLD_IMAGE="fkrutakov/asphelloworld:$1"
envsubst < deploy.yaml > deploy-tmp.yaml
microk8s kubectl apply -f deploy-tmp.yaml