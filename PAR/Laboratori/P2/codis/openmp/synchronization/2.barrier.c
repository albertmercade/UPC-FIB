#include <stdio.h>
#include <unistd.h>
#include <omp.h>

/* Q1: Can you predict the sequence of printf in this program? Do  */
/*     threads exit from the barrier in any specific order?        */

int main ()
{
    int myid;
    #pragma omp parallel private(myid) num_threads(4)
    {
        int sleeptime;

	myid=omp_get_thread_num();
        sleeptime=(2+myid*3)*1000;

	printf("(%d) going to sleep for %d milliseconds ...\n",myid,sleeptime);
	usleep(sleeptime);
	printf("(%d) wakes up and enters barrier ...\n",myid);
	#pragma omp barrier
	printf("(%d) We are all awake!\n",myid);	
    }	
    return 0;
}
