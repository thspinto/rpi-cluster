# ArgoCD

See [docs](https://argoproj.github.io/argo-cd/getting_started/).

## First install

On first install we need manually add argocd and the bootstrap configuration. TODO: add this in ansible.

```
kubectl apply -f ../namespace/argocd.yaml
kubectl apply -f argocd.yaml -n argocd
```
