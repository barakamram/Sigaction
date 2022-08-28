CC=gcc
AR=ar
FLAGS= -Wall -g

all: signal

signal: Signals.o
	$(CC) $(FLAGS) -o Signals Signals.o

Signals.o: Signals.c
	$(CC) $(FLAGS) -c Signals.c

.PHONY: clean all
clean:
	rm -f *.o Signals
