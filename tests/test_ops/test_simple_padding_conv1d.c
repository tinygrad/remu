#include <hip/hip_common.h>
#define INFINITY (__builtin_inff())
#define NAN (__builtin_nanf(""))
  typedef float float8 __attribute__((ext_vector_type(8)));
  __device__ float8 make_float8(float x, float y, float z, float w, float a, float b, float c, float d) { return {x, y, z, w, a, b, c, d}; }
  extern "C" __global__
  void __launch_bounds__ (1, 1) r_6_6_9_2_5(float* data0, const float* data1, const float* data2) {
  int gidx0 = blockIdx.z; /* 6 */
  int gidx1 = blockIdx.y; /* 6 */
  int gidx2 = blockIdx.x; /* 9 */
  float acc0 = 0.0f;
  for (int ridx0 = 0; ridx0 < 2; ridx0++) {
    for (int ridx1 = 0; ridx1 < 5; ridx1++) {
      int alu0 = (gidx2+ridx1);
      float val0 = (((((gidx2*(-1))+(ridx1*(-1)))<0)*(alu0<12)))?(*(data1+alu0+(gidx0*22)+(ridx0*11)+(-1))):0.0f;
      float val1 = *(data2+(gidx1*10)+(ridx0*5)+ridx1);
      acc0 = ((val0*val1)+acc0);
    }
  }
  float alu1 = max(acc0,0.0f);
  *(data0+(gidx0*54)+(gidx1*9)+gidx2) = alu1;
}