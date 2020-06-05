Vagrant.configure("2") do |config|
  config.vm.box = "peru/ubuntu-20.04-desktop-amd64"
  config.vm.box_version = "20200601.01"
config.vm.provider :libvirt do |libvirt|
    libvirt.cpus = 4
    libvirt.memory = 4000
    config.vm.network "private_network", ip: "192.168.122.246"
    config.vm.synced_folder "./", "/vagrant"
    Vagrant.configure("2") do |config|
         config.vm.provision "shell",
        inline: "sudo apt-get update -y && sudo apt-get upgrade -y"
end
   end

end