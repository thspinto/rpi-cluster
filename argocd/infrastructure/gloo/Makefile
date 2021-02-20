install-chart:
	helm repo add gloo https://storage.googleapis.com/solo-public-helm

render:
	helm template gloo gloo/gloo -n argocd -f helm/values.yaml > resources.yaml
