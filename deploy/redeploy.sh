cp deploy.yaml deploy-tmp.yaml
sed -i "s%image: fkrutakov/asphelloworld%image: fkrutakov/asphelloworld:$1%g" deploy-tmp.yaml
microk8s kubectl apply -f deploy-tmp.yaml