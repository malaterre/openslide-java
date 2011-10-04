# simple makefile for now

CC = gcc
JAVAC = javac

all: libopenslide-jni.so
	ant

libopenslide-jni.so: openslide-jni.c
	$(CC) $(CFLAGS) -fPIC -shared -g -O2 -Wall -o $@ $< $$(pkg-config openslide --cflags --libs)

clean:
	ant clean
	$(RM) libopenslide-jni.so openslide_wrap.c *~ bin


.PHONY: all clean
