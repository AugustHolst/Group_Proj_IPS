	.text	0x00400000
	.globl	main
	la	$28, _heap_
	la	$4, _Incorre_46_
# was:	la	_Incorre_46__addr, _Incorre_46_
	ori	$3, $0, 15
# was:	ori	_Incorre_46__init, $0, 15
	sw	$3, 0($4)
# was:	sw	_Incorre_46__init, 0(_Incorre_46__addr)
	la	$4, _true
# was:	la	_true_addr, _true
	ori	$3, $0, 4
# was:	ori	_true_init, $0, 4
	sw	$3, 0($4)
# was:	sw	_true_init, 0(_true_addr)
	la	$3, _false
# was:	la	_false_addr, _false
	ori	$4, $0, 5
# was:	ori	_false_init, $0, 5
	sw	$4, 0($3)
# was:	sw	_false_init, 0(_false_addr)
	jal	main
_stop_:
	ori	$2, $0, 10
	syscall
# Function mul
mul:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
# 	ori	_param_x_1_,$2,0
	ori	$16, $3, 0
# was:	ori	_param_y_2_, $3, 0
# 	ori	_eq_L_8_,_param_x_1_,0
	ori	$4, $0, 0
# was:	ori	_eq_R_9_, $0, 0
	ori	$3, $0, 0
# was:	ori	_cond_7_, $0, 0
	bne	$2, $4, _false_10_
# was:	bne	_eq_L_8_, _eq_R_9_, _false_10_
	ori	$3, $0, 1
# was:	ori	_cond_7_, $0, 1
_false_10_:
	bne	$3, $0, _then_4_
# was:	bne	_cond_7_, $0, _then_4_
	j	_else_5_
_then_4_:
	ori	$2, $0, 0
# was:	ori	_mulres_3_, $0, 0
	j	_endif_6_
_else_5_:
	ori	$3, $0, 0
# was:	ori	_lt_L_15_, $0, 0
# 	ori	_lt_R_16_,_param_x_1_,0
	slt	$3, $3, $2
# was:	slt	_cond_14_, _lt_L_15_, _lt_R_16_
	bne	$3, $0, _then_11_
# was:	bne	_cond_14_, $0, _then_11_
	j	_else_12_
_then_11_:
# 	ori	_plus_L_17_,_param_y_2_,0
# 	ori	_minus_L_20_,_param_x_1_,0
	ori	$3, $0, 1
# was:	ori	_minus_R_21_, $0, 1
	sub	$2, $2, $3
# was:	sub	_arg_19_, _minus_L_20_, _minus_R_21_
	ori	$3, $16, 0
# was:	ori	_arg_22_, _param_y_2_, 0
# 	ori	$2,_arg_19_,0
# 	ori	$3,_arg_22_,0
	jal	mul
# was:	jal	mul, $2 $3
# 	ori	_plus_R_18_,$2,0
	add	$2, $16, $2
# was:	add	_mulres_3_, _plus_L_17_, _plus_R_18_
	j	_endif_13_
_else_12_:
# 	ori	_plus_L_26_,_param_x_1_,0
	ori	$3, $0, 1
# was:	ori	_plus_R_27_, $0, 1
	add	$2, $2, $3
# was:	add	_arg_25_, _plus_L_26_, _plus_R_27_
	ori	$3, $16, 0
# was:	ori	_arg_28_, _param_y_2_, 0
# 	ori	$2,_arg_25_,0
# 	ori	$3,_arg_28_,0
	jal	mul
# was:	jal	mul, $2 $3
# 	ori	_minus_L_23_,$2,0
# 	ori	_minus_R_24_,_param_y_2_,0
	sub	$2, $2, $16
# was:	sub	_mulres_3_, _minus_L_23_, _minus_R_24_
_endif_13_:
_endif_6_:
# 	ori	$2,_mulres_3_,0
	addi	$29, $29, 12
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function readInt
readInt:
	sw	$31, -4($29)
	addi	$29, $29, -8
# 	ori	_param_i_29_,$2,0
	jal	getint
# was:	jal	getint, $2
# 	ori	_readIntres_30_,$2,0
# 	ori	$2,_readIntres_30_,0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function plus
plus:
	sw	$31, -4($29)
	addi	$29, $29, -8
