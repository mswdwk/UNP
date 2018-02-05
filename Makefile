Q=@ 
DIRS=miniftpd PingY socket system_v tracertY pthread posix pthread/pthread_pool system_v/shmfifo
#$Q for dir in miniftpd PingY socket system_v tracertY pthread posix;
.PHONY:all clean
all:
	$Q for dir in $(DIRS);\
	do \
	$(MAKE) -C $$dir all;\
	done;\

clean:
	$Q for dir in ${DIRS};\
	do \
	$(MAKE) -C $$dir clean;\
	done;\

