install-chart:
	helm repo add argo https://argoproj.github.io/argo-helm

render:
	helm template argocd argo/argo-cd -f helm/values.yaml > resources.yaml
