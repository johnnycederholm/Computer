#!/bin/bash
source .venv/bin/activate
read -p "User to run playbook as: " ANSIBLE_USER
ansible-playbook \
    --user ${ANSIBLE_USER} \
    --ask-pass \
    --ask-become-pass \
    --inventory inventory.yml \
    playbook.yml