# 	ori	_param_x_31_,$2,0
# 	ori	_param_y_32_,$3,0
# 	ori	_plus_L_34_,_param_x_31_,0
# 	ori	_plus_R_35_,_param_y_32_,0
	add	$2, $2, $3
# was:	add	_plusres_33_, _plus_L_34_, _plus_R_35_
# 	ori	$2,_plusres_33_,0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function main
main:
	sw	$31, -4($29)
	sw	$21, -28($29)
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -32
	jal	getint
# was:	jal	getint, $2
	ori	$17, $2, 0
# was:	ori	_letBind_37_, $2, 0
# 	ori	_lt_L_42_,_letBind_37_,0
	ori	$2, $0, 1
# was:	ori	_lt_R_43_, $0, 1
	slt	$2, $17, $2
# was:	slt	_cond_41_, _lt_L_42_, _lt_R_43_
	bne	$2, $0, _then_38_
# was:	bne	_cond_41_, $0, _then_38_
	j	_else_39_
_then_38_:
	la	$2, _Incorre_46_
# was:	la	_tmp_45_, _Incorre_46_
# _Incorre_46_: string "Incorrect Input"
# 	ori	_letBind_44_,_tmp_45_,0
# 	ori	$2,_tmp_45_,0
	jal	putstring
# was:	jal	putstring, $2
	ori	$2, $0, 0
# was:	ori	_mainres_36_, $0, 0
	j	_endif_40_
_else_39_:
# 	ori	_size_reg_48_,_letBind_37_,0
	bgez	$17, _safe_lab_49_
# was:	bgez	_size_reg_48_, _safe_lab_49_
	ori	$5, $0, 19
# was:	ori	$5, $0, 19
	la	$6, _Msg_IllegalArraySize_
# was:	la	$6, _Msg_IllegalArraySize_
	j	_RuntimeError_
_safe_lab_49_:
	ori	$2, $28, 0
# was:	ori	_letBind_47_, $28, 0
	sll	$3, $17, 2
# was:	sll	_tmp_55_, _size_reg_48_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_55_, _tmp_55_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_55_
	sw	$17, 0($2)
# was:	sw	_size_reg_48_, 0(_letBind_47_)
	addi	$4, $2, 4
# was:	addi	_addr_reg_50_, _letBind_47_, 4
	ori	$3, $0, 0
# was:	ori	_i_reg_51_, $0, 0
_loop_beg_52_:
	sub	$2, $3, $17
# was:	sub	_tmp_reg_54_, _i_reg_51_, _size_reg_48_
	bgez	$2, _loop_end_53_
# was:	bgez	_tmp_reg_54_, _loop_end_53_
	sw	$3, 0($4)
# was:	sw	_i_reg_51_, 0(_addr_reg_50_)
	addi	$4, $4, 4
# was:	addi	_addr_reg_50_, _addr_reg_50_, 4
	addi	$3, $3, 1
# was:	addi	_i_reg_51_, _i_reg_51_, 1
	j	_loop_beg_52_
_loop_end_53_:
# 	ori	_size_reg_61_,_letBind_37_,0
	bgez	$17, _safe_lab_62_
# was:	bgez	_size_reg_61_, _safe_lab_62_
	ori	$5, $0, 20
# was:	ori	$5, $0, 20
	la	$6, _Msg_IllegalArraySize_
# was:	la	$6, _Msg_IllegalArraySize_
	j	_RuntimeError_
_safe_lab_62_:
	ori	$2, $28, 0
# was:	ori	_arr_reg_58_, $28, 0
	sll	$3, $17, 2
# was:	sll	_tmp_68_, _size_reg_61_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_68_, _tmp_68_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_68_
	sw	$17, 0($2)
# was:	sw	_size_reg_61_, 0(_arr_reg_58_)
	addi	$4, $2, 4
# was:	addi	_addr_reg_63_, _arr_reg_58_, 4
	ori	$3, $0, 0
# was:	ori	_i_reg_64_, $0, 0
_loop_beg_65_:
	sub	$5, $3, $17
# was:	sub	_tmp_reg_67_, _i_reg_64_, _size_reg_61_
	bgez	$5, _loop_end_66_
# was:	bgez	_tmp_reg_67_, _loop_end_66_
	sw	$3, 0($4)
