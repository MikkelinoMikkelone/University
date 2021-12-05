/*
 * Compilation:
 * c++ -Wall -std=c++11 -c komplex-test.cc
 */

#include <iostream>
#include <cmath>

#include "komplex.h"  // Include komplex interface definition.

// Initialization of a static template class variable.
// It may occur in only one compilation unit.
template <typename T> size_t komplex<T>::N = 0;

#ifndef M_PI
const double M_PI = 3.1415962; // Should M_PI missing we define our own here.
#endif

void komplex_test_1() {

  std::cout << "komplex<double> k1(1.0, 10.0);\n";
  komplex<double> k1(1.0, 10.0);

  std::cout << "komplex<double> k2(2.0, 20.0);\n";
  komplex<double> k2(2.0, 20.0);

  std::cout << "komplex<double> k3 = k1;\n";
  komplex<double> k3 = k1; // This is a copy construction, not an assignment!!!
  std::cout << "k3 = (k1 + k2);\n";
  k3 = (k1 + k2);  // This is an assignment. k3 = operator+(k1, k2)

  std::cout << "komplex<double> k4 = (k1 + k2);\n";
  komplex<double> k4 = (k1 + k2); // Initialization from a temporary. No copy construction.

  std::cout << k1 << " + " << k2 << " = " << k3 << "\n";

  std::cout << "abs(" << k4 << ") = " << abs(k4) << "\n";

  std::cout << "k3 = k1+2;\n";
  k3 = k1+2.0; // operator+(k1,2.0)

  std::cout << "k4 = 2+k1;\n";
  k4 = 2.0+k1; // operator+(2.0,k1)

  std::cout << "komplex<double> k5 = komplex<double>::fromVec(10,M_PI/6);\n";
  komplex<double> k5 = komplex<double>::fromVec(10,M_PI/6);
  std::cout << "k5 = " << k5 << "\n";
}

void komplex_test_2() {

  // Reserving memory for one komplex involves the "new" and "delete"
  // operators (without the square brackets). Non-empty constructors may be
  // invoked.

  // Reserving memory for one komplex. The empty constructor will be used.
  std::cout << "komplex<double> *kp_one = new komplex<double>;\n";
  komplex<double> *kp_one = new komplex<double>;
  std::cout << "delete kp_one;\n";
  delete kp_one;

  // Reserving memory for one komplex and initializing it to a non-default
  // value. The appropriate constructor will be used.
  std::cout << "kp_one = new komplex<double>(2);\n";
  kp_one = new komplex<double>(2);
  std::cout << "delete kp_one;\n";
  delete kp_one;

  // Reserving memory for one komplex and initializing it to a non-default
  // value. The appropriate constructor will be used.
  std::cout << "kp_one = new komplex<double>(2,22);\n";
  kp_one = new komplex<double>(2,22);
  std::cout << "delete kp_one;\n";
  delete kp_one;

  // ---

  // Reserving memory for multiple komplexes involves the "new[]" and "delete[]"
  // operators (with the square brackets).

  // Initializing with the default constructor.
  std::cout << "komplex<double> *kp_many = new komplex<double> [3];\n";
  komplex<double> *kp_many = new komplex<double> [3];
  std::cout << "delete [] kp_many;\n";
  delete [] kp_many;

  // Initializing with some non-default constructor.
  std::cout << "kp_many = new komplex<double> [3] { {}, {1}, {2,22} };\n";
  kp_many = new komplex<double> [3] { {}, {1}, {2,22} };
  std::cout << "delete [] kp_many;\n";
  delete [] kp_many;

}

int main(int argc, char **argv) {

  komplex_test_1();
  std::cout << "\n========================================================\n\n";
  komplex_test_2();
  return 0;
}
