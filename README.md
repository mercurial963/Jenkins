# Jenkins Nodeless on top of Kubernetes

## Usage

Prepare Kubernetes and Helm

Once Helm is set up properly, add the repo as follows:

```console
helm repo add jenkins https://charts.jenkins.io
helm install jenkins jenkins/jenkins

```

####Access Jenkins:

Get initial password
```console
kubectl exec --namespace dev -it svc/jenkins -c jenkins -- /bin/cat /run/secrets/chart-admin-password && echo 
kubectl --namespace dev port-forward svc/jenkins 8080:8080
```
Forward port (No prompt return)
```console
kubectl --namespace dev port-forward svc/jenkins 8080:8080  

```