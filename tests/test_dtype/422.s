
<stdin>:	file format elf64-amdgpu

Disassembly of section .text:

0000000000001600 <E_3n70>:
	s_load_b128 s[0:3], s[0:1], null                           // 000000001600: F4080000 F8000000
	s_mov_b32 s4, s15                                          // 000000001608: BE84000F
	s_ashr_i32 s5, s15, 31                                     // 00000000160C: 86059F0F
	v_mov_b32_e32 v1, 0                                        // 000000001610: 7E020280
	s_lshl_b64 s[4:5], s[4:5], 2                               // 000000001614: 84848204
	s_waitcnt lgkmcnt(0)                                       // 000000001618: BF89FC07
	s_add_u32 s2, s2, s4                                       // 00000000161C: 80020402
	s_addc_u32 s3, s3, s5                                      // 000000001620: 82030503
	s_add_u32 s0, s0, s4                                       // 000000001624: 80000400
	s_load_b32 s2, s[2:3], null                                // 000000001628: F4000081 F8000000
	s_addc_u32 s1, s1, s5                                      // 000000001630: 82010501
	s_waitcnt lgkmcnt(0)                                       // 000000001634: BF89FC07
	v_cvt_f32_u32_e32 v0, s2                                   // 000000001638: 7E000C02
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000000163C: BF870091
	v_mul_f32_e32 v0, 0x3fb8aa3b, v0                           // 000000001640: 100000FF 3FB8AA3B
	v_add_f32_e32 v0, 0, v0                                    // 000000001648: 06000080
	s_delay_alu instid0(VALU_DEP_1)                            // 00000000164C: BF870001
	v_exp_f32_e32 v0, v0                                       // 000000001650: 7E004B00
	global_store_b32 v1, v0, s[0:1]                            // 000000001654: DC6A0000 00000001
	s_nop 0                                                    // 00000000165C: BF800000
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)                       // 000000001660: BFB60003
	s_endpgm                                                   // 000000001664: BFB00000
