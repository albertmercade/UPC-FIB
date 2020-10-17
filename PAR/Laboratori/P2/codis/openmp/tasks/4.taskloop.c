#include <stdio.h>
#include <stdlib.h>
#include <omp.h>	/* OpenMP */
#define N 12

/* Q1: Which iterations of the loops are executed by each thread */
/*     for each schedule kind?                                   */

int main() 
{
    int i;

    omp_set_num_threads(4);
    #pragma omp parallel 
    #pragma omp single
    {
    	printf("Going to distribute %d iterations with grainsize(5) ...\n", N);
    	#pragma omp taskloop grainsize(5) nogroup
    	for (i=0; i < N; i++) {
		int id=omp_get_thread_num();
		printf("Loop 1: (%d) gets iteration %d\n", id, i);	
    	}

    	printf("Going to distribute %d iterations with num_tasks(5) ...\n", N);
    	#pragma omp taskloop num_tasks(5)
    	for (i=0; i < N; i++) {
		int id=omp_get_thread_num();
		printf("Loop 2: (%d) gets iteration %d\n", id, i);	
    	}
    }

    return 0;
}
