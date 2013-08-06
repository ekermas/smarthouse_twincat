CoDeSys+$   �                   @        @   2.3.9.31    @/    @                             y� R +    @                           8� R        �   @   q   C:\TWINCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               ��              STR2               ��                 CONCAT                                         @� R  �   ����           CTD           M             ��           Variable for CD Edge Detection      CD            ��           Count Down on rising edge    LOAD            ��           Load Start Value    PV           ��           Start Value       Q            ��           Counter reached 0    CV           ��           Current Counter Value             @� R  �   ����           CTU           M             ��            Variable for CU Edge Detection       CU            ��       
    Count Up    RESET            ��           Reset Counter to 0    PV           ��           Counter Limit       Q            ��           Counter reached the Limit    CV           ��           Current Counter Value             @� R  �   ����           CTUD           MU             ��            Variable for CU Edge Detection    MD             ��            Variable for CD Edge Detection       CU            ��	       
    Count Up    CD            ��
           Count Down    RESET            ��           Reset Counter to Null    LOAD            ��           Load Start Value    PV           ��           Start Value / Counter Limit       QU            ��           Counter reached Limit    QD            ��           Counter reached Null    CV           ��           Current Counter Value             @� R  �   ����           DELETE               STR               ��              LEN           ��              POS           ��                 DELETE                                         @� R  �   ����           F_TRIG           M             ��
                 CLK            ��           Signal to detect       Q            ��           Edge detected             @� R  �   ����           FIND               STR1               ��              STR2               ��                 FIND                                     @� R  �   ����           INSERT               STR1               ��              STR2               ��              POS           ��                 INSERT                                         @� R  �   ����           LEFT               STR               ��              SIZE           ��                 LEFT                                         @� R  �   ����           LEN               STR               ��                 LEN                                     @� R  �   ����           MID               STR               ��              LEN           ��              POS           ��                 MID                                         @� R  �   ����           R_TRIG           M             ��
                 CLK            ��           Signal to detect       Q            ��           Edge detected             @� R  �   ����           REPLACE               STR1               ��              STR2               ��              L           ��              P           ��                 REPLACE                                         @� R  �   ����           RIGHT               STR               ��              SIZE           ��                 RIGHT                                         @� R  �   ����           RS               SET            ��              RESET1            ��                 Q1            ��
                       @� R  �   ����           SEMA           X             ��                 CLAIM            ��	              RELEASE            ��
                 BUSY            ��                       @� R  �   ����           SR               SET1            ��              RESET            ��                 Q1            ��	                       @� R  �   ����           TOF           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with falling edge, resets timer with rising edge    PT           ��           time to pass, before Q is set       Q            ��	       2    is FALSE, PT seconds after IN had a falling edge    ET           ��
           elapsed time             @� R  �   ����           TON           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with rising edge, resets timer with falling edge    PT           ��           time to pass, before Q is set       Q            ��	       0    is TRUE, PT seconds after IN had a rising edge    ET           ��
           elapsed time             @� R  �   ����           TP        	   StartTime            ��           internal variable       IN            ��       !    Trigger for Start of the Signal    PT           ��       '    The length of the High-Signal in 10ms       Q            ��	           The pulse    ET           ��
       &    The current phase of the High-Signal             @� R  �   ����    R    @                                                                                          MAIN           T_LONG_PRESS    �                                       �� R  @    ����            
 �       ( w      K   �     K   �     K   �     K   �                 �         +     ��localhost       ���wh   }�@     �       �    ��     |� �\�wp �w�������w>�3     �� }�@           }�@     �Tw� ��h        ��   ��|� �   ��    h� �� ��  �|��|������|�� }�@        �� }�@     �� Tw� �� |� Tw� ��_������ ]"�     ,   ,                                                        K         @   8� R�  /*BECKCONFI3*/
        !       @   @   �   �     3               
   Standard            	B� R                        VAR_GLOBAL
END_VAR
                                                                                  "                          Standard
         MAIN����           ���� 8� R                 $����                                            Standard 8� R	8� R                                       	8� R                        VAR_CONFIG
