# Jenkins Nodeless on top of Kubernetes

## Usage
#### Prepare Kubernetes and Helm
Once kubernetes and helm is set up properly, run as follows
```console
helm install jenkins helm/
```
#### Forward port
```console
kubectl port-forward svc/jenkins 8000:8000 &

```
#### Open Jenkins
[here](http://localhost:8000)


