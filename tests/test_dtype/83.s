
<stdin>:	file format elf64-amdgpu

Disassembly of section .text:

0000000000001600 <E_10n41>:
	s_load_b128 s[0:3], s[0:1], null                           // 000000001600: F4080000 F8000000
	s_mov_b32 s4, s15                                          // 000000001608: BE84000F
	s_ashr_i32 s5, s15, 31                                     // 00000000160C: 86059F0F
	v_mov_b32_e32 v1, 0                                        // 000000001610: 7E020280
	s_lshl_b64 s[6:7], s[4:5], 3                               // 000000001614: 84868304
	s_waitcnt lgkmcnt(0)                                       // 000000001618: BF89FC07
	s_add_u32 s2, s2, s6                                       // 00000000161C: 80020602
	s_addc_u32 s3, s3, s7                                      // 000000001620: 82030703
	s_load_b64 s[2:3], s[2:3], null                            // 000000001624: F4040081 F8000000
	s_waitcnt lgkmcnt(0)                                       // 00000000162C: BF89FC07
	s_clz_i32_u32 s6, s3                                       // 000000001630: BE860A03
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 000000001634: BF870499
	s_min_u32 s6, s6, 32                                       // 000000001638: 8986A006
	s_lshl_b64 s[2:3], s[2:3], s6                              // 00000000163C: 84820602
	s_sub_i32 s6, 32, s6                                       // 000000001640: 818606A0
	s_min_u32 s2, s2, 1                                        // 000000001644: 89828102
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 000000001648: BF870499
	s_or_b32 s2, s3, s2                                        // 00000000164C: 8C020203
	v_cvt_f32_u32_e32 v0, s2                                   // 000000001650: 7E000C02
	s_lshl_b64 s[2:3], s[4:5], 2                               // 000000001654: 84828204
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 000000001658: BF8700A9
	s_add_u32 s0, s0, s2                                       // 00000000165C: 80000200
	s_addc_u32 s1, s1, s3                                      // 000000001660: 82010301
	v_ldexp_f32 v0, v0, s6                                     // 000000001664: D71C0000 00000D00
	global_store_b32 v1, v0, s[0:1]                            // 00000000166C: DC6A0000 00000001
	s_nop 0                                                    // 000000001674: BF800000
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)                       // 000000001678: BFB60003
	s_endpgm                                                   // 00000000167C: BFB00000
