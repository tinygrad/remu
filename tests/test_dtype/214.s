
<stdin>:	file format elf64-amdgpu

Disassembly of section .text:

0000000000001600 <E_4n92>:
	s_load_b128 s[4:7], s[0:1], null                           // 000000001600: F4080100 F8000000
	v_mov_b32_e32 v2, 0                                        // 000000001608: 7E040280
	s_ashr_i32 s3, s15, 31                                     // 00000000160C: 86039F0F
	s_load_b64 s[0:1], s[0:1], 0x10                            // 000000001610: F4040000 F8000010
	s_mov_b32 s2, s15                                          // 000000001618: BE82000F
	s_waitcnt lgkmcnt(0)                                       // 00000000161C: BF89FC07
	s_add_u32 s6, s6, s15                                      // 000000001620: 80060F06
	s_addc_u32 s7, s7, s3                                      // 000000001624: 82070307
	s_lshl_b64 s[2:3], s[2:3], 3                               // 000000001628: 84828302
	global_load_u8 v0, v2, s[6:7]                              // 00000000162C: DC420000 00060002
	s_add_u32 s0, s0, s2                                       // 000000001634: 80000200
	s_addc_u32 s1, s1, s3                                      // 000000001638: 82010301
	s_load_b64 s[0:1], s[0:1], null                            // 00000000163C: F4040000 F8000000
	s_waitcnt vmcnt(0)                                         // 000000001644: BF8903F7
	v_and_b32_e32 v0, 0xffff, v0                               // 000000001648: 360000FF 0000FFFF
	s_waitcnt lgkmcnt(0)                                       // 000000001650: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000001654: BF870091
	v_add_co_u32 v0, s0, s0, v0                                // 000000001658: D7000000 00020000
	v_add_co_ci_u32_e64 v1, null, s1, 0, s0                    // 000000001660: D5207C01 00010001
	s_add_u32 s0, s4, s2                                       // 000000001668: 80000204
	s_addc_u32 s1, s5, s3                                      // 00000000166C: 82010305
	global_store_b64 v2, v[0:1], s[0:1]                        // 000000001670: DC6E0000 00000002
	s_nop 0                                                    // 000000001678: BF800000
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)                       // 00000000167C: BFB60003
	s_endpgm                                                   // 000000001680: BFB00000
