#include <hip/hip_common.h>
#define INFINITY (__builtin_inff())
#define NAN (__builtin_nanf(""))
  typedef float float8 __attribute__((ext_vector_type(8)));
  __device__ float8 make_float8(float x, float y, float z, float w, float a, float b, float c, float d) { return {x, y, z, w, a, b, c, d}; }
  extern "C" __global__
  void __launch_bounds__ (1, 1) r_3_4_5_3(float* data0, const float* data1, const float* data2) {
  int gidx0 = blockIdx.z; /* 3 */
  int gidx1 = blockIdx.y; /* 4 */
  int gidx2 = blockIdx.x; /* 5 */
  float acc0 = 0.0f;
  for (int ridx0 = 0; ridx0 < 3; ridx0++) {
    float val0 = *(data1+(gidx1*3)+ridx0);
    float val1 = *(data2+(gidx0*15)+gidx2+(ridx0*5));
    acc0 = ((val0*val1)+acc0);
  }
  *(data0+(gidx0*20)+(gidx1*5)+gidx2) = acc0;
}