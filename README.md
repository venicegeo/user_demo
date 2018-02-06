# User-Demo

## Prerequisites
* Vagrant
* Virtualbox

## Setup
Simply clone the repo and run `vagrant up`.  Once provisioning is complete, log in with `vagrant ssh` to experiment.

## How it works
1. Vagrant provisions a local virtual machine and connects to it via SSH. (This step would be taken care of separately in the real world)
2. The `setup.sh` script installs Ansible and dependencies, then executes an `ansible-pull` command, which runs the `local.yml` playbook on the local VM 
3. The `local.yml` playbook performs the user management tasks, and then sets itself to run via cron every 5 minutes.
4. Subsequent updates pushed to this repo will be pulled down and applied within that 5 minute time frame.

## Log in as yourself via SSH
Add your user to the `users.yml` file, then run `vagrant up --provision`.

Once it completes, try logging in: `ssh youruser@192.168.10.25`

## Info
Users are stored in the `users.yml` file, along with their github username, which allows us to pull public keys and copy them into place.
