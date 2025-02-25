// A simple program that computes the square root of a number
#include <cmath>
// MODIFICATION: remove #include <cstdlib> to use C++11 features instead
#include <iostream>
#include <string>
// MODIFICATION: Include configured header file
#include "TutorialConfig.h"

int main(int argc, char* argv[])
{
  if (argc < 2) {
    /*std::cout << "Usage: " << argv[0] << " number" << std::endl;
    return 1; */
    // MODIFICATION: print out executable name and version number
    std::cout << argv[0] << " Version " << Tutorial_VERSION_MAJOR << "." << Tutorial_VERSION_MINOR << std::endl;
    std::cout << "Usage: " << argv[0] << " number" << std::endl;
    return 1;
  }

  // convert input to double
  const double inputValue = std::stod(argv[1]);

  // calculate square root
  const double outputValue = sqrt(inputValue);
  std::cout << "The square root of " << inputValue << " is " << outputValue
            << std::endl;
  return 0;
}