# was:	sw	_i_reg_64_, 0(_addr_reg_63_)
	addi	$4, $4, 4
# was:	addi	_addr_reg_63_, _addr_reg_63_, 4
	addi	$3, $3, 1
# was:	addi	_i_reg_64_, _i_reg_64_, 1
	j	_loop_beg_65_
_loop_end_66_:
	lw	$18, 0($2)
# was:	lw	_size_reg_57_, 0(_arr_reg_58_)
	ori	$16, $28, 0
# was:	ori	_letBind_56_, $28, 0
	sll	$3, $18, 2
# was:	sll	_tmp_75_, _size_reg_57_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_75_, _tmp_75_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_75_
	sw	$18, 0($16)
# was:	sw	_size_reg_57_, 0(_letBind_56_)
	addi	$20, $16, 4
# was:	addi	_addr_reg_69_, _letBind_56_, 4
	ori	$19, $0, 0
# was:	ori	_i_reg_70_, $0, 0
	addi	$21, $2, 4
# was:	addi	_elem_reg_59_, _arr_reg_58_, 4
_loop_beg_71_:
	sub	$2, $19, $18
# was:	sub	_tmp_reg_73_, _i_reg_70_, _size_reg_57_
	bgez	$2, _loop_end_72_
# was:	bgez	_tmp_reg_73_, _loop_end_72_
	lw	$2, 0($21)
# was:	lw	_res_reg_60_, 0(_elem_reg_59_)
	addi	$21, $21, 4
# was:	addi	_elem_reg_59_, _elem_reg_59_, 4
# 	ori	$2,_res_reg_60_,0
	jal	readInt
# was:	jal	readInt, $2
# 	ori	_tmp_reg_74_,$2,0
# 	ori	_res_reg_60_,_tmp_reg_74_,0
	sw	$2, 0($20)
# was:	sw	_res_reg_60_, 0(_addr_reg_69_)
	addi	$20, $20, 4
# was:	addi	_addr_reg_69_, _addr_reg_69_, 4
	addi	$19, $19, 1
# was:	addi	_i_reg_70_, _i_reg_70_, 1
	j	_loop_beg_71_
_loop_end_72_:
# 	ori	_size_reg_81_,_letBind_37_,0
	bgez	$17, _safe_lab_82_
# was:	bgez	_size_reg_81_, _safe_lab_82_
	ori	$5, $0, 25
# was:	ori	$5, $0, 25
	la	$6, _Msg_IllegalArraySize_
# was:	la	$6, _Msg_IllegalArraySize_
	j	_RuntimeError_
_safe_lab_82_:
	ori	$5, $28, 0
# was:	ori	_arr_reg_78_, $28, 0
	sll	$2, $17, 2
# was:	sll	_tmp_88_, _size_reg_81_, 2
	addi	$2, $2, 4
# was:	addi	_tmp_88_, _tmp_88_, 4
	add	$28, $28, $2
# was:	add	$28, $28, _tmp_88_
	sw	$17, 0($5)
# was:	sw	_size_reg_81_, 0(_arr_reg_78_)
	addi	$3, $5, 4
# was:	addi	_addr_reg_83_, _arr_reg_78_, 4
	ori	$2, $0, 0
# was:	ori	_i_reg_84_, $0, 0
_loop_beg_85_:
	sub	$4, $2, $17
# was:	sub	_tmp_reg_87_, _i_reg_84_, _size_reg_81_
	bgez	$4, _loop_end_86_
# was:	bgez	_tmp_reg_87_, _loop_end_86_
	sw	$2, 0($3)
# was:	sw	_i_reg_84_, 0(_addr_reg_83_)
	addi	$3, $3, 4
# was:	addi	_addr_reg_83_, _addr_reg_83_, 4
	addi	$2, $2, 1
# was:	addi	_i_reg_84_, _i_reg_84_, 1
	j	_loop_beg_85_
_loop_end_86_:
	lw	$2, 0($5)
# was:	lw	_size_reg_77_, 0(_arr_reg_78_)
	ori	$18, $28, 0
# was:	ori	_letBind_76_, $28, 0
	sll	$3, $2, 2
# was:	sll	_tmp_124_, _size_reg_77_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_124_, _tmp_124_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_124_
	sw	$2, 0($18)
