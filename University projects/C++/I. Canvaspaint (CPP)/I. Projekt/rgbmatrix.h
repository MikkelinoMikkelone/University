#ifndef PIXGRAPH__RGBMATRIX__H
#define PIXGRAPH__RGBMATRIX__H

#include <iostream>
#include <vector>

namespace pixgraph {

  class rgbmatrix {

  public:

    typedef rgb                                value_type;
    typedef std::vector<value_type>        container_type;
    typedef container_type::size_type           size_type;
    typedef container_type::iterator             iterator;
    typedef container_type::const_iterator const_iterator;

  private:

    size_type           w; // width in pixels
    size_type           h; // height in pixels
    container_type pixels; // pixel container

  public:

    // An empty rgbmatrix doesn't contain pixels.
    rgbmatrix() : w(0), h(0) {
    }

    // Create an rgbmatrix of the given dimension.
    rgbmatrix(size_type w0, size_type h0) : w(w0), h(h0), pixels(w0*h0) {
    }

    // Create an rgbmatrix of the given dimension with all pixels of the given color.
    rgbmatrix(size_type w0, size_type h0, const value_type & c) : w(w0), h(h0), pixels(w0*h0, c) {
    }

    // Copy constructor.
    rgbmatrix(const rgbmatrix &) = default;

    // Move constructor.
    // STL vector has it so it's a good idea to provide one for rgbmatrix as well.
    rgbmatrix(rgbmatrix &&) = default;

    // Destructor.
    // We can leave the job to the destructors of the data members.
    ~rgbmatrix() = default;

    // Copy assignment.
    rgbmatrix & operator = (const rgbmatrix &) = default;

    // Move assignment.
    // STL vector has it so it's a good idea to provide one for rgbmatrix as well.
    rgbmatrix & operator = (rgbmatrix &&) = default;

    // Width of the matrix.
    size_type width() const {
      return w;
    }

    // Height of the matrix.
    size_type height() const {
      return h;
    }

    // Element access operator - non-const version.
    // rgbmatrix pic(800,600); pic(333,222) = red;
    value_type & operator () (size_type x, size_type y) {
      return pixels[x+y*w];
    }

    // Element access operator - const version.
    const value_type & operator () (size_type x, size_type y) const {
      return pixels[x+y*w];
    }

    iterator begin() {
      return pixels.begin();
    }

    const_iterator begin() const {
      return pixels.begin();
    }

    iterator end() {
      return pixels.end();
    }

    const_iterator end() const {
      return pixels.end();
    }
  };

  inline std::ostream & operator << (std::ostream & s, const rgbmatrix & m) {

    for (auto & pix:m) {
      s << pix << " ";
    }

    return s;
  }

  inline std::istream & operator >> (std::istream & s, rgbmatrix & m) {

    for (auto & pix:m) {
      s >> pix;
    }

    return s;
  }

}

#endif
