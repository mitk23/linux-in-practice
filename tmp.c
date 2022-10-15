#include <stdio.h>

int main(void) {
  char str[5];

  int n = snprintf(str, sizeof(str), "%d", 1234);
  puts(str);

  n = snprintf(str, sizeof(str), "%d", 1234567890);
  puts(str);
}
