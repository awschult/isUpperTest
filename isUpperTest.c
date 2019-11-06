
// isUpperTest.c 
//
// how fast can you return t/f for isUpper.
// can assume all inputs will be alphabetic
// and of character type.

#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <time.h>

#define MAX_LIST_SIZE 1000000  //megabyte


int isUpperSubtract(char inputChar)
{
    return ((inputChar - 'a') < 0);
}

int isUpperBitwise(char inputChar)
{
    return ((inputChar & 0x40) >> 6);
}

int isUpperSTD(char inputChar)
{
    return isupper(inputChar);
}



int main()
{

    //create very large buffer of contiguous memory
    // do not initialize, use garbage as 'random'
    // numbers. modulo to create all characters.

    char* theList = malloc(MAX_LIST_SIZE*sizeof(char));

    if(theList == NULL)
       return 1;

    printf("Creating %d characters...\n", MAX_LIST_SIZE);

    for(long x = 0; x < MAX_LIST_SIZE;x++)
    {
        theList[x] = (theList[x] % 58) + 65;
    }


    clock_t start, end;
    int answer = 0;

//////////////
   
    printf("Testing std function.\n");
    start = clock();
  
    unsigned long x = MAX_LIST_SIZE;
    while(x--)
        answer = isUpperSTD(theList[x]);

    end = clock();

    printf("Answer = %d\n", answer);
    printf("Total ticks for std:  %ld\n", end - start);


/////////////
    printf("Testing bitwise function.\n");
    start = clock();
  
    x = MAX_LIST_SIZE;
    while(x--)
        answer = isUpperBitwise(theList[x]);

    end = clock();

    printf("Answer = %d\n", answer);
    printf("Total ticks for Bitwise:  %ld\n", end - start);


///////////////
    printf("Testing subtract function.\n");
    start = clock();
  
    x = MAX_LIST_SIZE;
    while(x--)
        answer = isUpperSubtract(theList[x]);

    end = clock();

    printf("Answer = %d\n", answer);
    printf("Total ticks for subtract:  %ld\n", end - start);


    //free up the memory
    free(theList);
    return 0;
}
