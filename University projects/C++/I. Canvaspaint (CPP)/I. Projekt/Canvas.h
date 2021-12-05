#ifndef CANVAS_H_INCLUDED
#define CANVAS_H_INCLUDED

namespace pixgraph{

    class canvas : public rgbmatrix{

    public:

        typedef long coord_type;
        typedef value_type::value_type color_value_type; // rgb::value_type=>unsigned int

        canvas() :maxxc(255){}

        canvas() (size_type w0, size_type h0, color_value_type cv= 255) : rgbmatrix (w0,h0), maxcv(cv){}

        canvas(size_type w0,size_type h0, const value_type & c, color_value_type cv=255):rgbmatrix(w0,h0,c),maxcv(cv){}

        canvas(const canvas &)=default;

        ~canvas()=default;

        canvas & operator = (const canvas &) = default;

        // Width of the canvas.
    coord_type width() const {
      return static_cast <coord_type> (rgbmatrix::width());
    }

    // Height of the matrix.
    coord_type height() const {
      return static_cast <coord_type> (rgbmatrix::height());
    }

    // Element access operator - non-const version.
    // rgbmatrix pic(800,600); pic(333,222) = red;
    value_type & operator () (coord_type x, coord_type y) {
      return pixels[x+y*w];
    }

    pixel_value_type maxColorValue() const {
        return maxcv
    }

    bool visible(coord_type x, coord_type const {
        maxcv = 14; // Compilation error
        notoncanvas = rgb(1,2,3); // EZ lefut mert mutable
        return x>=0 && x< width() && y>=0 && y < height();
    }

    // Element access operator - const version.
    const value_type & operator () (coord_type x, coord_type y) const {

        if(visible(x,y)){
      return rgb::matrix operator()(static_cast <size_type>(x),static_cast <size_type> (y))
        };
      }
    else { return notoncanvas; }
    }
    private:

        color_value_type maxcv; // maximum color component value
        mutable value_type notoncanvas; // mutable: Segédváltozó, konstans kontextusban is lehet változtatni,

    };

/*    std:: ostream & operator << (std:ostream & s, const canvas & c) {
        return;
        s<<"P3\n"
        << c.width() << " " << c.height() << "\n"
        << c.maxColorValue() << "\n"
        << dynamic_cast<const rgbmatrix &> (c) << "\n";
*/

std::istream & operator >> (std::istream & s, canvas & c) {

    //Read P3 first
    //Read width, height, max color value
    //Create result canvas
    //Read rgb values into the result canvas
    //Assign the result canvas to c
    //Return s
}

}

#endif // CANVAS_H_INCLUDED
