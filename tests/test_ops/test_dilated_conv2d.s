
<stdin>:	file format elf64-amdgpu

Disassembly of section .text:

0000000000001700 <r_4_4_7_24_3_3_3>:
	s_clause 0x1                                               // 000000001700: BF850001
	s_load_b128 s[4:7], s[0:1], null                           // 000000001704: F4080100 F8000000
	s_load_b64 s[8:9], s[0:1], 0x10                            // 00000000170C: F4040200 F8000010
	s_mul_hi_i32 s1, s13, 0x2aaaaaab                           // 000000001714: 9701FF0D 2AAAAAAB
	s_mul_i32 s0, s15, 0x39c                                   // 00000000171C: 9600FF0F 0000039C
	s_lshr_b32 s2, s1, 31                                      // 000000001724: 85029F01
	s_ashr_i32 s3, s1, 2                                       // 000000001728: 86038201
	s_ashr_i32 s1, s0, 31                                      // 00000000172C: 86019F00
	s_add_i32 s10, s3, s2                                      // 000000001730: 810A0203
	s_lshl_b64 s[2:3], s[0:1], 2                               // 000000001734: 84828200
	s_mul_i32 s0, s10, 24                                      // 000000001738: 9600980A
	s_mul_i32 s10, s10, 28                                     // 00000000173C: 960A9C0A
	s_sub_i32 s12, s13, s0                                     // 000000001740: 818C000D
	s_waitcnt lgkmcnt(0)                                       // 000000001744: BF89FC07
	s_add_u32 s1, s6, s2                                       // 000000001748: 80010206
	s_addc_u32 s6, s7, s3                                      // 00000000174C: 82060307
	s_ashr_i32 s11, s10, 31                                    // 000000001750: 860B9F0A
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 000000001754: BF870499
	s_lshl_b64 s[2:3], s[10:11], 2                             // 000000001758: 8482820A
	s_add_u32 s1, s1, s2                                       // 00000000175C: 80010201
	s_addc_u32 s7, s6, s3                                      // 000000001760: 82070306
	s_ashr_i32 s13, s12, 31                                    // 000000001764: 860D9F0C
	s_mul_i32 s6, s14, 27                                      // 000000001768: 96069B0E
	s_lshl_b64 s[2:3], s[12:13], 2                             // 00000000176C: 8482820C
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)// 000000001770: BF8704B9
	s_add_u32 s10, s1, s2                                      // 000000001774: 800A0201
	s_addc_u32 s11, s7, s3                                     // 000000001778: 820B0307
	s_ashr_i32 s7, s6, 31                                      // 00000000177C: 86079F06
	s_lshl_b64 s[6:7], s[6:7], 2                               // 000000001780: 84868206
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000001784: BF870009
	s_add_u32 s6, s8, s6                                       // 000000001788: 80060608
	s_addc_u32 s7, s9, s7                                      // 00000000178C: 82070709
	s_load_b512 s[16:31], s[6:7], null                         // 000000001790: F4100403 F8000000
	s_clause 0x7                                               // 000000001798: BF850007
	s_load_b32 s1, s[10:11], null                              // 00000000179C: F4000045 F8000000
	s_load_b32 s8, s[10:11], 0x8                               // 0000000017A4: F4000205 F8000008
	s_load_b32 s9, s[10:11], 0x10                              // 0000000017AC: F4000245 F8000010
	s_load_b32 s12, s[10:11], 0xe0                             // 0000000017B4: F4000305 F80000E0
	s_load_b32 s13, s[10:11], 0xe8                             // 0000000017BC: F4000345 F80000E8
	s_load_b32 s33, s[10:11], 0xf0                             // 0000000017C4: F4000845 F80000F0
	s_load_b32 s34, s[10:11], 0x1c0                            // 0000000017CC: F4000885 F80001C0
	s_load_b32 s35, s[10:11], 0x1c8                            // 0000000017D4: F40008C5 F80001C8
	s_waitcnt lgkmcnt(0)                                       // 0000000017DC: BF89FC07
	v_fma_f32 v0, s1, s16, 0                                   // 0000000017E0: D6130000 02002001
	s_load_b32 s1, s[10:11], 0x1d0                             // 0000000017E8: F4000045 F80001D0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 0000000017F0: BF8700A1
	v_fmac_f32_e64 v0, s8, s17                                 // 0000000017F4: D52B0000 00002208
	s_load_b32 s8, s[10:11], 0x4d0                             // 0000000017FC: F4000205 F80004D0
	v_fmac_f32_e64 v0, s9, s18                                 // 000000001804: D52B0000 00002409
	s_load_b32 s9, s[10:11], 0x4d8                             // 00000000180C: F4000245 F80004D8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000001814: BF870091
	v_fmac_f32_e64 v0, s12, s19                                // 000000001818: D52B0000 0000260C
	v_fmac_f32_e64 v0, s13, s20                                // 000000001820: D52B0000 0000280D
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000001828: BF870091
	v_fmac_f32_e64 v0, s33, s21                                // 00000000182C: D52B0000 00002A21
	v_fmac_f32_e64 v0, s34, s22                                // 000000001834: D52B0000 00002C22
	s_delay_alu instid0(VALU_DEP_1)                            // 00000000183C: BF870001
	v_fmac_f32_e64 v0, s35, s23                                // 000000001840: D52B0000 00002E23
	s_clause 0x4                                               // 000000001848: BF850004
	s_load_b32 s12, s[10:11], 0x4e0                            // 00000000184C: F4000305 F80004E0
	s_load_b32 s13, s[10:11], 0x5b0                            // 000000001854: F4000345 F80005B0
	s_load_b32 s33, s[10:11], 0x5b8                            // 00000000185C: F4000845 F80005B8
	s_load_b32 s34, s[10:11], 0x5c0                            // 000000001864: F4000885 F80005C0
	s_load_b32 s35, s[10:11], 0x690                            // 00000000186C: F40008C5 F8000690
	s_load_b256 s[16:23], s[6:7], 0x40                         // 000000001874: F40C0403 F8000040
	s_waitcnt lgkmcnt(0)                                       // 00000000187C: BF89FC07
	v_fmac_f32_e64 v0, s1, s24                                 // 000000001880: D52B0000 00003001
	s_load_b32 s1, s[10:11], 0x698                             // 000000001888: F4000045 F8000698
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 000000001890: BF8700A1
	v_fmac_f32_e64 v0, s8, s25                                 // 000000001894: D52B0000 00003208
	s_load_b32 s8, s[10:11], 0x6a0                             // 00000000189C: F4000205 F80006A0
	v_fmac_f32_e64 v0, s9, s26                                 // 0000000018A4: D52B0000 00003409
	s_load_b32 s9, s[10:11], 0x9a0                             // 0000000018AC: F4000245 F80009A0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000018B4: BF870091
	v_fmac_f32_e64 v0, s12, s27                                // 0000000018B8: D52B0000 0000360C
	v_fmac_f32_e64 v0, s13, s28                                // 0000000018C0: D52B0000 0000380D
	s_clause 0x4                                               // 0000000018C8: BF850004
	s_load_b32 s12, s[10:11], 0x9a8                            // 0000000018CC: F4000305 F80009A8
	s_load_b32 s13, s[10:11], 0x9b0                            // 0000000018D4: F4000345 F80009B0
	s_load_b32 s24, s[10:11], 0xa80                            // 0000000018DC: F4000605 F8000A80
	s_load_b32 s25, s[10:11], 0xa88                            // 0000000018E4: F4000645 F8000A88
	s_load_b32 s26, s[10:11], 0xa90                            // 0000000018EC: F4000685 F8000A90
	v_fmac_f32_e64 v0, s33, s29                                // 0000000018F4: D52B0000 00003A21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000018FC: BF870091
	v_fmac_f32_e64 v0, s34, s30                                // 000000001900: D52B0000 00003C22
	v_fmac_f32_e64 v0, s35, s31                                // 000000001908: D52B0000 00003E23
	s_waitcnt lgkmcnt(0)                                       // 000000001910: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 000000001914: BF8700A1
	v_fmac_f32_e64 v0, s1, s16                                 // 000000001918: D52B0000 00002001
	s_load_b32 s1, s[10:11], 0xb60                             // 000000001920: F4000045 F8000B60
	v_fmac_f32_e64 v0, s8, s17                                 // 000000001928: D52B0000 00002208
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 000000001930: BF8700A1
	v_fmac_f32_e64 v0, s9, s18                                 // 000000001934: D52B0000 00002409
	s_load_b64 s[8:9], s[6:7], 0x60                            // 00000000193C: F4040203 F8000060
	v_fmac_f32_e64 v0, s12, s19                                // 000000001944: D52B0000 0000260C
	s_delay_alu instid0(VALU_DEP_1)                            // 00000000194C: BF870001
	v_fmac_f32_e64 v0, s13, s20                                // 000000001950: D52B0000 0000280D
	s_load_b32 s12, s[10:11], 0xb68                            // 000000001958: F4000305 F8000B68
	s_load_b32 s13, s[6:7], 0x68                               // 000000001960: F4000343 F8000068
	s_load_b32 s16, s[10:11], 0xb70                            // 000000001968: F4000405 F8000B70
	s_mul_i32 s6, s15, 0x2a0                                   // 000000001970: 9606FF0F 000002A0
	s_mul_i32 s10, s14, 0xa8                                   // 000000001978: 960AFF0E 000000A8
	s_ashr_i32 s7, s6, 31                                      // 000000001980: 86079F06
	v_fmac_f32_e64 v0, s24, s21                                // 000000001984: D52B0000 00002A18
	s_lshl_b64 s[6:7], s[6:7], 2                               // 00000000198C: 84868206
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000001990: BF870091
	v_fmac_f32_e64 v0, s25, s22                                // 000000001994: D52B0000 00002C19
	v_fmac_f32_e64 v0, s26, s23                                // 00000000199C: D52B0000 00002E1A
	s_waitcnt lgkmcnt(0)                                       // 0000000019A4: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)// 0000000019A8: BF8700C1
	v_fmac_f32_e64 v0, s1, s8                                  // 0000000019AC: D52B0000 00001001
	s_add_u32 s1, s4, s6                                       // 0000000019B4: 80010604
	s_addc_u32 s6, s5, s7                                      // 0000000019B8: 82060705
	s_ashr_i32 s11, s10, 31                                    // 0000000019BC: 860B9F0A
	v_fmac_f32_e64 v0, s12, s9                                 // 0000000019C0: D52B0000 0000120C
	s_lshl_b64 s[4:5], s[10:11], 2                             // 0000000019C8: 8484820A
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 0000000019CC: BF8700A9
	s_add_u32 s4, s1, s4                                       // 0000000019D0: 80040401
	s_addc_u32 s5, s6, s5                                      // 0000000019D4: 82050506
	v_fmac_f32_e64 v0, s16, s13                                // 0000000019D8: D52B0000 00001A10
	s_ashr_i32 s1, s0, 31                                      // 0000000019E0: 86019F00
	v_mov_b32_e32 v1, 0                                        // 0000000019E4: 7E020280
	s_lshl_b64 s[0:1], s[0:1], 2                               // 0000000019E8: 84808200
	s_delay_alu instid0(VALU_DEP_2)                            // 0000000019EC: BF870002
	v_max_f32_e32 v0, 0, v0                                    // 0000000019F0: 20000080
	s_add_u32 s0, s4, s0                                       // 0000000019F4: 80000004
	s_addc_u32 s1, s5, s1                                      // 0000000019F8: 82010105
	s_add_u32 s0, s0, s2                                       // 0000000019FC: 80000200
	s_addc_u32 s1, s1, s3                                      // 000000001A00: 82010301
	global_store_b32 v1, v0, s[0:1]                            // 000000001A04: DC6A0000 00000001
	s_nop 0                                                    // 000000001A0C: BF800000
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)                       // 000000001A10: BFB60003
	s_endpgm                                                   // 000000001A14: BFB00000
