
<stdin>:	file format elf64-amdgpu

Disassembly of section .text:

0000000000001600 <E_3n69>:
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
	s_lshl_b64 s[2:3], s[4:5], 2                               // 000000001674: 84828204
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 000000001678: BF8700A9
	s_add_u32 s0, s0, s2                                       // 00000000167C: 80000200
	s_addc_u32 s1, s1, s3                                      // 000000001680: 82010301
	v_mul_f32_e32 v0, 0xbfb8aa3b, v0                           // 000000001684: 100000FF BFB8AA3B
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)// 00000000168C: BF870131
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0                    // 000000001690: 7C2800FF C2FC0000
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo                // 000000001698: D5010002 01A9FE80 42800000
	v_cndmask_b32_e64 v1, 1.0, 0x1f800000, vcc_lo              // 0000000016A4: D5010001 01A9FEF2 1F800000
	v_add_f32_e32 v0, v0, v2                                   // 0000000016B0: 06000500
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 0000000016B4: BF8700B1
	v_exp_f32_e32 v0, v0                                       // 0000000016B8: 7E004B00
	s_waitcnt_depctr 0xfff                                     // 0000000016BC: BF880FFF
	v_mul_f32_e32 v0, v1, v0                                   // 0000000016C0: 10000101
	v_add_f32_e32 v0, 1.0, v0                                  // 0000000016C4: 060000F2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000016C8: BF870121
	v_div_scale_f32 v1, null, v0, v0, 1.0                      // 0000000016CC: D6FC7C01 03CA0100
	v_div_scale_f32 v4, vcc_lo, 1.0, v0, 1.0                   // 0000000016D4: D6FC6A04 03CA00F2
	v_rcp_f32_e32 v2, v1                                       // 0000000016DC: 7E045501
	s_waitcnt_depctr 0xfff                                     // 0000000016E0: BF880FFF
	v_fma_f32 v3, -v1, v2, 1.0                                 // 0000000016E4: D6130003 23CA0501
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000016EC: BF870091
	v_fmac_f32_e32 v2, v3, v2                                  // 0000000016F0: 56040503
	v_mul_f32_e32 v3, v4, v2                                   // 0000000016F4: 10060504
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000016F8: BF870091
	v_fma_f32 v5, -v1, v3, v4                                  // 0000000016FC: D6130005 24120701
	v_fmac_f32_e32 v3, v5, v2                                  // 000000001704: 56060505
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000001708: BF870091
	v_fma_f32 v1, -v1, v3, v4                                  // 00000000170C: D6130001 24120701
	v_div_fmas_f32 v1, v1, v2, v3                              // 000000001714: D6370001 040E0501
	s_delay_alu instid0(VALU_DEP_1)                            // 00000000171C: BF870001
	v_div_fixup_f32 v0, v1, v0, 1.0                            // 000000001720: D6270000 03CA0101
	v_mov_b32_e32 v1, 0                                        // 000000001728: 7E020280
	global_store_b32 v1, v0, s[0:1]                            // 00000000172C: DC6A0000 00000001
	s_nop 0                                                    // 000000001734: BF800000
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)                       // 000000001738: BFB60003
	s_endpgm                                                   // 00000000173C: BFB00000
