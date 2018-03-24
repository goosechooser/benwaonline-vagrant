# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.define :jenkins do |jenkins_config|
      jenkins_config.vm.hostname = 'jenkins'
      jenkins_config.vm.network "private_network", ip: "192.168.10.11"
      jenkins_config.vm.network "forwarded_port", guest: 3306, host: 3306
    end

  config.vm.provider :virtualbox do |virtualbox_config|
      virtualbox_config.name = "Jenkins - Ubuntu 16.04"
  end

  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.provision :shell, path: "startup.sh", run: 'always'

  config.vm.synced_folder "", "/var/www/html", nfs: true, mount_options: ["actimeo=2"]
end