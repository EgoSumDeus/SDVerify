CC ?= gcc
CFLAGS += -std=c99 -Wall -Wextra -pedantic -MMD -ggdb

TARGETS = SDwrite SDread

all: $(TARGETS)

SDwrite: utils.o SDwrite.o
	$(CC) -o $@ $^ -lm

SDread: utils.o SDread.o
	$(CC) -o $@ $^

-include *.d

PHONY: cscope clean

cscope:
	cscope -b *.c *.h

clean:
	rm -f *.o *.d cscope.out $(TARGETS)
