#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

/* If the OMP_NUM_THREADS variable is set to 8 with                     */
/* export OMP_NUM_THREADS=8                                             */
/* Q1: How many "Hello world ..." lines are printed on the screen?      */
/* Q2: What does omp_get_num_threads return when invoked outside and    */
/*     inside a parallel region?                                        */

int main ()
{
    printf("Starting, I'm alone ... (%d thread)\n", omp_get_num_threads());
    #pragma omp parallel
    printf("Hello world from the first parallel (%d)!\n", omp_get_num_threads());
	
    for (int i=2; i<4; i++) {
        omp_set_num_threads(i);
        #pragma omp parallel
        printf("Hello world from the second parallel (%d)!\n", omp_get_num_threads());
    }

    printf("Outside parallel, nobody else here ... (%d thread)\n", omp_get_num_threads());

    #pragma omp parallel num_threads(4)
    printf("Hello world from the third parallel (%d)!\n", omp_get_num_threads());

    #pragma omp parallel 
    printf("Hello world from the fourth  parallel (%d)!\n", omp_get_num_threads());

    printf("Finishing, I'm alone again ... (%d thread)\n", omp_get_num_threads());
    return 0;
}
