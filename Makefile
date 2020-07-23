NAME = chrdev
obj-m += ${NAME}.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
load:
	sudo insmod ${NAME}.ko
	sudo dmesg -c
unload:
	sudo rmmod ${NAME}.ko
	sudo dmesg -c

