
<stdin>:	file format elf64-amdgpu

Disassembly of section .text:

0000000000001700 <r_4_6_10_5_2_3>:
	s_clause 0x1                                               // 000000001700: BF850001
	s_load_b128 s[4:7], s[0:1], null                           // 000000001704: F4080100 F8000000
	s_load_b64 s[0:1], s[0:1], 0x10                            // 00000000170C: F4040000 F8000010
	s_mul_hi_i32 s3, s13, 0x66666667                           // 000000001714: 9703FF0D 66666667
	s_mul_i32 s2, s15, 0x4d                                    // 00000000171C: 9602FF0F 0000004D
	s_lshr_b32 s8, s3, 31                                      // 000000001724: 85089F03
	s_ashr_i32 s9, s3, 1                                       // 000000001728: 86098103
	s_ashr_i32 s3, s2, 31                                      // 00000000172C: 86039F02
	s_add_i32 s9, s9, s8                                       // 000000001730: 81090809
	s_lshl_b64 s[2:3], s[2:3], 2                               // 000000001734: 84828202
	s_mul_i32 s8, s9, 5                                        // 000000001738: 96088509
	s_mul_i32 s10, s9, 7                                       // 00000000173C: 960A8709
	s_sub_i32 s12, s13, s8                                     // 000000001740: 818C080D
	s_waitcnt lgkmcnt(0)                                       // 000000001744: BF89FC07
	s_add_u32 s6, s6, s2                                       // 000000001748: 80060206
	s_addc_u32 s7, s7, s3                                      // 00000000174C: 82070307
	s_ashr_i32 s11, s10, 31                                    // 000000001750: 860B9F0A
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 000000001754: BF870499
	s_lshl_b64 s[2:3], s[10:11], 2                             // 000000001758: 8482820A
	s_add_u32 s9, s6, s2                                       // 00000000175C: 80090206
	s_addc_u32 s3, s7, s3                                      // 000000001760: 82030307
	s_ashr_i32 s13, s12, 31                                    // 000000001764: 860D9F0C
	s_mul_i32 s2, s14, 6                                       // 000000001768: 9602860E
	s_lshl_b64 s[6:7], s[12:13], 2                             // 00000000176C: 8486820C
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)// 000000001770: BF8704B9
	s_add_u32 s10, s9, s6                                      // 000000001774: 800A0609
	s_addc_u32 s11, s3, s7                                     // 000000001778: 820B0703
	s_ashr_i32 s3, s2, 31                                      // 00000000177C: 86039F02
	s_lshl_b64 s[2:3], s[2:3], 2                               // 000000001780: 84828202
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000001784: BF870009
	s_add_u32 s12, s0, s2                                      // 000000001788: 800C0200
	s_addc_u32 s13, s1, s3                                     // 00000000178C: 820D0301
	s_load_b128 s[0:3], s[12:13], null                         // 000000001790: F4080006 F8000000
	s_clause 0x3                                               // 000000001798: BF850003
	s_load_b64 s[16:17], s[10:11], null                        // 00000000179C: F4040405 F8000000
	s_load_b32 s9, s[10:11], 0x8                               // 0000000017A4: F4000245 F8000008
	s_load_b64 s[18:19], s[10:11], 0x1c                        // 0000000017AC: F4040485 F800001C
	s_load_b32 s20, s[10:11], 0x24                             // 0000000017B4: F4000505 F8000024
	s_load_b64 s[10:11], s[12:13], 0x10                        // 0000000017BC: F4040286 F8000010
	s_waitcnt lgkmcnt(0)                                       // 0000000017C4: BF89FC07
	v_fma_f32 v0, s16, s0, 0                                   // 0000000017C8: D6130000 02000010
	s_mul_i32 s0, s15, 0x12c                                   // 0000000017D0: 9600FF0F 0000012C
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)// 0000000017D8: BF8704A1
	v_fmac_f32_e64 v0, s17, s1                                 // 0000000017DC: D52B0000 00000211
	s_ashr_i32 s1, s0, 31                                      // 0000000017E4: 86019F00
	s_lshl_b64 s[0:1], s[0:1], 2                               // 0000000017E8: 84808200
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)// 0000000017EC: BF8700C1
	v_fmac_f32_e64 v0, s9, s2                                  // 0000000017F0: D52B0000 00000409
	s_mul_i32 s2, s14, 50                                      // 0000000017F8: 9602B20E
	s_add_u32 s4, s4, s0                                       // 0000000017FC: 80040004
	s_addc_u32 s5, s5, s1                                      // 000000001800: 82050105
	v_fmac_f32_e64 v0, s18, s3                                 // 000000001804: D52B0000 00000612
	s_ashr_i32 s3, s2, 31                                      // 00000000180C: 86039F02
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000001810: BF870099
	s_lshl_b64 s[0:1], s[2:3], 2                               // 000000001814: 84808202
	v_fmac_f32_e64 v0, s19, s10                                // 000000001818: D52B0000 00001413
	s_add_u32 s2, s4, s0                                       // 000000001820: 80020004
	s_addc_u32 s3, s5, s1                                      // 000000001824: 82030105
	s_ashr_i32 s9, s8, 31                                      // 000000001828: 86099F08
	s_delay_alu instid0(VALU_DEP_1)                            // 00000000182C: BF870001
	v_fmac_f32_e64 v0, s20, s11                                // 000000001830: D52B0000 00001614
	s_lshl_b64 s[0:1], s[8:9], 2                               // 000000001838: 84808208
	v_mov_b32_e32 v1, 0                                        // 00000000183C: 7E020280
	s_add_u32 s0, s2, s0                                       // 000000001840: 80000002
	s_addc_u32 s1, s3, s1                                      // 000000001844: 82010103
	v_max_f32_e32 v0, 0, v0                                    // 000000001848: 20000080
	s_add_u32 s0, s0, s6                                       // 00000000184C: 80000600
	s_addc_u32 s1, s1, s7                                      // 000000001850: 82010701
	global_store_b32 v1, v0, s[0:1]                            // 000000001854: DC6A0000 00000001
	s_nop 0                                                    // 00000000185C: BF800000
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)                       // 000000001860: BFB60003
	s_endpgm                                                   // 000000001864: BFB00000
