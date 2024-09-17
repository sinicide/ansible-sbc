# ansible-sbc

Ansible Deployment of Single Board Computers

## TODO

- [x] Setup initial play
- [x] Install packages
- [x] Install Node Exporter
- [x] Install NUT (currently supports only 1 ups device)
- [x] Install Octoprint

## Requirements (Ansible Collections)

Run the requirements install

```
ansible-galaxy collection install -r requirements.yaml
```

## Installation

```
ansible-playbook -i hosts.yaml all.yaml
```

You can use tags to only run some of the roles.

```
ansible-playbook -i hosts.yaml all.yaml --tags=metrics
```

## Accessing Prometheus Metrics

With Node Exporter configured, metrics are accessible at `http://<hostname>:9100/metrics`
