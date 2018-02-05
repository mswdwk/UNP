.PHONY:clean all
CC=gcc
#CC=g++
CFLAGS=-Wall -g  -I.
CFLAGS+=-std=c99 -lrt -lm 
BIN=miniftpd
OBJS=main.o sysutil.o session.o ftpproto.o nobody.o strtools.o tunable.o parseconf.o privsock.o hash_link.o
LIBS=-lcrypt
all:$(BIN)
$(BIN):$(OBJS)
	$(CC) $(CFLAGS) $^ -o $@ $(LIBS)
%.o:%.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f *.o $(BIN)  