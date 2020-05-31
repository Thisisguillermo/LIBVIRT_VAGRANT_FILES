
## Vagrantfile ubuntu2004

Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu2004"
  config.vm.provider :libvirt do |libvirt|
    libvirt.cpus = 4
    libvirt.cputopology :sockets => '2', :cores => '2', :threads => '1'
    libvirt.memory = 4000
   end
end