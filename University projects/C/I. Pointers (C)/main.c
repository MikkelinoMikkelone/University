#include <stdio.h>
#include <stdlib.h>

int main()
{
    srand(time(NULL));
    int i,j, array[100], temporary;
    int *set ;

    for(i=0;i<100;i++)
    {
    array[i]=rand();
    printf("%p\n",array[i]);
    }
    printf("\n\nAfter transformation:\n\n ");

 for(i=0;i<100;i++)
     {
      set=&array[i];
       if(*set%2==0)
       {*set=0;}
     }

       for(i=0;i<100;i++)
    {

    printf("%d\n",array[i]);
    }


       return 0;

     }

