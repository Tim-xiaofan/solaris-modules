#install driver on x86_64 platform
drv="qotd_2"
sudo cp "${drv}.conf" /usr/kernel/drv
cp ${drv} /tmp/
sudo ln -s /tmp/${drv} /usr/kernel/drv/amd64/${drv}
sudo add_drv ${drv}
sudo modinfo -i ${drv}
cat /etc/name_to_major | grep ${drv}
