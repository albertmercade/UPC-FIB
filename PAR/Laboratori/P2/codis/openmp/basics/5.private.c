#include <stdio.h>
#include <omp.h>

int b;

void do_work()
{
    int i;

    #pragma omp parallel
    {
        #pragma omp for private(b) 
        for (i = b; i < 100; i++) {
            printf("thread = %d, i = %d, b = %d\n", omp_get_thread_num (), i, b);
            b++;
        }
    }
}

int main(int argc, char **argv)
{
    b = 50;
    omp_set_num_threads(3);
    do_work();
    return 0;
}
