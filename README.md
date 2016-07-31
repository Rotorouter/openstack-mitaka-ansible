# openstack-mitaka-ansible

A collection of Ansible playbooks and supporting files to build Openstack Mitaka. I developed it by hand from scratch as an Ansible learning exercise. The playbooks are written for Ansible 2.1 and all of the client hosts run Ubuntu 14.04.4 LTS. Any exceptions to the "developed from scratch" rule are noted in the relevant playbook.

There are 4 prerequisites to using the playbooks:
1) Basic networking configured, including DNS, and have connectivity to your management machine and the Internet (for package installation, etc.) via their management port. This includes the special controller config for the provider network in /etc/network/interfaces; see http://docs.openstack.org/mitaka/install-guide-ubuntu/environment-networking-controller.html.
2) A working DNS in your environment, or names of the target machines entered in /etc/hosts on the machine where you intend to run the playbooks.
3) Install python. The minimal Ubuntu 16.04 install does not include this.
4) (Optional) Run ssh-keygen on each of your target machines so you can use ssh key authentication from any host to any host. Add the public key from each machine to .ssh/authorized_hosts on the machine where you will be running the playbooks.

Directory structure:
$HOME/ansible/ Playbooks
$HOME/ansible/etc/ Config files, templates, and fragments
$HOME/ansible/vars/ Variable files

To use: edit the $HOME/ansible/vars/vars.yml to taste and run the playbooks in order (01, 02 etc.).

This project is not endorsed or supported by my employer by and way, and does not reflect practices or platforms in use at that employer. This project contains no proprietary company information whatsoever.
