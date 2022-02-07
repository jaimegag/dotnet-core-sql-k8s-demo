# Employee TODO List app

This is a todo demo application.  It is built with an Angular front end, .NET Core 3 api, and a MS Sql Server database.

The rationale for this demo is to demonstrate, how to build and deploy an app with these technologies to Kubernetes.

## Deploy the app only

You can directly deploy the app to your Kubernetes cluster without building it, thanks to an existing previously built container image.

>Note: Requires Carvel tools [kapp](https://get-kapp.io) and [ytt](https://get-ytt.io)

You can customize for your environment by editing `k8s/values.yaml`. It's by default set to use an Ingress for the app and svc type LB for the DB.

```bash
kubectl create ns todos
ytt --ignore-unknown-comments -f k8s/ | kapp deploy -n todos -a todos -y -f -
```

If you have used the ingress, then access the app via the ingress URL.  Alternatively, you can access it through the todo Loadbalancer service.

## Origin and Thanks

Borrowed most pieces of Dodd Pfeffer's repo: https://github.com/doddatpivotal/dotnet-core-sql-k8s-demo
