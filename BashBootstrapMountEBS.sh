sudo mkfs -t ext4 /dev/xvdf;
sudo mkdir /home/ubuntu;
sudo mount /dev/xvdf /home/ubuntu;
sudo cp /etc/fstab /etc/fstab.orig;
mounted_disk=$(blkid /dev/xvdf | sed -n 's/.*UUID=\"\([^\"]*\)\".*/\1/p');
sudo bash -c 'echo "UUID="'$mounted_disk'"   /home/ubuntu     ext4  defaults    0   2" >> /etc/fstab';
sudo mount -a;

