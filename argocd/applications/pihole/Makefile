install-chart:
	helm repo add mojo2600 https://mojo2600.github.io/pihole-kubernetes/

render:
	helm template pihole mojo2600/pihole -f helm/values.yaml > resources.yaml
