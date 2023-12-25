#include <hip/hip_common.h>
#define INFINITY (__builtin_inff())
#define NAN (__builtin_nanf(""))
  typedef float float8 __attribute__((ext_vector_type(8)));
  __device__ float8 make_float8(float x, float y, float z, float w, float a, float b, float c, float d) { return {x, y, z, w, a, b, c, d}; }
  extern "C" __global__
  void __launch_bounds__ (1, 1) r_2_4_11_13_4_3_3(float* data0, const float* data1, const float* data2) {
  int gidx0 = blockIdx.z; /* 2 */
  int gidx1 = blockIdx.y; /* 4 */
  int gidx2 = blockIdx.x; /* 143 */
  float acc0 = 0.0f;
  int alu0 = (gidx2%13);
  int alu1 = (gidx2/13);
  for (int ridx0 = 0; ridx0 < 4; ridx0++) {
    for (int ridx1 = 0; ridx1 < 3; ridx1++) {
      for (int ridx2 = 0; ridx2 < 3; ridx2++) {
        int alu2 = (alu0+(ridx2*2));
        float val0 = (((((alu0*(-1))+(ridx2*(-2)))<(-3))*(alu2<13)*(((alu1*(-1))+(ridx1*(-1)))<(-1))*((alu1+ridx1)<11)))?(*(data1+alu2+(alu1*9)+(ridx1*9)+(gidx0*324)+(ridx0*81)+(-22))):0.0f;
        float val1 = *(data2+(gidx1*9)+(ridx0*36)+(ridx1*(-3))+(ridx2*(-1))+8);
        acc0 = ((val0*val1)+acc0);
      }
    }
  }
  float alu3 = max(acc0,0.0f);
  *(data0+(gidx0*572)+(gidx1*143)+(alu1*13)+alu0) = alu3;
}