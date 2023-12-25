#include <hip/hip_common.h>
#define INFINITY (__builtin_inff())
#define NAN (__builtin_nanf(""))
  typedef float float8 __attribute__((ext_vector_type(8)));
  __device__ float8 make_float8(float x, float y, float z, float w, float a, float b, float c, float d) { return {x, y, z, w, a, b, c, d}; }
  extern "C" __global__
  void __launch_bounds__ (1, 1) E_2925n1(float* data0, const float* data1, const float* data2, const float* data3) {
  int gidx0 = blockIdx.x; /* 2925 */
  float val0 = *(data1+gidx0);
  float val1 = *(data2+gidx0);
  float val2 = *(data3+0);
  float alu0 = max((-val0),0.0f);
  float alu1 = ((val1+1.0f)*val2);
  float alu2 = (alu1+alu1);
  float alu3 = max(val0,0.0f);
  *(data0+gidx0) = ((-((float)((0.0f<alu0))*alu2))+((float)((0.0f<alu3))*alu2));
}