END_VAR
                                                                                   '              , A ` O�           Global_Variables 8� R	B� R                     �  VAR_GLOBAL

	(* �����������, �������, ��������� � ������� �� �������� *)
	(* ��� 0 *)
	IN_CTL_BTN_1: BOOL; (* ����������� �������� *)

	(* ����� 1 *)
	IN_KTN_BTN_1: BOOL; (* ����������� �������� *)
	IN_KTN_BTN_2: BOOL; (* ����������� ��� ������� *)
	IN_KTN_DTR_1: BOOL; (* ������ �������� *)

	OUT_KTN_LIGHT_1: BOOL; (* ���� �������� *)
	OUT_KTN_LIGHT_2: BOOL; (* ���� �������������� (���������) *)
	OUT_KTN_FAN_1: BOOL; (* ������� *)

	(* ������ 2 *)
	IN_BLKN_BTN_1: BOOL; (* ����������� *)
	OUT_BLKN_LIGHT_1: BOOL; (* ���� *)

	(* �������� 3 *)
	IN_LVG_BTN_1: BOOL; (* ����������� *)
	IN_LVG_BTN_2: BOOL; (* ����������� �� ������� ����� *)
	OUT_LVG_LIGHT_1: BOOL; (* ���� �������� *)
	OUT_LVG_LIGHT_2: BOOL; (* ���� �������������� *)

	(* �������� 4 *)
	IN_BDR_BTN_1: BOOL; (* ����������� *)
	IN_BDR_BTN_2: BOOL; (* ����������� ��� �������� *)
	IN_BDR_BTN_3: BOOL; (* ����������� ��� �������� *)
	OUT_BDR_LIGHT_1: BOOL; (* ���� *)
	OUT_BDR_LIGHT_2: BOOL; (* ���� �������������� *)
	OUT_BDR_LIGHT_3: BOOL; (* ���� ��� �������� (������) *)
	OUT_BDR_LIGHT_4: BOOL; (* ���� ��� �������� (������) *)

	(* ������ ������� 5 *)
	IN_BMB_BTN_1: BOOL; (* ����������� �������� *)
	IN_BMB_BTN_2: BOOL; (* ����������� ����� ������� *)
	IN_BMB_DTR_1: BOOL; (* ������ �������� *)
	OUT_BMB_LIGHT_1: BOOL; (* ���� �������� *)
	OUT_BMB_LIGHT_2: BOOL; (* ���� ����� ������� *)
	OUT_BMB_FAN_1: BOOL; (* ������� *)
	OUT_BMB_VLV_1: BOOL; (* ������� *)
	OUT_BMB_VLV_2: BOOL; (* ������� *)

	(* ������� 6 *)
	IN_CHLD_BTN_1: BOOL; (* ����������� *)
	OUT_CHLD_LIGHT_1: BOOL; (* ���� �������� *)
	OUT_CHLD_LIGHT_2: BOOL; (* ���� �������������� *)

	(* ������� 7 *)
	IN_HLL_BTN_1: BOOL; (* ��������� ����������� *)
	IN_HLL_BTN_2: BOOL; (* ��������� ����������� *)
	IN_HLL_BTN_3: BOOL; (* ����������� �� ������� *)
	OUT_HLL_LIGHT_1: BOOL; (* ���� �������� *)
	OUT_HLL_LIGHT_2: BOOL; (* ���� �������������� *)
	OUT_HLL_LIGHT_3: BOOL; (* ���� ������� *)

	(* ������ ����� 8 *)
	IN_BMS_BTN_1: BOOL; (* ����������� *)
	IN_BMS_DTR_1: BOOL; (* ������ �������� *)
	OUT_BMS_LIGHT_1: BOOL; (* ���� *)
	OUT_BMS_FAN_1: BOOL; (* ������� *)
	OUT_BMS_VLV_1: BOOL; (* ������� *)
	OUT_BMS_VLV_2: BOOL; (* ������� *)

	(* ������� *)
	(* ��� *)
	G_OUT_0_SOCKET_G2: BOOL; (* ������������� (����� �� ������, ������, ������ � �.�.) *)

	(* ����� � ������ *)
	G_OUT_1_2_SOCKET_G1: BOOL; (* ����� *)
	G_OUT_1_2_SOCKET_G2: BOOL; (* ������������� (�����������)*)
	G_OUT_1_2_SOCKET_G3: BOOL; (* ����������� *)
	G_OUT_1_2_SOCKET_G4: BOOL; (* �����, 380� *)

	(* �������� � ������� *)
	G_OUT_3_4_SOCKET_G1: BOOL; (* ����� *)
	G_OUT_3_4_SOCKET_G2: BOOL; (* ������������� (���������) *)

	(* ������ ������� *)
	G_OUT_5_SOCKET_G1: BOOL; (* ����� *)
	G_OUT_5_SOCKET_G2: BOOL; (* ���������� ������ *)
	G_OUT_5_SOCKET_G3: BOOL; (* ������ �� ������ � (���) ���� *)

	(* ������� � ������� *)
	G_OUT_6_7_SOCKET_G1: BOOL; (* ����� *)

