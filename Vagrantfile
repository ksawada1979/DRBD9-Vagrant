Vagrant.configure(2) do |config|

  config.vm.define "DRBD9-1" do |node|
    node.vm.box = "ubuntu16.04"
    node.vm.box_url = "https://cloud-images.ubuntu.com/xenial/current/xenial-server-cloudimg-amd64-vagrant.box"
    node.vm.hostname = "DRBD9-1"
    node.vm.network :private_network, ip: "192.168.33.11"

    config.vm.provider :virtualbox do |p|
    #
    # ディスクを１つ追加する
    #
      p.customize [
        'createmedium', 'disk',
        '--filename', "~/.vagrant/disk/DRBD9-1/sdc.vdi",
        '--format', 'VDI',
        '--size', 10 * 1024]
      p.customize [
        'storageattach', :id,
        '--storagectl', 'SCSI',
        '--port', 2,
        '--device', 0,
        '--type', 'hdd',
        '--medium', "~/.vagrant/disk/DRBD9-1/sdc.vdi"]
      #
      # portcountをディスクの数だけ増やす(例:2つ)
      #
      p.customize [
        'storagectl', :id,
        '--name', 'SCSI',
        '--portcount', 16]
    end
  end

  config.vm.define "DRBD9-2" do |node|
    node.vm.box = "ubuntu16.04"
    node.vm.box_url = "https://cloud-images.ubuntu.com/xenial/current/xenial-server-cloudimg-amd64-vagrant.box"
    node.vm.hostname = "DRBD9-2"
    node.vm.network :private_network, ip: "192.168.33.12"

    config.vm.provider :virtualbox do |p|
    #
    # ディスクを１つ追加する
    #
      p.customize [
        'createmedium', 'disk',
        '--filename', "~/.vagrant/disk/DRBD9-2/sdc.vdi",
        '--format', 'VDI',
        '--size', 10 * 1024]
      p.customize [
        'storageattach', :id,
        '--storagectl', 'SCSI',
        '--port', 2,
        '--device', 0,

        '--type', 'hdd',
        '--medium', "~/.vagrant/disk/DRBD9-2/sdc.vdi"]
      #
      # portcountをディスクの数だけ増やす(例:2つ)
      #
      p.customize [
        'storagectl', :id,
        '--name', 'SCSI',
        '--portcount', 16]
    end
  end

  config.vm.define "DRBD9-3" do |node|
    node.vm.box = "ubuntu16.04"
    node.vm.box_url = "https://cloud-images.ubuntu.com/xenial/current/xenial-server-cloudimg-amd64-vagrant.box"
    node.vm.hostname = "DRBD9-3"
    node.vm.network :private_network, ip: "192.168.33.13"

    config.vm.provider :virtualbox do |p|
    #
    # ディスクを１つ追加する
    #
      p.customize [
        'createmedium', 'disk',
        '--filename', "~/.vagrant/disk/DRBD9-3/sdc.vdi",
        '--format', 'VDI',
        '--size', 10 * 1024]
      p.customize [
        'storageattach', :id,
        '--storagectl', 'SCSI',
        '--port', 2,
        '--device', 0,
        '--type', 'hdd',
        '--medium', "~/.vagrant/disk/DRBD9-3/sdc.vdi"]
      #
      # portcountをディスクの数だけ増やす(例:2つ)
      #
      p.customize [
        'storagectl', :id,
        '--name', 'SCSI',
        '--portcount', 16]
    end
  end

end
