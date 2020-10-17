#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <omp.h>	/* OpenMP */
#define N 4

/* Q1: Which could be a possible sequence of printf when executing    */
/*     the program?                                                   */
/* Q2: How would the sequence of printf change if the nowait clause   */
/*     is removed from the first for directive?                       */
/* Q3: What would happen if dynamic is changed to static in schedule  */
/*     in both loops? (keeping the nowait clause)                     */

int main() 
{
    int i;

    omp_set_num_threads(N);
    #pragma omp parallel 
    {
	#pragma omp for schedule(static, 1) nowait
        for (i=0; i < N/2; i++) {
		int id = omp_get_thread_num();
		printf("Loop 1: thread (%d) gets iteration %d\n", id, i);
		sleep(2);
        }

	#pragma omp for schedule(static, 1) nowait
        for (i=N/2; i < N; i++) {
		int id = omp_get_thread_num();
		printf("Loop 2: thread (%d) gets iteration %d\n", id, i);	
		sleep(2);
        }
    }

    return 0;
}
