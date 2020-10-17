CC       = icc

OPENMP	 = -fopenmp
CFLAGS   = -Wall -g -O3 -fno-inline $(OPENMP)

TARGET   = 1.hello 2.hello 3.how_many 4.data_sharing 

program: $(TARGET)

1.hello: 1.hello.c
	$(CC) $(CFLAGS) -o $@ $<

2.hello: 2.hello.c
	$(CC) $(CFLAGS) -o $@ $<

3.how_many: 3.how_many.c
	$(CC) $(CFLAGS) -o $@ $<

4.data_sharing: 4.data_sharing.c
	$(CC) $(CFLAGS) -o $@ $<

clean: 
	rm -f $(TARGET)

