#
#
# Ref: https://wwssllabck.github.io/blog/2012/11/13/how-to-make-linux-module/
#
#

PWD := $(shell pwd)
KVERSION := $(shell uname -r)
KERNEL_HEADERS_DIR = /usr/src/linux-headers-$(KVERSION)/

MODULE_NAME = helloWorld
obj-m := $(MODULE_NAME).o

all:
	make -C $(KERNEL_HEADERS_DIR) M=$(PWD) modules
clean:
	make -C $(KERNEL_HEADERS_DIR) M=$(PWD) clean
