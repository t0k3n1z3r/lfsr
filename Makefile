
CC = g++
CXXFLAGS = -Wall -Wextra -Werror

VERSTR := $(shell cat VERSION)

ts-proc:
	$(CC) -o lfsr-gen source/main_gen.cpp source/lfsr.cpp $(CXXFLAGS) -DVERSION='"$(VERSTR)"'
	$(CC) -o lfsr-rec source/main_rec.cpp source/lfsr.cpp $(CXXFLAGS) -DVERSION='"$(VERSTR)"'

.PHONY: clean

clean:
	rm -rf source/*.o lfsr-rec lfsr-gen