
<stdin>:	file format elf64-amdgpu

Disassembly of section .text:

0000000000001600 <E_4n49>:
	s_clause 0x1                                               // 000000001600: BF850001
	s_load_b128 s[4:7], s[0:1], null                           // 000000001604: F4080100 F8000000
	s_load_b64 s[0:1], s[0:1], 0x10                            // 00000000160C: F4040000 F8000010
	v_mov_b32_e32 v0, 0                                        // 000000001614: 7E000280
	s_ashr_i32 s3, s15, 31                                     // 000000001618: 86039F0F
	s_mov_b32 s2, s15                                          // 00000000161C: BE82000F
	s_waitcnt lgkmcnt(0)                                       // 000000001620: BF89FC07
	s_add_u32 s6, s6, s15                                      // 000000001624: 80060F06
	s_addc_u32 s7, s7, s3                                      // 000000001628: 82070307
	s_add_u32 s0, s0, s15                                      // 00000000162C: 80000F00
	s_addc_u32 s1, s1, s3                                      // 000000001630: 82010301
	s_clause 0x1                                               // 000000001634: BF850001
	global_load_i8 v1, v0, s[6:7]                              // 000000001638: DC460000 01060000
	global_load_u8 v2, v0, s[0:1]                              // 000000001640: DC420000 02000000
	s_lshl_b64 s[0:1], s[2:3], 1                               // 000000001648: 84808102
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000000164C: BF870009
	s_add_u32 s0, s4, s0                                       // 000000001650: 80000004
	s_addc_u32 s1, s5, s1                                      // 000000001654: 82010105
	s_waitcnt vmcnt(0)                                         // 000000001658: BF8903F7
	v_add_nc_u32_e32 v1, v2, v1                                // 00000000165C: 4A020302
	global_store_b16 v0, v1, s[0:1]                            // 000000001660: DC660000 00000100
	s_nop 0                                                    // 000000001668: BF800000
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)                       // 00000000166C: BFB60003
	s_endpgm                                                   // 000000001670: BFB00000
