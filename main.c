#include <stdio.h>

int main()
{
  char name[1024];
  printf("Say your name: ");
  fgets(name, 1023, stdin);
  printf("%s, Says Hello!\n", name);
  return 0;  
}
