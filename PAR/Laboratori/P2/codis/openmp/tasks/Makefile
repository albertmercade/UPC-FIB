CC       = icc

OPENMP   = -fopenmp
CFLAGS   = -Wall -g -O3 -fno-inline $(OPENMP)

TARGET  = 1.single 2.fibtasks 3.synchtasks 4.taskloop 

program: $(TARGET)

1.single: 1.single.c
	$(CC) $< $(CFLAGS) -fopenmp -o $@ 

2.fibtasks: 2.fibtasks.c
	$(CC) $< $(CFLAGS) -o $@ 

3.synchtasks: 3.synchtasks.c
	$(CC) $< $(CFLAGS) -fopenmp -o $@ 

4.taskloop: 4.taskloop.c
	$(CC) $< $(CFLAGS) -fopenmp -o $@ 

clean:
	rm -f $(TARGET)

