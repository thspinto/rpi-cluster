install-chart:
	helm repo add kong https://charts.konghq.com

render:
	helm template kong kong/kong -n kong -f helm/values.yaml > resources.yaml
