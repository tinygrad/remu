
<stdin>:	file format elf64-amdgpu

Disassembly of section .text:

0000000000001700 <E_4n155>:
	s_clause 0x1                                               // 000000001700: BF850001
	s_load_b128 s[4:7], s[0:1], null                           // 000000001704: F4080100 F8000000
	s_load_b64 s[0:1], s[0:1], 0x10                            // 00000000170C: F4040000 F8000010
	s_mov_b32 s2, s15                                          // 000000001714: BE82000F
	s_ashr_i32 s3, s15, 31                                     // 000000001718: 86039F0F
	v_mov_b32_e32 v1, 0                                        // 00000000171C: 7E020280
	s_lshl_b64 s[2:3], s[2:3], 2                               // 000000001720: 84828202
	s_waitcnt lgkmcnt(0)                                       // 000000001724: BF89FC07
	s_add_u32 s6, s6, s2                                       // 000000001728: 80060206
	s_addc_u32 s7, s7, s3                                      // 00000000172C: 82070307
	s_add_u32 s0, s0, s2                                       // 000000001730: 80000200
	s_load_b32 s6, s[6:7], null                                // 000000001734: F4000183 F8000000
	s_addc_u32 s1, s1, s3                                      // 00000000173C: 82010301
	s_load_b32 s0, s[0:1], null                                // 000000001740: F4000000 F8000000
	s_waitcnt lgkmcnt(0)                                       // 000000001748: BF89FC07
	v_cvt_f32_u32_e32 v0, s6                                   // 00000000174C: 7E000C06
	s_delay_alu instid0(VALU_DEP_1)                            // 000000001750: BF870001
	v_mul_f32_e32 v0, s0, v0                                   // 000000001754: 10000000
	s_add_u32 s0, s4, s2                                       // 000000001758: 80000204
	s_addc_u32 s1, s5, s3                                      // 00000000175C: 82010305
	global_store_b32 v1, v0, s[0:1]                            // 000000001760: DC6A0000 00000001
	s_nop 0                                                    // 000000001768: BF800000
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)                       // 00000000176C: BFB60003
	s_endpgm                                                   // 000000001770: BFB00000
