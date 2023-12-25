#include <hip/hip_common.h>
#define INFINITY (__builtin_inff())
#define NAN (__builtin_nanf(""))
  typedef float float8 __attribute__((ext_vector_type(8)));
  __device__ float8 make_float8(float x, float y, float z, float w, float a, float b, float c, float d) { return {x, y, z, w, a, b, c, d}; }
  extern "C" __global__
  void __launch_bounds__ (1, 1) r_5_3(float* data0, const float* data1) {
  int gidx0 = blockIdx.x; /* 5 */
  float acc0 = 0.0f;
  for (int ridx0 = 0; ridx0 < 3; ridx0++) {
    int alu0 = (gidx0+(ridx0*5));
    int alu1 = (alu0%6);
    float val0 = (((alu0<12)*(alu1<4)))?(*(data1+(alu1*2)+((alu0/6)%2))):0.0f;
    acc0 = (val0+acc0);
  }
  *(data0+gidx0) = acc0;
}