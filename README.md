# Raspberry Pi Cluster Configuration
This is the my raspberry pi cluster GitOps configuration

## Dir structure

argo/
├── example_cluster/
│   ├── infrastructure/
│   └── apps/
├── nodes/
│   ├── host_name_a.yaml
│   ├── host_name_b.yaml
│   ├── group_vars
│   │   ├── node.yaml
│   │   └── control_plain.yaml
│   └── roles/
│   │   ├── common/
│   │   └── specific/
├── bootstrap/
│   ├── osb.sh
│   └── osbs.yaml # os bootstrap service config
└── osb.yaml # os bootstrap configuration


## OS bootstrap

The node can use a (RPB OS with a post install hook)[https://github.com/nmcclain/raspberian-firstboot] to configure the GitOps service for the OS configuration. The GitOps service basically monitors the configuration repository for changes on ansible configuration.

`bootstrap.yaml` will tell the service what hostname should be configured for the node and where is the git repo with the ansible configuration. Ex:

```bash

```

The bootstrap service will monitor the `osb.yaml` file for changes. When updated, `obs` will download the release with the ansible files and apply them to the OS.
