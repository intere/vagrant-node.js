Vagrant::Config.run do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.host_name = "node-js.silverchalice.com"

  # Enable the Puppet provisioner
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "."
    puppet.module_path    = "modules"
    puppet.manifest_file  = "default.pp"
    #puppet.options        = "--verbose --debug"
  end

  # Forward guest port 8080 to host port 4568
  #config.vm.forward_port 8080, 4568
  #config.vm.forward_port 27017, 27017 
  #config.vm.forward_port 28017, 28017

end

