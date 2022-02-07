export TBS_NAMESPACE=todos-ns
export IMAGE_NAME=todos
export LOCAL_PATH=employee-todo-list-api/
export IMAGE_REPOSITORY=harbor.rito.tkg-vsp-lab.hyrulelab.com/bizops/todos
export HARBOR_DOMAIN=harbor.rito.tkg-vsp-lab.hyrulelab.com
export REGISTRY_USER=roboharbor

kubectl create namespace $TBS_NAMESPACE --dry-run=client --output yaml | kubectl apply -f -

kp secret create harbor-creds \
  --registry $HARBOR_DOMAIN \
  --registry-user $REGISTRY_USER \
  --namespace $TBS_NAMESPACE

kp image create $IMAGE_NAME \
  --tag $IMAGE_REPOSITORY \
  --namespace $TBS_NAMESPACE \
  --cluster-builder demo-cluster-builder \
  --local-path $LOCAL_PATH
