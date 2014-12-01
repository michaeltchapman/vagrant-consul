# -*- mode: ruby -*-
# vi: set ft=ruby :

BOX = 'developervms/centos7-64'

def configure(config)
  config.vm.box = BOX
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "off"]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "off"]
  end

  config.vm.provider "virtualbox" do |vconfig|
    vconfig.customize ["modifyvm", :id, "--memory", "4096"]
    vconfig.cpus = 2
  end

  config.vm.provision :shell do |shell|
    shell.inline = 'bash /vagrant/scripts/bootstrap.sh'
  end

  config.vm.synced_folder "modules", "/etc/puppet/modules"
  config.vm.synced_folder "manifests", "/etc/puppet/manifests"
  config.vm.synced_folder "hiera", "/etc/puppet/hiera"

  config.vm.provision :shell do |shell|
    shell.inline = 'cp /vagrant/hiera/hiera.yaml /etc/puppet; puppet apply /etc/puppet/manifests/site.pp'
  end
end

Vagrant.configure("2") do |config|
  ['1','2','3'].each do | i |

    config.vm.define "build#{i}" do |build|
      build.vm.hostname = "build#{i}"
      build.vm.network "private_network", :ip => "192.168.242.3#{i}"
      build.vm.network "private_network", :ip => "10.2.3.3#{i}"
      build.vm.network "private_network", :ip => "10.3.3.3#{i}"
      configure(build)
    end

    config.vm.define "server#{i}" do |server|
      server.vm.hostname = "server"
      server.vm.network "private_network", :ip => "192.168.242.1#{i}"
      server.vm.network "private_network", :ip => "10.2.3.1#{i}"
      server.vm.network "private_network", :ip => "10.3.3.1#{i}"
      configure(server)
    end

    config.vm.define "agent#{i}" do |agent|
      agent.vm.hostname = "agent#{i}"
      agent.vm.network "private_network", :ip => "192.168.242.2#{i}"
      agent.vm.network "private_network", :ip => "10.2.3.2#{i}"
      agent.vm.network "private_network", :ip => "10.3.3.2#{i}"
      configure(agent)
    end

  end
end
