install-chart:
	helm repo add k8s-at-home https://k8s-at-home.com/charts/

render:
	helm template adguard k8s-at-home/adguard-home -f helm/values.yaml > resources.yaml
