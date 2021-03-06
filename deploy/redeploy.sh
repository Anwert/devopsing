cp deploy.yaml tmp
sed -i "s%image: fkrutakov/asphelloworld%image: fkrutakov/asphelloworld:$1%g" ./tmp/deploy.yaml
microk8s kubectl apply -f ./tmp/deploy.yaml