# My Dev Env

## Bootstrap a Kubernetes cluster

```
kind create cluster --config=/opt/kind.yml
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/kind/deploy.yaml
```
