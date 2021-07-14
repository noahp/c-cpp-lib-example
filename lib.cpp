#include <iostream>

#include "internal.h"

int internal(int argc) {
  std::cout << "args\n";
  std::cout << argc << "\n";

  return 0;
}
