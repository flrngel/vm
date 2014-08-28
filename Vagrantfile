# -*- mode: ruby -*-
# vim: set ft=ruby :

# Vagrantfile
VAGRANTFILE_API_VERSION = "2"

VM_HOSTNAME="SEXY_PANDA"

USER="vagrant"
USER_GROUP="vagrant"
PASSWORD="vagrant"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.ssh.username = USER
  config.ssh.password = PASSWORD

  # set limit
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end

  config.vm.define VM_HOSTNAME do |vm|
  end

  # dealing shell errors
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"

  # change repo to ftp.daum.net
  config.vm.provision "shell" do |shell|
    shell.path="ops/scripts/init.sh"
  end

  # port forwarding
  config.vm.network "forwarded_port", guest:80, host:8080
end
