
// isUpperTest.c 
//
// how fast can you return t/f for isUpper.
// can assume all inputs will be alphabetic
// and of character type.

#include <stdio.h>
#include <ctype.h>

int isUpperSubtract(char inputChar)
{
    return ((inputChar - 'a') < 0);
}

int isUpperBitwise(char inputChar)
{
    return ((inputChar & 0b00100000) == 0)? 0:1;
}

int isUpperSTD(char inputChar)
{
    return isupper(inputChar);
}

int main()
{

    return 1;
}
