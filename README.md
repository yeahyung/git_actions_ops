# git_actions_ops

## Github Actions를 통한 CI

 - Java Build
 - Docker Build
 - Docker Push
 - Helm Chart Update

## ArgoCD를 통한 CD

 - Sync with Helm Chart

### Install ArgoCD

 - https://argo-cd.readthedocs.io/en/stable/getting_started/
```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/core-install.yaml
# get password
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo
kubectl port-forward svc/argocd-server -n argocd 8080:80
# localhost:8080 접속(username: admin, password: ${get password})
```
