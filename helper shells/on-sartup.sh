# run teamcity
/home/ftern/teamcity/TeamCity/bin/runAll.sh start

# port forward prometheus
microk8s kubectl port-forward -n monitoring service/prometheus-k8s --address 0.0.0.0 9999:9090 &

# port forward grafana
microk8s kubectl port-forward -n monitoring service/grafana --address 0.0.0.0 3000:3000 &

# run dashboard url: http://84.201.178.199:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/#/overview?namespace=default
sudo microk8s.kubectl proxy --accept-hosts=.* --address=0.0.0.0 & 