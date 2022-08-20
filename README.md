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

### Install Docker

 - https://docs.docker.com/engine/install/centos/

### Maven Install

 - https://www.centlinux.com/2018/12/install-apache-maven-3-on-centos-7.html

### Git Actions

 - Set Git Self-Hosted-Runner
   - [Settings] -> [Actions] -> [Runners]
     - root 계정으로 실행할 경우 export RUNNER_ALLOW_RUNASROOT="1" 실행 
   - Add Service File
     - https://docs.github.com/en/actions/hosting-your-own-runners/configuring-the-self-hosted-runner-application-as-a-service
 - Set Secrets for Git Access
   - [Settings] -> [Secrets] -> [Actions]
     - REPO_USERNAME
     - REPO_TOKEN
 - Set Secrets for Docker Hub Access
   - [Settings] -> [Secrets] -> [Actions]
     - REG_USERNAME
     - REG_PASSWORD