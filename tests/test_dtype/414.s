
<stdin>:	file format elf64-amdgpu

Disassembly of section .text:

0000000000001600 <E_3n62>:
	s_load_b128 s[0:3], s[0:1], null                           // 000000001600: F4080000 F8000000
	s_mov_b32 s4, s15                                          // 000000001608: BE84000F
	s_ashr_i32 s5, s15, 31                                     // 00000000160C: 86059F0F
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000001610: BF870009
	s_lshl_b64 s[6:7], s[4:5], 3                               // 000000001614: 84868304
	s_waitcnt lgkmcnt(0)                                       // 000000001618: BF89FC07
	s_add_u32 s2, s2, s6                                       // 00000000161C: 80020602
	s_addc_u32 s3, s3, s7                                      // 000000001620: 82030703
	s_load_b64 s[2:3], s[2:3], null                            // 000000001624: F4040081 F8000000
	s_waitcnt lgkmcnt(0)                                       // 00000000162C: BF89FC07
	s_xor_b32 s6, s2, s3                                       // 000000001630: 8D060302
	s_cls_i32 s7, s3                                           // 000000001634: BE870C03
	s_ashr_i32 s6, s6, 31                                      // 000000001638: 86069F06
	s_add_i32 s7, s7, -1                                       // 00000000163C: 8107C107
	s_add_i32 s6, s6, 32                                       // 000000001640: 8106A006
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 000000001644: BF870499
	s_min_u32 s6, s7, s6                                       // 000000001648: 89860607
	s_lshl_b64 s[2:3], s[2:3], s6                              // 00000000164C: 84820602
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 000000001650: BF870499
	s_min_u32 s2, s2, 1                                        // 000000001654: 89828102
	s_or_b32 s2, s3, s2                                        // 000000001658: 8C020203
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000000165C: BF870009
	v_cvt_f32_i32_e32 v0, s2                                   // 000000001660: 7E000A02
	s_sub_i32 s2, 32, s6                                       // 000000001664: 818206A0
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)    // 000000001668: BF870481
	v_ldexp_f32 v0, v0, s2                                     // 00000000166C: D71C0000 00000500
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000001674: BF870091
	v_cmp_class_f32_e64 s2, v0, 0x90                           // 000000001678: D47E0002 0001FF00 00000090
	v_cndmask_b32_e64 v1, 1.0, 0x4f800000, s2                  // 000000001684: D5010001 0009FEF2 4F800000
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)// 000000001690: BF8704B1
	v_mul_f32_e32 v0, v1, v0                                   // 000000001694: 10000101
	v_cndmask_b32_e64 v1, 0, 0x42000000, s2                    // 000000001698: D5010001 0009FE80 42000000
	s_lshl_b64 s[2:3], s[4:5], 2                               // 0000000016A4: 84828204
	s_add_u32 s0, s0, s2                                       // 0000000016A8: 80000200
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)// 0000000016AC: BF8700C2
	v_log_f32_e32 v0, v0                                       // 0000000016B0: 7E004F00
	s_addc_u32 s1, s1, s3                                      // 0000000016B4: 82010301
	s_waitcnt_depctr 0xfff                                     // 0000000016B8: BF880FFF
	v_dual_sub_f32 v0, v0, v1 :: v_dual_mov_b32 v1, 0          // 0000000016BC: C9500300 00000080
	v_mul_f32_e32 v0, 0x3f317218, v0                           // 0000000016C4: 100000FF 3F317218
	global_store_b32 v1, v0, s[0:1]                            // 0000000016CC: DC6A0000 00000001
	s_nop 0                                                    // 0000000016D4: BF800000
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)                       // 0000000016D8: BFB60003
	s_endpgm                                                   // 0000000016DC: BFB00000
