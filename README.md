# Raspberry Pi Cluster Configuration
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Fthspinto%2Frpi-cluster.svg?type=shield)](https://app.fossa.com/projects/git%2Bgithub.com%2Fthspinto%2Frpi-cluster?ref=badge_shield)

This is the my raspberry pi cluster GitOps configuration

## Dir structure

```
├── argo/
├── ├──example_cluster/
│   │  ├── bootstrap/
│   │  ├── infrastructure/
│   │  └── apps/
├── ansible/
│   ├── common.yaml
│   ├── k3s.yaml
│   ├── group_vars
│   │   ├── nodes.yaml
│   │   └── maters.yaml
│   ├── host_vars
│       └── node01.yaml
└── bootstrap/
    ├── firstboot.sh
    └── bootstrap.env # os bootstrap service config example
```


## OS bootstrap

The node can use a [RPB OS with a post install hook](https://github.com/nmcclain/raspberian-firstboot) to pre-configure the OS.

`bootstrap.env` will tell the service what hostname should be configured for the node and the public keys for ssh.

Add the raspberian with firstboot to the sd card and copy the files in `os_bootstrap` to the sd's boot directory.

* rpi-imager
```
brew install raspberry-pi-imager
```

## Initial setup

Ansible is responsible for the initial setup of the k3s cluster:

```
make ansible
```

## ArgoCD

Argo is responsible for the k3s configurations. See more [here](https://argoproj.github.io/argo-cd/).


## Using sealed secret

Create the secret locally than encrypt it using the kubeseal cli. Example:
```
kubeseal --namespace metallb-system < metallb.json > sealed-metallb.json
```


## License
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Fthspinto%2Frpi-cluster.svg?type=large)](https://app.fossa.com/projects/git%2Bgithub.com%2Fthspinto%2Frpi-cluster?ref=badge_large)