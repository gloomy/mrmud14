# Makefile for Solaris 2.1 on a Sparc 10 with gcc.
# Changes contributed by Trienne.

CC      = gcc
PROF    =
NOCRYPT =
C_FLAGS = -g -O -Wall $(PROF) $(NOCRYPT)
L_FLAGS = $(PROF) -lsocket -lnsl
SYSTEM = -DSYSV

O_FILES = act_comm.o act_info.o act_move.o act_obj.o act_wiz.o comm.o const.o \
          db.o fight.o handler.o interp.o magic.o save.o special.o update.o \
	  mob_prog.o mob_commands.o castle.o edit.o

../bin/md: $(O_FILES)
	rm -f ../bin/md
	$(CC) $(L_FLAGS) -o ../bin/md $(O_FILES)

.c.o: merc.h
	$(CC) -c $(C_FLAGS) $(SYSTEM) $<

clean:
	rm -f $(O_FILES)

