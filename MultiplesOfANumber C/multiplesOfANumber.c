// Code by Toti Cavalcanti
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char *argv[])
{
    FILE *f;
    char line[1024];
    int x, n, i;

    f = fopen(argv[1], "r");

    while (fgets(line, 1024, f)) {

        if (line[0] == '\n')
        {
          continue;
        }

        x = atoi((char*)strtok(line, ","));
        n = atoi((char*)strtok(NULL, ","));

        if (x >= 0)
        {
            i = 0;
            while((i * n) < x)
            {
                i++;
            }
            printf("%d\n", i * n);

        }
        else
        {
            i = -1;
            while((i * n) >= x)
            {
                i--;
            }
            printf("%d\n", (i + 1) * n);
        }

    }
    return 0;
}