# was:	sw	_size_reg_77_, 0(_letBind_76_)
	addi	$4, $18, 4
# was:	addi	_addr_reg_89_, _letBind_76_, 4
	ori	$3, $0, 0
# was:	ori	_i_reg_90_, $0, 0
	addi	$5, $5, 4
# was:	addi	_elem_reg_79_, _arr_reg_78_, 4
_loop_beg_91_:
	sub	$6, $3, $2
# was:	sub	_tmp_reg_93_, _i_reg_90_, _size_reg_77_
	bgez	$6, _loop_end_92_
# was:	bgez	_tmp_reg_93_, _loop_end_92_
	lw	$7, 0($5)
# was:	lw	_res_reg_80_, 0(_elem_reg_79_)
	addi	$5, $5, 4
# was:	addi	_elem_reg_79_, _elem_reg_79_, 4
# 	ori	_eq_L_99_,_res_reg_80_,0
	ori	$8, $0, 0
# was:	ori	_eq_R_100_, $0, 0
	ori	$6, $0, 0
# was:	ori	_cond_98_, $0, 0
	bne	$7, $8, _false_101_
# was:	bne	_eq_L_99_, _eq_R_100_, _false_101_
	ori	$6, $0, 1
# was:	ori	_cond_98_, $0, 1
_false_101_:
	bne	$6, $0, _then_95_
# was:	bne	_cond_98_, $0, _then_95_
	j	_else_96_
_then_95_:
# 	ori	_arr_ind_102_,_res_reg_80_,0
	addi	$6, $16, 4
# was:	addi	_arr_reg_103_, _letBind_56_, 4
	lw	$8, 0($16)
# was:	lw	_size_reg_104_, 0(_letBind_56_)
	bgez	$7, _safe_lab_107_
# was:	bgez	_arr_ind_102_, _safe_lab_107_
_error_lab_106_:
	ori	$5, $0, 23
# was:	ori	$5, $0, 23
	la	$6, _Msg_IllegalIndex_
# was:	la	$6, _Msg_IllegalIndex_
	j	_RuntimeError_
_safe_lab_107_:
	sub	$8, $7, $8
# was:	sub	_tmp_reg_105_, _arr_ind_102_, _size_reg_104_
	bgez	$8, _error_lab_106_
# was:	bgez	_tmp_reg_105_, _error_lab_106_
	sll	$7, $7, 2
# was:	sll	_arr_ind_102_, _arr_ind_102_, 2
	add	$6, $6, $7
# was:	add	_arr_reg_103_, _arr_reg_103_, _arr_ind_102_
	lw	$7, 0($6)
# was:	lw	_fun_arg_res_94_, 0(_arr_reg_103_)
	j	_endif_97_
_else_96_:
	ori	$8, $7, 0
# was:	ori	_arr_ind_110_, _res_reg_80_, 0
	addi	$6, $16, 4
# was:	addi	_arr_reg_111_, _letBind_56_, 4
	lw	$9, 0($16)
# was:	lw	_size_reg_112_, 0(_letBind_56_)
	bgez	$8, _safe_lab_115_
# was:	bgez	_arr_ind_110_, _safe_lab_115_
_error_lab_114_:
	ori	$5, $0, 25
# was:	ori	$5, $0, 25
	la	$6, _Msg_IllegalIndex_
# was:	la	$6, _Msg_IllegalIndex_
	j	_RuntimeError_
_safe_lab_115_:
	sub	$9, $8, $9
# was:	sub	_tmp_reg_113_, _arr_ind_110_, _size_reg_112_
	bgez	$9, _error_lab_114_
# was:	bgez	_tmp_reg_113_, _error_lab_114_
	sll	$8, $8, 2
# was:	sll	_arr_ind_110_, _arr_ind_110_, 2
	add	$6, $6, $8
# was:	add	_arr_reg_111_, _arr_reg_111_, _arr_ind_110_
	lw	$6, 0($6)
# was:	lw	_minus_L_108_, 0(_arr_reg_111_)
# 	ori	_minus_L_117_,_res_reg_80_,0
	ori	$8, $0, 1
# was:	ori	_minus_R_118_, $0, 1
	sub	$8, $7, $8
