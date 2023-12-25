
<stdin>:	file format elf64-amdgpu

Disassembly of section .text:

0000000000001700 <r_256_256_256>:
	s_clause 0x1                                               // 000000001700: BF850001
	s_load_b64 s[4:5], s[0:1], 0x10                            // 000000001704: F4040100 F8000010
	s_load_b128 s[16:19], s[0:1], null                         // 00000000170C: F4080400 F8000000
	s_mov_b32 s2, s15                                          // 000000001714: BE82000F
	s_ashr_i32 s15, s14, 31                                    // 000000001718: 860F9F0E
	s_lshl_b32 s0, s2, 8                                       // 00000000171C: 84008802
	s_lshl_b64 s[20:21], s[14:15], 2                           // 000000001720: 8494820E
	s_ashr_i32 s1, s0, 31                                      // 000000001724: 86019F00
	v_mov_b32_e32 v0, 0                                        // 000000001728: 7E000280
	s_mov_b64 s[24:25], 0                                      // 00000000172C: BE980180
	s_waitcnt lgkmcnt(0)                                       // 000000001730: BF89FC07
	s_add_u32 s26, s4, s20                                     // 000000001734: 801A1404
	s_addc_u32 s27, s5, s21                                    // 000000001738: 821B1505
	s_lshl_b64 s[22:23], s[0:1], 2                             // 00000000173C: 84968200
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000001740: BF870009
	s_add_u32 s0, s22, s18                                     // 000000001744: 80001216
	s_addc_u32 s1, s23, s19                                    // 000000001748: 82011317
	s_add_u32 s18, s0, 60                                      // 00000000174C: 8012BC00
	s_addc_u32 s19, s1, 0                                      // 000000001750: 82138001
	s_add_u32 s28, s26, s24                                    // 000000001754: 801C181A
	s_addc_u32 s29, s27, s25                                   // 000000001758: 821D191B
	s_load_b512 s[0:15], s[18:19], -0x3c                       // 00000000175C: F4100009 F81FFFC4
	s_clause 0x7                                               // 000000001764: BF850007
	s_load_b32 s30, s[28:29], null                             // 000000001768: F400078E F8000000
	s_load_b32 s31, s[28:29], 0x400                            // 000000001770: F40007CE F8000400
	s_load_b32 s33, s[28:29], 0x800                            // 000000001778: F400084E F8000800
	s_load_b32 s34, s[28:29], 0xc00                            // 000000001780: F400088E F8000C00
	s_load_b32 s35, s[28:29], 0x1000                           // 000000001788: F40008CE F8001000
	s_load_b32 s36, s[28:29], 0x1400                           // 000000001790: F400090E F8001400
	s_load_b32 s37, s[28:29], 0x1800                           // 000000001798: F400094E F8001800
	s_load_b32 s38, s[28:29], 0x1c00                           // 0000000017A0: F400098E F8001C00
	s_add_u32 s24, s24, 0x4000                                 // 0000000017A8: 8018FF18 00004000
	s_addc_u32 s25, s25, 0                                     // 0000000017B0: 82198019
	s_add_u32 s18, s18, 64                                     // 0000000017B4: 8012C012
	s_addc_u32 s19, s19, 0                                     // 0000000017B8: 82138013
	s_cmp_eq_u32 s24, 0x40000                                  // 0000000017BC: BF06FF18 00040000
	s_waitcnt lgkmcnt(0)                                       // 0000000017C4: BF89FC07
	v_fmac_f32_e64 v0, s0, s30                                 // 0000000017C8: D52B0000 00003C00
	s_load_b32 s0, s[28:29], 0x2000                            // 0000000017D0: F400000E F8002000
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 0000000017D8: BF8700A1
	v_fmac_f32_e64 v0, s1, s31                                 // 0000000017DC: D52B0000 00003E01
	s_load_b32 s1, s[28:29], 0x2400                            // 0000000017E4: F400004E F8002400
	v_fmac_f32_e64 v0, s2, s33                                 // 0000000017EC: D52B0000 00004202
	s_load_b32 s2, s[28:29], 0x2800                            // 0000000017F4: F400008E F8002800
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 0000000017FC: BF8700A1
	v_fmac_f32_e64 v0, s3, s34                                 // 000000001800: D52B0000 00004403
	s_load_b32 s3, s[28:29], 0x2c00                            // 000000001808: F40000CE F8002C00
	v_fmac_f32_e64 v0, s4, s35                                 // 000000001810: D52B0000 00004604
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000001818: BF870091
	v_fmac_f32_e64 v0, s5, s36                                 // 00000000181C: D52B0000 00004805
	v_fmac_f32_e64 v0, s6, s37                                 // 000000001824: D52B0000 00004A06
	s_delay_alu instid0(VALU_DEP_1)                            // 00000000182C: BF870001
	v_fmac_f32_e64 v0, s7, s38                                 // 000000001830: D52B0000 00004C07
	s_clause 0x3                                               // 000000001838: BF850003
	s_load_b32 s4, s[28:29], 0x3000                            // 00000000183C: F400010E F8003000
	s_load_b32 s5, s[28:29], 0x3400                            // 000000001844: F400014E F8003400
	s_load_b32 s6, s[28:29], 0x3800                            // 00000000184C: F400018E F8003800
	s_load_b32 s7, s[28:29], 0x3c00                            // 000000001854: F40001CE F8003C00
	s_waitcnt lgkmcnt(0)                                       // 00000000185C: BF89FC07
	v_fmac_f32_e64 v0, s8, s0                                  // 000000001860: D52B0000 00000008
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000001868: BF870091
	v_fmac_f32_e64 v0, s9, s1                                  // 00000000186C: D52B0000 00000209
	v_fmac_f32_e64 v0, s10, s2                                 // 000000001874: D52B0000 0000040A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000000187C: BF870091
	v_fmac_f32_e64 v0, s11, s3                                 // 000000001880: D52B0000 0000060B
	v_fmac_f32_e64 v0, s12, s4                                 // 000000001888: D52B0000 0000080C
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000001890: BF870091
	v_fmac_f32_e64 v0, s13, s5                                 // 000000001894: D52B0000 00000A0D
	v_fmac_f32_e64 v0, s14, s6                                 // 00000000189C: D52B0000 00000C0E
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000018A4: BF870001
	v_fmac_f32_e64 v0, s15, s7                                 // 0000000018A8: D52B0000 00000E0F
	s_cbranch_scc0 65448                                       // 0000000018B0: BFA1FFA8 <r_256_256_256+0x54>
	s_add_u32 s0, s16, s22                                     // 0000000018B4: 80001610
	v_mov_b32_e32 v1, 0                                        // 0000000018B8: 7E020280
	s_addc_u32 s1, s17, s23                                    // 0000000018BC: 82011711
	s_add_u32 s0, s0, s20                                      // 0000000018C0: 80001400
	s_addc_u32 s1, s1, s21                                     // 0000000018C4: 82011501
	global_store_b32 v1, v0, s[0:1]                            // 0000000018C8: DC6A0000 00000001
	s_nop 0                                                    // 0000000018D0: BF800000
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)                       // 0000000018D4: BFB60003
	s_endpgm                                                   // 0000000018D8: BFB00000
