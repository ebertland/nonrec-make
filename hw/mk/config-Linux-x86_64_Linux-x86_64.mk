TOOLCHAIN := /cb/toolchains/buildroot/monolith-default/202109072021-163-9f0c0c20
SDK := $(TOOLCHAIN)/sdk-x86_64

# How the "cross tools" should be invoked
CC := $(SDK)/bin/gcc
CXX := $(SDK)/bin/g++
AR := $(SDK)/bin/ar
RANLIB := $(SDK)/bin/ranlib

# Since we are compiling for a "remote target" we have to set this manually
ENDIAN := little

# Any other target specific settings
#CPPFLAGS += -DLINUX_AARCH64

# ~jeff/ws/monolith-latest/toolchain/rootfs-x86_64/usr/bin
# ~jeff/ws/monolith-latest/toolchain/sdk-x86_64/bin
