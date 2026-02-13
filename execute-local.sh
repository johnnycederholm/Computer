#!/bin/bash
sudo apt install -y python3-venv

./create-environment.sh
source .venv/bin/activate
./install-ansible-requirements.sh

ansible-playbook \
    --user $1 \
    --ask-pass \
    --ask-become-pass \
    bootstrap-machine.yml