#
# This is a Makefile for the NETMAP project.
# Typing 'make' or 'make netmap' will create the executable file.
#

# define some Makefile variables for the compiler and compiler flags
# to use Makefile variables later in the Makefile: $()
#
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
#
# for C++ define  CC = g++
CC = gcc
CFLAGS  = -g -Wall -I.
RM = rm -f

# typing 'make' will invoke the first target entry in the file 
# (in this case the default target entry)
# you can name this target entry anything, but "default" or "all"
# are the most commonly used names by convention
#
default: netmap

# To create the executable file count we need the object files
# netmap.o:
#
netmap:  netmap.o
	$(CC) $(CFLAGS) -o netmap netmap.o

# To create the object file netmap.o, we need the source files
# netmap.c and netmap.h:
#
netmap.o:  netmap.c netmap.h
	$(CC) $(CFLAGS) -c netmap.c

# To start over from scratch, type 'make clean'.  This
# removes the executable file, as well as old .o object
# files and *~ backup files:
#
clean: 
	$(RM) netmap *.o *~
