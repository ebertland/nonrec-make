# How the "cross tools" should be invoked
CC := aarch64-linux-gnu-gcc
CXX := aarch64-linux-gnu-g++
AR := aarch64-linux-gnu-ar
RANLIB := aarch64-linux-gnu-ranlib

# Since we are compiling for a "remote target" we have to set this manually
ENDIAN := little

# Any other target specific settings
#CPPFLAGS += -DLINUX_AARCH64

