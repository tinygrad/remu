
<stdin>:	file format elf64-amdgpu

Disassembly of section .text:

0000000000001600 <E_3n31>:
	s_load_b128 s[0:3], s[0:1], null                           // 000000001600: F4080000 F8000000
	s_mov_b32 s4, s15                                          // 000000001608: BE84000F
	s_ashr_i32 s5, s15, 31                                     // 00000000160C: 86059F0F
	v_mov_b32_e32 v0, 0                                        // 000000001610: 7E000280
	s_lshl_b64 s[6:7], s[4:5], 1                               // 000000001614: 84868104
	s_waitcnt lgkmcnt(0)                                       // 000000001618: BF89FC07
	s_add_u32 s2, s2, s6                                       // 00000000161C: 80020602
	s_addc_u32 s3, s3, s7                                      // 000000001620: 82030703
	global_load_i16 v1, v0, s[2:3]                             // 000000001624: DC4E0000 01020000
	s_lshl_b64 s[2:3], s[4:5], 2                               // 00000000162C: 84828204
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)// 000000001630: BF8700C9
	s_add_u32 s0, s0, s2                                       // 000000001634: 80000200
	s_addc_u32 s1, s1, s3                                      // 000000001638: 82010301
	s_waitcnt vmcnt(0)                                         // 00000000163C: BF8903F7
	v_cvt_f32_i32_e32 v1, v1                                   // 000000001640: 7E020B01
	v_mul_f32_e32 v1, 0x3f317218, v1                           // 000000001644: 100202FF 3F317218
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000000164C: BF870091
	v_mul_f32_e32 v1, 0x3fb8aa3b, v1                           // 000000001650: 100202FF 3FB8AA3B
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1                    // 000000001658: 7C2802FF C2FC0000
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo                // 000000001660: D5010003 01A9FE80 42800000
	v_cndmask_b32_e64 v2, 1.0, 0x1f800000, vcc_lo              // 00000000166C: D5010002 01A9FEF2 1F800000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000001678: BF870092
	v_add_f32_e32 v1, v1, v3                                   // 00000000167C: 06020701
	v_exp_f32_e32 v1, v1                                       // 000000001680: 7E024B01
	s_waitcnt_depctr 0xfff                                     // 000000001684: BF880FFF
	v_mul_f32_e32 v1, v2, v1                                   // 000000001688: 10020302
	global_store_b32 v0, v1, s[0:1]                            // 00000000168C: DC6A0000 00000100
	s_nop 0                                                    // 000000001694: BF800000
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)                       // 000000001698: BFB60003
	s_endpgm                                                   // 00000000169C: BFB00000