END_VAR                                                                                               '           #   , B B Pw           TwinCAT_Import N� R	W� R#                     �  VAR_GLOBAL (* DO NOT CHANGE THIS SHEET MANUALLY! *)
	PlcInVar_0	AT %QB128:	USINT;
	PlcInVar_1	AT %QB129:	USINT;
	PlcInVar_2	AT %QB130:	USINT;
	PlcInVar_3	AT %QB131:	USINT;
	PlcInVar_4	AT %QB132:	USINT;
	PlcInVar_5	AT %QB133:	USINT;
	PlcInVar_6	AT %QB134:	USINT;
	PlcInVar_7	AT %QB135:	USINT;
	PlcInVar_8	AT %QB136:	USINT;
	PlcInVar_9	AT %QB137:	USINT;
	PlcInVar_10	AT %QB138:	USINT;
	PlcInVar_11	AT %QB139:	USINT;
	PlcInVar_12	AT %QB140:	USINT;
	PlcInVar_13	AT %QB141:	USINT;
	PlcInVar_14	AT %QB142:	USINT;
	PlcInVar_15	AT %QB143:	USINT;
	PlcOutVar_0	AT %IB128:	USINT;
	PlcOutVar_1	AT %IB129:	USINT;
	PlcOutVar_2	AT %IB130:	USINT;
	PlcOutVar_3	AT %IB131:	USINT;
	PlcOutVar_4	AT %IB132:	USINT;
	PlcOutVar_5	AT %IB133:	USINT;
	PlcOutVar_6	AT %IB134:	USINT;
	PlcOutVar_7	AT %IB135:	USINT;
	PlcOutVar_8	AT %IB136:	USINT;
	PlcOutVar_9	AT %IB137:	USINT;
	PlcOutVar_10	AT %IB138:	USINT;
	PlcOutVar_11	AT %IB139:	USINT;
	PlcOutVar_12	AT %IB140:	USINT;
	PlcOutVar_13	AT %IB141:	USINT;
	PlcOutVar_14	AT %IB142:	USINT;
	PlcOutVar_15	AT %IB143:	USINT;
	Term_2_KL2408_1_Output	AT %QX0.0:	BOOL;
	Term_2_KL2408_2_Output	AT %QX0.1:	BOOL;
	Term_2_KL2408_3_Output	AT %QX0.2:	BOOL;
	Term_2_KL2408_4_Output	AT %QX0.3:	BOOL;
	Term_2_KL2408_5_Output	AT %QX0.4:	BOOL;
	Term_2_KL2408_6_Output	AT %QX0.5:	BOOL;
	Term_2_KL2408_7_Output	AT %QX0.6:	BOOL;
	Term_2_KL2408_8_Output	AT %QX0.7:	BOOL;
	Term_3_KL2408_1_Output	AT %QX1.0:	BOOL;
	Term_3_KL2408_2_Output	AT %QX1.1:	BOOL;
	Term_3_KL2408_3_Output	AT %QX1.2:	BOOL;
	Term_3_KL2408_4_Output	AT %QX1.3:	BOOL;
	Term_3_KL2408_5_Output	AT %QX1.4:	BOOL;
	Term_3_KL2408_6_Output	AT %QX1.5:	BOOL;
	Term_3_KL2408_7_Output	AT %QX1.6:	BOOL;
	Term_3_KL2408_8_Output	AT %QX1.7:	BOOL;
	Term_4_KL2408_1_Output	AT %QX2.0:	BOOL;
	Term_4_KL2408_2_Output	AT %QX2.1:	BOOL;
	Term_4_KL2408_3_Output	AT %QX2.2:	BOOL;
	Term_4_KL2408_4_Output	AT %QX2.3:	BOOL;
	Term_4_KL2408_5_Output	AT %QX2.4:	BOOL;
	Term_4_KL2408_6_Output	AT %QX2.5:	BOOL;
	Term_4_KL2408_7_Output	AT %QX2.6:	BOOL;
	Term_4_KL2408_8_Output	AT %QX2.7:	BOOL;
	Term_5_KL2408_1_Output	AT %QX3.0:	BOOL;
	Term_5_KL2408_2_Output	AT %QX3.1:	BOOL;
	Term_5_KL2408_3_Output	AT %QX3.2:	BOOL;
	Term_5_KL2408_4_Output	AT %QX3.3:	BOOL;
	Term_5_KL2408_5_Output	AT %QX3.4:	BOOL;
	Term_5_KL2408_6_Output	AT %QX3.5:	BOOL;
	Term_5_KL2408_7_Output	AT %QX3.6:	BOOL;
	Term_5_KL2408_8_Output	AT %QX3.7:	BOOL;
	Term_6_KL2408_1_Output	AT %QX4.0:	BOOL;
	Term_6_KL2408_2_Output	AT %QX4.1:	BOOL;
	Term_6_KL2408_3_Output	AT %QX4.2:	BOOL;
	Term_6_KL2408_4_Output	AT %QX4.3:	BOOL;
	Term_6_KL2408_5_Output	AT %QX4.4:	BOOL;
	Term_6_KL2408_6_Output	AT %QX4.5:	BOOL;
	Term_6_KL2408_7_Output	AT %QX4.6:	BOOL;
	Term_6_KL2408_8_Output	AT %QX4.7:	BOOL;
	Term_7_KL1408_1_Input	AT %IX0.0:	BOOL;
	Term_7_KL1408_2_Input	AT %IX0.1:	BOOL;
	Term_7_KL1408_3_Input	AT %IX0.2:	BOOL;
	Term_7_KL1408_4_Input	AT %IX0.3:	BOOL;
	Term_7_KL1408_5_Input	AT %IX0.4:	BOOL;
	Term_7_KL1408_6_Input	AT %IX0.5:	BOOL;
	Term_7_KL1408_7_Input	AT %IX0.6:	BOOL;
	Term_7_KL1408_8_Input	AT %IX0.7:	BOOL;
	Term_8_KL1408_1_Input	AT %IX1.0:	BOOL;
	Term_8_KL1408_2_Input	AT %IX1.1:	BOOL;
	Term_8_KL1408_3_Input	AT %IX1.2:	BOOL;
	Term_8_KL1408_4_Input	AT %IX1.3:	BOOL;
	Term_8_KL1408_5_Input	AT %IX1.4:	BOOL;
	Term_8_KL1408_6_Input	AT %IX1.5:	BOOL;
	Term_8_KL1408_7_Input	AT %IX1.6:	BOOL;
	Term_8_KL1408_8_Input	AT %IX1.7:	BOOL;
	Term_9_KL1408_1_Input	AT %IX2.0:	BOOL;
	Term_9_KL1408_2_Input	AT %IX2.1:	BOOL;
	Term_9_KL1408_3_Input	AT %IX2.2:	BOOL;
	Term_9_KL1408_4_Input	AT %IX2.3:	BOOL;
	Term_9_KL1408_5_Input	AT %IX2.4:	BOOL;
	Term_9_KL1408_6_Input	AT %IX2.5:	BOOL;
	Term_9_KL1408_7_Input	AT %IX2.6:	BOOL;
	Term_9_KL1408_8_Input	AT %IX2.7:	BOOL;
	Term_10_KL1408_1_Input	AT %IX3.0:	BOOL;
	Term_10_KL1408_2_Input	AT %IX3.1:	BOOL;
	Term_10_KL1408_3_Input	AT %IX3.2:	BOOL;
	Term_10_KL1408_4_Input	AT %IX3.3:	BOOL;
	Term_10_KL1408_5_Input	AT %IX3.4:	BOOL;
	Term_10_KL1408_6_Input	AT %IX3.5:	BOOL;
	Term_10_KL1408_7_Input	AT %IX3.6:	BOOL;
	Term_10_KL1408_8_Input	AT %IX3.7:	BOOL;
END_VAR

                                                                                               '           	                        Variable_Configuration 8� R	8� R	     �                VAR_CONFIG
END_VAR
                                                                                                 �   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @       dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                               4     �   ���  �3 ���   � ���     
    @��  ���     @      DEFAULT             System      �   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @       dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '         ,    .I           MAIN �� R	�� R                      =   PROGRAM MAIN
VAR
	T_LONG_PRESS : TIME := t#1000ms;
END_VAR                     ����                   "   STANDARD.LIB 5.6.98 11:03:02 @6�w5      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @                                           ��2                ����������������  
             ����  pr@*roib        ����  ����Ъ��                     POUs                 MAIN      ����          
   Data types  ����             Visualizations  ����              Global Variables                Global_Variables                     TwinCAT_Import  #                   Variable_Configuration  	   ����                                                              8� R����              	   localhost            P      	   localhost            P      	   localhost            P          ����