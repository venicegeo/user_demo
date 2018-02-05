# User-Demo

## Prerequisites
* Vagrant
* Virtualbox
* Ansible

## Running
Simply clone the repo and run `vagrant up`.  Once provisioning is complete, log in with `vagrant ssh` to experiment.

If you make updates and want to force an update, run `vagrant up --provision`

## Log in as yourself via SSH
Add your user to the `users.yml` file, then fun `vagrant up --provision`.

Once it completes, try logging in: `ssh youruser@192.168.10.25`

## Info
Users are stored in the `users.yml` file, along with their github username, which allows us to pull public keys and copy them into place.
