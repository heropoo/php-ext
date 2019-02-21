#include <stdio.h>
#define STR(x) #x

#define TEST(x,y) do{x++;y++;} while(0)

int main()
{
    printf("%s\n", STR(It is a log string));
    int x=1,y=2,z;
    TEST(x, y);
    printf("%d*%d\n", x,y);
    return 0;
} 
