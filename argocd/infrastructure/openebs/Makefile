install-chart:
	helm repo add openebs https://openebs.github.io/charts

render:
	helm template openebs openebs/openebs -n kube-system -f helm/values.yaml > resources.yaml
