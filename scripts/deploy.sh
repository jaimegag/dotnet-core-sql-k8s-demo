kubectl delete deployment todos -n todos
kubectl create namespace todos --dry-run=client --output yaml | kubectl apply -f -
ytt --ignore-unknown-comments -f k8s/ | kapp deploy -n todos -a todos -y -f -