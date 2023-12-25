
<stdin>:	file format elf64-amdgpu

Disassembly of section .text:

0000000000001600 <E_2925n31>:
	s_load_b128 s[0:3], s[0:1], null                           // 000000001600: F4080000 F8000000
	s_mov_b32 s4, s15                                          // 000000001608: BE84000F
	s_ashr_i32 s5, s15, 31                                     // 00000000160C: 86059F0F
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000001610: BF870009
	s_lshl_b64 s[4:5], s[4:5], 2                               // 000000001614: 84848204
	s_waitcnt lgkmcnt(0)                                       // 000000001618: BF89FC07
	s_add_u32 s2, s2, s4                                       // 00000000161C: 80020402
	s_addc_u32 s3, s3, s5                                      // 000000001620: 82030503
	s_add_u32 s0, s0, s4                                       // 000000001624: 80000400
	s_load_b32 s2, s[2:3], null                                // 000000001628: F4000081 F8000000
	s_addc_u32 s1, s1, s5                                      // 000000001630: 82010501
	s_waitcnt lgkmcnt(0)                                       // 000000001634: BF89FC07
	v_mul_f32_e64 v0, 0x3fd9db23, s2                           // 000000001638: D5080000 000004FF 3FD9DB23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000001644: BF870091
	v_mul_f32_e32 v0, 0xbfb8aa3b, v0                           // 000000001648: 100000FF BFB8AA3B
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0                    // 000000001650: 7C2800FF C2FC0000
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo                // 000000001658: D5010002 01A9FE80 42800000
	v_cndmask_b32_e64 v1, 1.0, 0x1f800000, vcc_lo              // 000000001664: D5010001 01A9FEF2 1F800000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000001670: BF870092
	v_add_f32_e32 v0, v0, v2                                   // 000000001674: 06000500
	v_exp_f32_e32 v0, v0                                       // 000000001678: 7E004B00
	s_waitcnt_depctr 0xfff                                     // 00000000167C: BF880FFF
	v_mul_f32_e32 v0, v1, v0                                   // 000000001680: 10000101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000001684: BF870091
	v_add_f32_e32 v0, 1.0, v0                                  // 000000001688: 060000F2
	v_div_scale_f32 v1, null, v0, v0, 1.0                      // 00000000168C: D6FC7C01 03CA0100
	v_div_scale_f32 v4, vcc_lo, 1.0, v0, 1.0                   // 000000001694: D6FC6A04 03CA00F2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 00000000169C: BF8700B2
	v_rcp_f32_e32 v2, v1                                       // 0000000016A0: 7E045501
	s_waitcnt_depctr 0xfff                                     // 0000000016A4: BF880FFF
	v_fma_f32 v3, -v1, v2, 1.0                                 // 0000000016A8: D6130003 23CA0501
	v_fmac_f32_e32 v2, v3, v2                                  // 0000000016B0: 56040503
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000016B4: BF870091
	v_mul_f32_e32 v3, v4, v2                                   // 0000000016B8: 10060504
	v_fma_f32 v5, -v1, v3, v4                                  // 0000000016BC: D6130005 24120701
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000016C4: BF870091
	v_fmac_f32_e32 v3, v5, v2                                  // 0000000016C8: 56060505
	v_fma_f32 v1, -v1, v3, v4                                  // 0000000016CC: D6130001 24120701
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000016D4: BF870091
	v_div_fmas_f32 v1, v1, v2, v3                              // 0000000016D8: D6370001 040E0501
	v_div_fixup_f32 v0, v1, v0, 1.0                            // 0000000016E0: D6270000 03CA0101
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000016E8: BF870001
	v_dual_mov_b32 v1, 0 :: v_dual_mul_f32 v0, s2, v0          // 0000000016EC: CA060080 01000002
	global_store_b32 v1, v0, s[0:1]                            // 0000000016F4: DC6A0000 00000001
	s_nop 0                                                    // 0000000016FC: BF800000
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)                       // 000000001700: BFB60003
	s_endpgm                                                   // 000000001704: BFB00000
