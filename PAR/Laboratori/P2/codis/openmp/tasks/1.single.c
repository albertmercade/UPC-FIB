#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <omp.h>	/* OpenMP */
#define N 20

/* Q1: Can you explain why all threads contribute to the execution */
/*     of instances of the single worksharing construct? Why are   */
/*     those instances appear to be executed in bursts?            */

int main() 
{
    int i;

    omp_set_num_threads(4);
    #pragma omp parallel 
    for (int i=0; i<N; i++)
        #pragma omp single nowait
        {
    	    printf("Thread %d executing instance %d of single\n", omp_get_thread_num(), i);
            sleep(1);
        }

    return 0;
}
