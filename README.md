A collection of Ansible playbooks and supporting files to build Openstack Mitaka. I developed it by hand from scratch as an Ansible learning exercise. The playbooks are written for Ansible 2.1 and all of the client hosts run Ubuntu 16.04. Any exceptions to the "developed from scratch" rule are noted in the relevant playbook.

I assume you either have a working DNS available to your management machine, or have entered the names of your Openstack machines into /etc/hosts on your management machine. The Openstack hosts are listed in $HOME/ansible/etc/hosts. Change those names to suit your environment. I also assume the machines for your Openstack environment have basic networking configured, including DNS, and have connectivity to your management machine and the Internet (for package installation, etc.) via their management port.

Directory structure: 
$HOME/ansible/ Playbooks 
$HOME/ansible/etc/ Config files, templates, and fragments 
$HOME/ansible/vars/ Variable files

To use: edit the $HOME/ansible/vars/vars.yml to taste and run the playbooks in order (01, 02 etc.).

This project is not endorsed or supported by my employer by and way, and does not reflect practices or platforms in use at that employer. This project contains no proprietary company information whatsoever.
