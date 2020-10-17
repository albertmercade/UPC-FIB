CC       = icc

OPENMP   = -fopenmp
CFLAGS   = -Wall -g -O3 $(OPENMP) -fno-inline -I.  
CLIBS    = 

TARGET  = 1.schedule 2.nowait 3.collapse
OBJECTS	= $(TARGET)

program:	$(TARGET)

1.schedule: 1.schedule.c
	$(CC) $< $(CFLAGS) -o $@ -I. -L. $(CLIBS) -lm

2.nowait: 2.nowait.c
	$(CC) $< $(CFLAGS) -o $@ -I. -L. $(CLIBS) -lm

3.collapse: 3.collapse.c
	$(CC) $< $(CFLAGS) -o $@ -I. -L. $(CLIBS) -lm

clean:
	rm -f $(OBJECTS)

