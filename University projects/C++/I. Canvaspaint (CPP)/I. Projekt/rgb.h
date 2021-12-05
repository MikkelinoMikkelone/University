#ifndef PIXGRAPH__RGB__H
#define PIXGRAPH__RGB__H

#include <iostream>

namespace pixgraph {

  struct rgb {

    typedef unsigned int value_type;

    value_type r;
    value_type g;
    value_type b;

    rgb() : r(0), g(0), b(0) { // initializes to black
    }

    rgb(value_type r0, value_type g0, value_type b0) : r(r0), g(g0), b(b0) {
    }

    rgb(const rgb &) = default;

    ~rgb() = default;

    rgb & operator = (const rgb &) = default;

    static rgb gray(value_type grayness) {
      return rgb(grayness, grayness, grayness);
    }
  };

  inline std::ostream & operator << (std::ostream & s, const rgb & c) {
    return s << c.r << " " << c.g << " " << c.b;
  }

  inline std::istream & operator >> (std::istream & s, rgb & c) {
    return s >> c.r >> c.g >> c.b;
  }

}

#endif
