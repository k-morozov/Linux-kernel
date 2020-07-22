#include <linux/module.h>

int init_module(void) {
	printk( KERN_INFO "testing init module");
}

void cleanup_module(void) {
	printk( KERN_INFO "testing cleanup module");
}

MODULE_LICENSE("GPL");
