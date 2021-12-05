#include <iostream>
#include <fstream>
#include "rgb.h"
#include "rgbmatrix.h"

using pixgraph::rgb;
using pixgraph::rgbmatrix;

int main(int argc, char **argv) {

  rgb rainbow[] = {
    {255,   0,   0},
    {255, 165,   0},
    {255, 255,   0},
    {  0, 128,   0},
    {  0,   0, 255},
    { 75,   0, 130},
    {238, 130, 238}
  };

  rgbmatrix::size_type pic_width    = 1400;
  rgbmatrix::size_type pic_height   =  700;
  rgbmatrix::size_type stripe_width =  100;
  rgb::value_type      max_pixval   =  255;

  rgbmatrix picture(pic_width, pic_height);

  for (rgbmatrix::size_type y = 0; y < picture.height(); y++) {
    rgb color = rainbow[y/stripe_width];
    for (rgbmatrix::size_type x = 0; x < picture.width(); x++) {
      picture(x,y) = color;
    }
  }
  std::ofstream picfile("test.ppm");

  picfile
  << "P3\n"
  << picture.width() << " " << picture.height() << "\n"
  << max_pixval << "\n"
  << picture << "\n";

  picfile.close();

  return 0;
}
