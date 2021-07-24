# Jenkins Nodeless on top of Kubernetes

## Usage
#### Prepare Kubernetes and Helm
Once kubernetes and helm is set up properly, run as follows
```console
helm install jenkins helm/
```
#### Access Jenkins
forward port 
```console
kubectl --namespace dev port-forward svc/jenkins 8000:8000 &

```
access using localhost:8000
[here](http://localhost:8000)
[here](www.google.co.th)