
<stdin>:	file format elf64-amdgpu

Disassembly of section .text:

0000000000001600 <E_4n163>:
	s_load_b128 s[0:3], s[0:1], null                           // 000000001600: F4080000 F8000000
	s_mov_b32 s4, s15                                          // 000000001608: BE84000F
	s_ashr_i32 s5, s15, 31                                     // 00000000160C: 86059F0F
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000001610: BF870009
	s_lshl_b64 s[6:7], s[4:5], 2                               // 000000001614: 84868204
	s_waitcnt lgkmcnt(0)                                       // 000000001618: BF89FC07
	s_add_u32 s2, s2, s6                                       // 00000000161C: 80020602
	s_addc_u32 s3, s3, s7                                      // 000000001620: 82030703
	s_load_b32 s2, s[2:3], null                                // 000000001624: F4000081 F8000000
	s_waitcnt lgkmcnt(0)                                       // 00000000162C: BF89FC07
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v0, s2              // 000000001630: CA100080 01000002
	s_lshl_b64 s[2:3], s[4:5], 3                               // 000000001638: 84828304
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000000163C: BF870009
	s_add_u32 s0, s0, s2                                       // 000000001640: 80000200
	s_addc_u32 s1, s1, s3                                      // 000000001644: 82010301
	global_store_b64 v1, v[0:1], s[0:1]                        // 000000001648: DC6E0000 00000001
	s_nop 0                                                    // 000000001650: BF800000
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)                       // 000000001654: BFB60003
	s_endpgm                                                   // 000000001658: BFB00000
