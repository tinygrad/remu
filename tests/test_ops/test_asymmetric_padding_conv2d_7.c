#include <hip/hip_common.h>
#define INFINITY (__builtin_inff())
#define NAN (__builtin_nanf(""))
  typedef float float8 __attribute__((ext_vector_type(8)));
  __device__ float8 make_float8(float x, float y, float z, float w, float a, float b, float c, float d) { return {x, y, z, w, a, b, c, d}; }
  extern "C" __global__
  void __launch_bounds__ (1, 1) r_4_4_2_2(float* data0, const float* data1, const float* data2) {
  int gidx0 = blockIdx.y; /* 4 */
  int gidx1 = blockIdx.x; /* 4 */
  float acc0 = 0.0f;
  int alu0 = (gidx0*4);
  for (int ridx0 = 0; ridx0 < 2; ridx0++) {
    for (int ridx1 = 0; ridx1 < 2; ridx1++) {
      int alu1 = (gidx1+ridx1);
      float val0 = (((alu1<4)*((gidx0+ridx0)<4)))?(*(data1+alu1+alu0+(ridx0*4))):0.0f;
      float val1 = *(data2+(ridx0*2)+ridx1);
      acc0 = ((val0*val1)+acc0);
    }
  }
  float alu2 = max(acc0,0.0f);
  *(data0+alu0+gidx1) = alu2;
}