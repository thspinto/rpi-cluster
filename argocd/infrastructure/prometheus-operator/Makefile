install-chart:
	helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
	helm repo add stable https://charts.helm.sh/stable

render:
	helm template prometheus prometheus-community/kube-prometheus-stack -n monitoring -f helm/values.yaml > resources.yaml
