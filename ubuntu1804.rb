# Vagrantfile ubuntu1804

Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu1804"
  config.vm.provider :libvirt do |libvirt|
    libvirt.cpus = 8
    libvirt.memory = 6000
   end
end