# was:	sub	_arr_ind_116_, _minus_L_117_, _minus_R_118_
	addi	$7, $16, 4
# was:	addi	_arr_reg_119_, _letBind_56_, 4
	lw	$9, 0($16)
# was:	lw	_size_reg_120_, 0(_letBind_56_)
	bgez	$8, _safe_lab_123_
# was:	bgez	_arr_ind_116_, _safe_lab_123_
_error_lab_122_:
	ori	$5, $0, 25
# was:	ori	$5, $0, 25
	la	$6, _Msg_IllegalIndex_
# was:	la	$6, _Msg_IllegalIndex_
	j	_RuntimeError_
_safe_lab_123_:
	sub	$9, $8, $9
# was:	sub	_tmp_reg_121_, _arr_ind_116_, _size_reg_120_
	bgez	$9, _error_lab_122_
# was:	bgez	_tmp_reg_121_, _error_lab_122_
	sll	$8, $8, 2
# was:	sll	_arr_ind_116_, _arr_ind_116_, 2
	add	$7, $7, $8
# was:	add	_arr_reg_119_, _arr_reg_119_, _arr_ind_116_
	lw	$7, 0($7)
# was:	lw	_minus_R_109_, 0(_arr_reg_119_)
	sub	$7, $6, $7
# was:	sub	_fun_arg_res_94_, _minus_L_108_, _minus_R_109_
_endif_97_:
# 	ori	_res_reg_80_,_fun_arg_res_94_,0
	sw	$7, 0($4)
# was:	sw	_res_reg_80_, 0(_addr_reg_89_)
	addi	$4, $4, 4
# was:	addi	_addr_reg_89_, _addr_reg_89_, 4
	addi	$3, $3, 1
# was:	addi	_i_reg_90_, _i_reg_90_, 1
	j	_loop_beg_91_
_loop_end_92_:
# 	ori	_size_reg_130_,_letBind_37_,0
	bgez	$17, _safe_lab_131_
# was:	bgez	_size_reg_130_, _safe_lab_131_
	ori	$5, $0, 28
# was:	ori	$5, $0, 28
	la	$6, _Msg_IllegalArraySize_
# was:	la	$6, _Msg_IllegalArraySize_
	j	_RuntimeError_
_safe_lab_131_:
	ori	$2, $28, 0
# was:	ori	_arr_reg_127_, $28, 0
	sll	$3, $17, 2
# was:	sll	_tmp_137_, _size_reg_130_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_137_, _tmp_137_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_137_
	sw	$17, 0($2)
# was:	sw	_size_reg_130_, 0(_arr_reg_127_)
	addi	$4, $2, 4
# was:	addi	_addr_reg_132_, _arr_reg_127_, 4
	ori	$3, $0, 0
# was:	ori	_i_reg_133_, $0, 0
_loop_beg_134_:
	sub	$5, $3, $17
# was:	sub	_tmp_reg_136_, _i_reg_133_, _size_reg_130_
	bgez	$5, _loop_end_135_
# was:	bgez	_tmp_reg_136_, _loop_end_135_
	sw	$3, 0($4)
# was:	sw	_i_reg_133_, 0(_addr_reg_132_)
	addi	$4, $4, 4
# was:	addi	_addr_reg_132_, _addr_reg_132_, 4
	addi	$3, $3, 1
# was:	addi	_i_reg_133_, _i_reg_133_, 1
	j	_loop_beg_134_
_loop_end_135_:
	lw	$16, 0($2)
# was:	lw	_size_reg_126_, 0(_arr_reg_127_)
	ori	$17, $28, 0
# was:	ori	_letBind_125_, $28, 0
	sll	$3, $16, 2
# was:	sll	_tmp_158_, _size_reg_126_, 2
	addi	$3, $3, 4
# was:	addi	_tmp_158_, _tmp_158_, 4
	add	$28, $28, $3
# was:	add	$28, $28, _tmp_158_
	sw	$16, 0($17)
# was:	sw	_size_reg_126_, 0(_letBind_125_)
	addi	$20, $17, 4
# was:	addi	_addr_reg_138_, _letBind_125_, 4
	ori	$19, $0, 0
# was:	ori	_i_reg_139_, $0, 0
	addi	$21, $2, 4
