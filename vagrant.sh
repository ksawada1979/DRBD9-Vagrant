vagrant up DRBD9-1
vagrant up DRBD9-2
vagrant up DRBD9-3

vagrant ssh DRBD9-1 -- sudo parted -s -a optimal /dev/sdc mklabel gpt -- mkpart primary ext4 1 -1
vagrant ssh DRBD9-1 -- sudo apt-get install -y python

vagrant ssh DRBD9-2 -- sudo parted -s -a optimal /dev/sdc mklabel gpt -- mkpart primary ext4 1 -1
vagrant ssh DRBD9-2 -- sudo apt-get install -y python

vagrant ssh DRBD9-3 -- sudo parted -s -a optimal /dev/sdc mklabel gpt -- mkpart primary ext4 1 -1
vagrant ssh DRBD9-3 -- sudo apt-get install -y python

echo "DRBD9-1 user ubuntu password Enter"
vagrant ssh DRBD9-1 -- sudo passwd ubuntu

echo "DRBD9-2 user ubuntu password Enter"
vagrant ssh DRBD9-2 -- sudo passwd ubuntu

echo "DRBD9-3 user ubuntu password Enter"
vagrant ssh DRBD9-3 -- sudo passwd ubuntu
