HALIDE_PATH = ../Halide
HALIDE_LIB = -L${HALIDE_PATH}/bin -lHalide
HALIDE_INC = -I${HALIDE_PATH}/include

all: cvt_color filter2D histogram gaussian gaussian_3x3 filter2D_nordom resize warp_affine

cvt_color: cvt_color.cpp
	c++ -std=c++11 ${HALIDE_INC} -o $@ $< ${HALIDE_LIB}

filter2D: filter2D.cpp
	c++ -std=c++11 ${HALIDE_INC} -o $@ $< ${HALIDE_LIB}

filter2D_nordom: filter2D_nordom.cpp
	c++ -std=c++11 ${HALIDE_INC} -o $@ $< ${HALIDE_LIB}

histogram: histogram.cpp
	c++ -std=c++11 ${HALIDE_INC} -o $@ $< ${HALIDE_LIB}

gaussian_3x3: gaussian_3x3.cpp
	c++ -std=c++11 ${HALIDE_INC} -o $@ $< ${HALIDE_LIB}

gaussian: gaussian.cpp
	c++ -std=c++11 ${HALIDE_INC} -o $@ $< ${HALIDE_LIB}

resize: resize.cpp
	c++ -std=c++11 ${HALIDE_INC} -o $@ $< ${HALIDE_LIB}

warp_affine: warp_affine.cpp
	c++ -std=c++11 ${HALIDE_INC} -o $@ $< ${HALIDE_LIB}

rec_filter: rec_filter.cpp
	c++ -std=c++11 ${HALIDE_INC} -o $@ $< ${HALIDE_LIB}

clean:
	rm -f gaussian_3x3 rec_filter cvt_color filter2D_nordom filter2D histogram resize gaussian warp_affine *.html
