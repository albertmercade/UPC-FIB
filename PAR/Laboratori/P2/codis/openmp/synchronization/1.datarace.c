#include <stdio.h>
#include <omp.h>
#define N 1 << 20

/* Execute several times before answering the questions   */
/* Q1: Is the program always executing correctly? Why?    */
/* Q2: Add two alternative directives to make it correct. */
/*     Explain why they make the execution correct.       */

int main() 
{
    int i, x=0;

    omp_set_num_threads(8);
    #pragma omp parallel for schedule(dynamic,1) private(i) reduction(+:x) //shared(x) no need for private(i)
    for (i=0; i < N; i++) {
//	#pragma omp atomic
	x++;
    }

    if (x==N) printf("Congratulations!, program executed correctly (x = %d)\n", x);
    else printf("Sorry, something went wrong, value of x = %d\n", x);

    return 0;
}
