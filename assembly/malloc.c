#include <stdio.h>
#include <stdlib.h>

int main() {
  char *x = (char *) malloc(10);
  x = "hello\n";
  printf("%s", x);
  return 0;
}
