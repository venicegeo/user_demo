#!/bin/bash
###
# This script installs Ansible and dependencies

# Install EPEL
sudo yum install -y epel-release 

# Install ansible and python tools
sudo yum install -y ansible python-setuptools python2-devel git

# Install requirements from ansible-galaxy
#ansible-galaxy install -r /vagrant/ansible/requirements.ymli

# Pull Ansible Playbook
ansible-pull -U https://github.com/venicegeo/user_demo.git
