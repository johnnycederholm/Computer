# Ansible playbook for computer setup

| Script file | Description |
| ----------- | ----------- |
| build-python-requirements.sh | Generate Python requirements file |
| create-environment.sh | Create Python virtual environment from requirements file |
| install-ansible-requirements.sh | Install Ansible roles used by playbook |

## Activate Python virtual environment

```shell
source .venv/bin/activate
```

## Prepare target host with Python virtual environment

```shell
ansible-playbook \
    --user <USER> \
    --ask-pass \
    --ask-become-pass \
    --limit <GROUP/HOST FILTER> \
    prepare-target-host.yml
```

### Example

```shell
ansible-playbook \
    --user ansible \
    --ask-pass \
    --ask-become-pass \
    --limit vm \
    prepare-target-host.yml
```

## Run playbook

```shell
ansible-playbook \
    --user <USER> \
    --ask-pass \
    --ask-become-pass \
    --limit <GROUP/HOST FILTER> \
    --extra-vars ansible_python_interpreter=/opt/ansible-venv/bin/python \
    bootstrap-machine.yml
```

### Example

```shell
ansible-playbook \
    --user ansible \
    --ask-pass \
    --ask-become-pass \
    --limit vm \
    --extra-vars ansible_python_interpreter=/opt/ansible-venv/bin/python \
    bootstrap-machine.yml
```