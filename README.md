# Linux-module

my attempts to write modules for the Linux kernel...

````bash
lsmod
sudo insmode test_module.ko
lsmod | grep test_module
less /var/log/syslog
sudo rmmod test_module
````

chech chrdev:
````bash
sudo mknod /dev/chrdrv c 700 0
sudo chmod a+rw /dev/chrdrv
ls -la /dev/chrdrv

sudo insmod chrdev.ko
cat /proc/modules | grep chrdev
echo "test!" > /dev/chrdrv
````