# was:	addi	_elem_reg_128_, _arr_reg_127_, 4
_loop_beg_140_:
	sub	$2, $19, $16
# was:	sub	_tmp_reg_142_, _i_reg_139_, _size_reg_126_
	bgez	$2, _loop_end_141_
# was:	bgez	_tmp_reg_142_, _loop_end_141_
	lw	$4, 0($21)
# was:	lw	_res_reg_129_, 0(_elem_reg_128_)
	addi	$21, $21, 4
# was:	addi	_elem_reg_128_, _elem_reg_128_, 4
	ori	$2, $4, 0
# was:	ori	_arr_ind_145_, _res_reg_129_, 0
	addi	$3, $18, 4
# was:	addi	_arr_reg_146_, _letBind_76_, 4
	lw	$5, 0($18)
# was:	lw	_size_reg_147_, 0(_letBind_76_)
	bgez	$2, _safe_lab_150_
# was:	bgez	_arr_ind_145_, _safe_lab_150_
_error_lab_149_:
	ori	$5, $0, 28
# was:	ori	$5, $0, 28
	la	$6, _Msg_IllegalIndex_
# was:	la	$6, _Msg_IllegalIndex_
	j	_RuntimeError_
_safe_lab_150_:
	sub	$5, $2, $5
# was:	sub	_tmp_reg_148_, _arr_ind_145_, _size_reg_147_
	bgez	$5, _error_lab_149_
# was:	bgez	_tmp_reg_148_, _error_lab_149_
	sll	$2, $2, 2
# was:	sll	_arr_ind_145_, _arr_ind_145_, 2
	add	$3, $3, $2
# was:	add	_arr_reg_146_, _arr_reg_146_, _arr_ind_145_
	lw	$2, 0($3)
# was:	lw	_arg_144_, 0(_arr_reg_146_)
# 	ori	_arr_ind_152_,_res_reg_129_,0
	addi	$3, $18, 4
# was:	addi	_arr_reg_153_, _letBind_76_, 4
	lw	$5, 0($18)
# was:	lw	_size_reg_154_, 0(_letBind_76_)
	bgez	$4, _safe_lab_157_
# was:	bgez	_arr_ind_152_, _safe_lab_157_
_error_lab_156_:
	ori	$5, $0, 28
# was:	ori	$5, $0, 28
	la	$6, _Msg_IllegalIndex_
# was:	la	$6, _Msg_IllegalIndex_
	j	_RuntimeError_
_safe_lab_157_:
	sub	$5, $4, $5
# was:	sub	_tmp_reg_155_, _arr_ind_152_, _size_reg_154_
	bgez	$5, _error_lab_156_
# was:	bgez	_tmp_reg_155_, _error_lab_156_
	sll	$4, $4, 2
# was:	sll	_arr_ind_152_, _arr_ind_152_, 2
	add	$3, $3, $4
# was:	add	_arr_reg_153_, _arr_reg_153_, _arr_ind_152_
	lw	$3, 0($3)
# was:	lw	_arg_151_, 0(_arr_reg_153_)
# 	ori	$2,_arg_144_,0
# 	ori	$3,_arg_151_,0
	jal	mul
# was:	jal	mul, $2 $3
# 	ori	_fun_arg_res_143_,$2,0
	ori	$4, $2, 0
# was:	ori	_res_reg_129_, _fun_arg_res_143_, 0
	sw	$4, 0($20)
# was:	sw	_res_reg_129_, 0(_addr_reg_138_)
	addi	$20, $20, 4
# was:	addi	_addr_reg_138_, _addr_reg_138_, 4
	addi	$19, $19, 1
# was:	addi	_i_reg_139_, _i_reg_139_, 1
	j	_loop_beg_140_
_loop_end_141_:
# 	ori	_arr_reg_160_,_letBind_125_,0
	lw	$16, 0($17)
# was:	lw	_size_reg_161_, 0(_arr_reg_160_)
	ori	$19, $0, 0
# was:	ori	_letBind_159_, $0, 0
	addi	$17, $17, 4
# was:	addi	_arr_reg_160_, _arr_reg_160_, 4
	ori	$18, $0, 0
# was:	ori	_ind_var_162_, $0, 0
_loop_beg_164_:
	sub	$3, $18, $16
