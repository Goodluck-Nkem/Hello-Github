#include <stdio.h>
#include <string.h>

int main()
{
  char name[1024];
  printf("Say your name: ");
  fgets(name, 1023, stdin); /* read input */
  name[strlen(name) - 1] = '\0'; /*remove trailing newline */
  printf("%s, Says Hello!\n", name);
  return 0;
}
