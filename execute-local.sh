#!/bin/bash
sudo apt install -y git

./create-environment.sh
source .venv/bin/activate
./install-ansible-requirements.sh

ansible-playbook \
    --user $1
    --ask-pass \
    --ask-become-pass \
    bootstrap-machine.yml