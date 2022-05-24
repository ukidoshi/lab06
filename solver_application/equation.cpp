#include <iostream>

#include "formatter_ex.h"
#include "solver.h"

int
main(int argc, char* argv[])
{
  float a = 0;
  for (size_t i = 0; argv[1][i] != '\0'; ++i) {
    a = a * 10 + (float(argv[1][i]) - 48);
  }
  float b = 0;
  for (size_t i = 0; argv[2][i] != '\0'; ++i) {
    b = b * 10 + (float(argv[2][i]) - 48);
  }
  float c = 0;
  for (size_t i = 0; argv[3][i] != '\0'; ++i) {
    c = c * 10 + (float(argv[3][i]) - 48);
  }

  std::cout << a << " " << b << " " << c << std::endl;

  float x1 = 0;
  float x2 = 0;

  try {
    solve(a, b, c, x1, x2);

    formatter(std::cout, "x1 = " + std::to_string(x1));
    formatter(std::cout, "x2 = " + std::to_string(x2));
  } catch (const std::logic_error& ex) {
    formatter(std::cout, ex.what());
  }

  return 0;
}
