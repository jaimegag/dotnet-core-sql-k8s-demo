# uses pack, but references builder created by TBS and stored in harbor
pack build employee-todo-list-api \
  --path employee-todo-list-api \
  --builder harbor.rito.tkg-vsp-lab.hyrulelab.com/tbs/build-service/demo-cluster-builder@sha256:ec27ab2f78deb80b8a96106c1059a5c042c7320f96cad78a3225149f8b7c9b6c
