#include <hip/hip_common.h>
#define INFINITY (__builtin_inff())
#define NAN (__builtin_nanf(""))
  typedef float float8 __attribute__((ext_vector_type(8)));
  __device__ float8 make_float8(float x, float y, float z, float w, float a, float b, float c, float d) { return {x, y, z, w, a, b, c, d}; }
  extern "C" __global__
  void __launch_bounds__ (1, 1) r_4_6_10_6_3_2_2(float* data0, const float* data1, const float* data2) {
  int gidx0 = blockIdx.z; /* 4 */
  int gidx1 = blockIdx.y; /* 6 */
  int gidx2 = blockIdx.x; /* 60 */
  float acc0 = 0.0f;
  int alu0 = (gidx2/6);
  int alu1 = (gidx2%6);
  for (int ridx0 = 0; ridx0 < 3; ridx0++) {
    for (int ridx1 = 0; ridx1 < 2; ridx1++) {
      for (int ridx2 = 0; ridx2 < 2; ridx2++) {
        float val0 = *(data1+(gidx0*231)+(alu0*7)+alu1+(ridx0*77)+(ridx1*7)+ridx2);
        float val1 = *(data2+(gidx1*12)+(ridx0*4)+(ridx1*2)+ridx2);
        acc0 = ((val0*val1)+acc0);
      }
    }
  }
  float alu2 = max(acc0,0.0f);
  *(data0+(gidx0*360)+(gidx1*60)+(alu0*6)+alu1) = alu2;
}