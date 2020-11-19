install-chart:
	helm repo add cilium https://helm.cilium.io/

render:
	helm template cilium cilium/cilium --version 1.9.0 -n kube-system -f helm/values.yaml > resources.yaml
