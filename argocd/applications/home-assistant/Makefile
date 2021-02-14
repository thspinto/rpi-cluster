install-chart:
	helm repo add k8s-at-home https://k8s-at-home.com/charts/

render:
	helm template home-assistant k8s-at-home/home-assistant -f helm/values.yaml > resources.yaml
