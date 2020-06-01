# Vagrantfile ubuntu1804

Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu1804"
  config.vm.provider :libvirt do |libvirt|
    libvirt.cpus = 8
    libvirt.memory = 6000
    config.vm.network "private_network", ip: "192.168.122.246"
    config.vm.synced_folder "./", "/vagran"
   end
end