# was:	sub	_tmp_reg_163_, _ind_var_162_, _size_reg_161_
	bgez	$3, _loop_end_165_
# was:	bgez	_tmp_reg_163_, _loop_end_165_
	lw	$3, 0($17)
# was:	lw	_tmp_reg_163_, 0(_arr_reg_160_)
	addi	$17, $17, 4
# was:	addi	_arr_reg_160_, _arr_reg_160_, 4
	ori	$2, $19, 0
# was:	ori	$2, _letBind_159_, 0
# 	ori	$3,_tmp_reg_163_,0
	jal	plus
# was:	jal	plus, $2 $3
# 	ori	_tmp_reg_166_,$2,0
	ori	$19, $2, 0
# was:	ori	_letBind_159_, _tmp_reg_166_, 0
	addi	$18, $18, 1
# was:	addi	_ind_var_162_, _ind_var_162_, 1
	j	_loop_beg_164_
_loop_end_165_:
	ori	$2, $19, 0
# was:	ori	_tmp_168_, _letBind_159_, 0
# 	ori	_letBind_167_,_tmp_168_,0
# 	ori	$2,_letBind_167_,0
	jal	putint
# was:	jal	putint, $2
	ori	$2, $19, 0
# was:	ori	_mainres_36_, _letBind_159_, 0
_endif_40_:
# 	ori	$2,_mainres_36_,0
	addi	$29, $29, 32
	lw	$21, -28($29)
	lw	$20, -24($29)
	lw	$19, -20($29)
	lw	$18, -16($29)
	lw	$17, -12($29)
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
ord:
	jr	$31
chr:
	andi	$2, $2, 255
	jr	$31
putint:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 1
	syscall
	ori	$2, $0, 4
	la	$4, _space_
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
getint:
	ori	$2, $0, 5
	syscall
	jr	$31
putchar:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 11
	syscall
	ori	$2, $0, 4
	la	$4, _space_
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
getchar:
	addi	$29, $29, -8
	sw	$4, 0($29)
	sw	$5, 4($29)
	ori	$2, $0, 12
	syscall
	ori	$5, $2, 0
	ori	$2, $0, 4
	la	$4, _cr_
	syscall
	ori	$2, $5, 0
	lw	$4, 0($29)
	lw	$5, 4($29)
	addi	$29, $29, 8
	jr	$31
putstring:
	addi	$29, $29, -16
	sw	$2, 0($29)
	sw	$4, 4($29)
	sw	$5, 8($29)
	sw	$6, 12($29)
	lw	$4, 0($2)
	addi	$5, $2, 4
	add	$6, $5, $4
	ori	$2, $0, 11
putstring_begin:
	sub	$4, $5, $6
	bgez	$4, putstring_done
	lb	$4, 0($5)
	syscall
	addi	$5, $5, 1
	j	putstring_begin
putstring_done:
	lw	$2, 0($29)
	lw	$4, 4($29)
	lw	$5, 8($29)
	lw	$6, 12($29)
	addi	$29, $29, 16
	jr	$31
_RuntimeError_:
	la	$4, _ErrMsg_
	ori	$2, $0, 4
	syscall
	ori	$4, $5, 0
	ori	$2, $0, 1
	syscall
	la	$4, _colon_space_
	ori	$2, $0, 4
	syscall
	ori	$4, $6, 0
	ori	$2, $0, 4
	syscall
	la	$4, _cr_
	ori	$2, $0, 4
	syscall
	j	_stop_
	.data	
# Fixed strings for I/O
_ErrMsg_:
	.asciiz	"Runtime error at line "
_colon_space_:
	.asciiz	": "
_cr_:
	.asciiz	"\n"
_space_:
	.asciiz	" "
# Message strings for specific errors
_Msg_IllegalArraySize_:
	.asciiz	"negative array size"
_Msg_IllegalIndex_:
	.asciiz	"array index out of bounds"
_Msg_DivZero_:
	.asciiz	"division by zero"
# String Literals
	.align	2
_Incorre_46_:
	.space	4
	.asciiz	"Incorrect Input"
	.align	2
_true:
	.space	4
	.asciiz	"true"
	.align	2
_false:
	.space	4
	.asciiz	"false"
	.align	2
_heap_:
	.space	100000