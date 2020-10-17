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

    printf("Going to distribute %d iterations with schedule(static) ...\n", N);
    #pragma omp parallel for schedule(static)
    for (i=0; i < N; i++) {
	int id=omp_get_thread_num();
	printf("Loop 1: (%d) gets iteration %d\n",id,i);	
    }

    printf("Going to distribute %d iterations with schedule(static, 2) ...\n", N);
    #pragma omp parallel for schedule(static, 2)
    for (i=0; i < N; i++) {
	int id=omp_get_thread_num();
	printf("Loop 2: (%d) gets iteration %d\n",id,i);	
    }

    printf("Going to distribute %d iterations with schedule(dynamic, 2) ...\n", N);
    #pragma omp parallel for schedule(dynamic,2)
    for (i=0; i < N; i++) {
	int id=omp_get_thread_num();
	printf("Loop 3: (%d) gets iteration %d\n",id,i);	
    }

    printf("Going to distribute %d iterations with schedule(guided, 2) ...\n", N);
    #pragma omp parallel for schedule(guided,2)
    for (i=0; i < N; i++) {
	int id=omp_get_thread_num();
	printf("Loop 4: (%d) gets iteration %d\n",id,i);	
    }

    return 0;
}
