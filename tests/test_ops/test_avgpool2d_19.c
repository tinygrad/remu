#include <hip/hip_common.h>
#define INFINITY (__builtin_inff())
#define NAN (__builtin_nanf(""))
  typedef float float8 __attribute__((ext_vector_type(8)));
  __device__ float8 make_float8(float x, float y, float z, float w, float a, float b, float c, float d) { return {x, y, z, w, a, b, c, d}; }
  extern "C" __global__
  void __launch_bounds__ (1, 1) E_32_2_111_28n3(float* data0, const float* data1) {
  int gidx0 = blockIdx.z; /* 32 */
  int gidx1 = blockIdx.y; /* 2 */
  int gidx2 = blockIdx.x; /* 3108 */
  int alu0 = (gidx2%28);
  int alu1 = (gidx2/28);
  float val0 = ((alu1<110))?(*(data1+alu0+((((gidx0*44)+(gidx1*22)+(gidx2/140))%1408)*28))):0.0f;
  *(data0+(gidx0*6216)+(gidx1*3108)+(alu1*28)+alu0) = val0;
}