#ifndef KOMPLEX__H
#define KOMPLEX__H

#include <iostream>
#include <cmath>

// A template imlementation of the komplex class.

template <typename T>
class komplex {

public:

  typedef T value_type;

  value_type real;
  value_type imag;

private:

  // With C++17 inline data members are possible:
  // inline static size_t N = 0;
  // Earlier standards do not allow this easy initialization of static variables.
  static size_t N; // number of komplex objects created
         size_t S; // serial number of a komplex object

public:

  // Empty (or default) constructor.
  komplex() : real(0), imag(0), S(++N) {
    std::cout << "ENTERING " << __PRETTY_FUNCTION__ << " " << S << " " << this << "\n";
  }

  // Constructor with one value_type parameter.
  // This converts a value_type into a komplex.
  komplex(const value_type & r) : real(r), imag(0), S(++N) {
    std::cout << "ENTERING " << __PRETTY_FUNCTION__ << " " << S << " " << this << "\n";
  }

  // Constructor with two value_type parameters.
  komplex(const value_type & r, const value_type & i) : real(r), imag(i), S(++N) {
    std::cout << "ENTERING " << __PRETTY_FUNCTION__ << " " << S << " " << this << "\n";
  }

  // Copy constructor.
  komplex(const komplex & z) : real(z.real), imag(z.imag), S(++N) {
    std::cout << "ENTERING " << __PRETTY_FUNCTION__ << " " << S << " " << this << "\n";
  }

  // Assignment operator.
  komplex & operator = (const komplex & b) {
    std::cout << "ENTERING " << __PRETTY_FUNCTION__ << " " << S << " " << this << "\n";
    real = b.real;
    imag = b.imag;
    return *this;
  }

  // Destructor.
  ~komplex() {
    std::cout << "ENTERING " << __PRETTY_FUNCTION__ << " " << S << " " << this << "\n";
  }

  // Factory method to create a komplex from polar coordinates.
  static komplex fromVec(const value_type & r, const value_type & fi) {
    return komplex(r*cos(fi), r*sin(fi));
  }
};

// Addition of two komplexes. Implicit type conversion does not work in this
// case because the compiler uses pattern matching when creating code from
// templates and only exact matches are accepted. So there will be two more
// versions of this operator taking a komplex and a T parameter in both orders.
template <typename T>
inline komplex<T> operator +(const komplex<T> & x, const komplex<T> & y) {
  std::cout << "ENTERING " << __PRETTY_FUNCTION__ << "\n";
  return komplex<T>(x.real + y.real, x.imag + y.imag);
}

// Addition of a T and a komplex.
template <typename T>
inline komplex<T> operator +(const T & x, const komplex<T> & y) {
  std::cout << "ENTERING " << __PRETTY_FUNCTION__ << "\n";
  return komplex<T>(x + y.real, y.imag);
}

// Addition of a komplex and a T.
template <typename T>
inline komplex<T> operator +(const komplex<T> & x, const T & y) {
  std::cout << "ENTERING " << __PRETTY_FUNCTION__ << "\n";
  return komplex<T>(x.real + y, x.imag);
}

template <typename T>
inline std::ostream & operator << (std::ostream & s, const komplex<T> & z) {
  return s << "(" << z.real << "," << z.imag << ")";
}

template <typename T>
inline typename komplex<T>::value_type abs(const komplex<T> & z) {
  return sqrt(z.real*z.real+z.imag*z.imag);
}

#endif
