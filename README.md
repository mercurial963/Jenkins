# Jenkins Nodeless on top of Kubernetes

## Usage
#### Prepare Kubernetes and Helm
Once kubernetes and helm is set up properly, run as follows
```console
helm install jenkins helm/
```
#### Access Jenkins
forward port and access using localhost:8000
```console
kubectl --namespace dev port-forward svc/jenkins 8000:8000 &
[localhost:8000]localhost:8000
```