
<stdin>:	file format elf64-amdgpu

Disassembly of section .text:

0000000000001700 <E_4n123>:
	s_load_b128 s[4:7], s[0:1], null                           // 000000001700: F4080100 F8000000
	s_mov_b32 s2, s15                                          // 000000001708: BE82000F
	s_ashr_i32 s3, s15, 31                                     // 00000000170C: 86039F0F
	v_mov_b32_e32 v0, 0                                        // 000000001710: 7E000280
	s_lshl_b64 s[8:9], s[2:3], 1                               // 000000001714: 84888102
	s_load_b64 s[0:1], s[0:1], 0x10                            // 000000001718: F4040000 F8000010
	s_waitcnt lgkmcnt(0)                                       // 000000001720: BF89FC07
	s_add_u32 s6, s6, s8                                       // 000000001724: 80060806
	s_addc_u32 s7, s7, s9                                      // 000000001728: 82070907
	s_lshl_b64 s[2:3], s[2:3], 2                               // 00000000172C: 84828202
	global_load_u16 v1, v0, s[6:7]                             // 000000001730: DC4A0000 01060000
	s_add_u32 s0, s0, s2                                       // 000000001738: 80000200
	s_addc_u32 s1, s1, s3                                      // 00000000173C: 82010301
	s_load_b32 s0, s[0:1], null                                // 000000001740: F4000000 F8000000
	s_waitcnt vmcnt(0) lgkmcnt(0)                              // 000000001748: BF890007
	v_mul_lo_u32 v1, s0, v1                                    // 00000000174C: D72C0001 00020200
	s_add_u32 s0, s4, s2                                       // 000000001754: 80000204
	s_addc_u32 s1, s5, s3                                      // 000000001758: 82010305
	global_store_b32 v0, v1, s[0:1]                            // 00000000175C: DC6A0000 00000100
	s_nop 0                                                    // 000000001764: BF800000
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)                       // 000000001768: BFB60003
	s_endpgm                                                   // 00000000176C: BFB00000
