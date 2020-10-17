CC       = icc

OPENMP   = -fopenmp
CFLAGS   = -Wall -g -O3 $(OPENMP) -fno-inline -I.  
CLIBS    = 

TARGET  = 1.datarace 2.barrier 3.ordered 
OBJECTS	= $(TARGET)

program:	$(TARGET)

1.datarace: 1.datarace.c
	$(CC) $< $(CFLAGS) -o $@ -I. -L. $(CLIBS) -lm

2.barrier: 2.barrier.c
	$(CC) $< $(CFLAGS) -o $@ -I. -L. $(CLIBS) -lm

3.ordered: 3.ordered.c
	$(CC) $< $(CFLAGS) -o $@ -I. -L. $(CLIBS) -lm

clean:
	rm -f $(OBJECTS)

