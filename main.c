#include <stdio.h>
#include <string.h>

void print_message (void)
{
  puts("string 1");
  if(1)
  {
    puts("string 2");
  }
}

int main()
{
  char name[1024];
  printf("Say your name: ");
  fgets(name, 1023, stdin); /* read input */
  name[strlen(name) - 1] = '\0'; /*remove trailing newline */
  printf("%s, Says Hello!\n", name);
  print_message();
  return 0;
}
