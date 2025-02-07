///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:25:57 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_ssp.c                     /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_ssp.c --preprocess        /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\ -lCN          /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\ -lB           /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\ -o            /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\Debug\Obj\ --debug        /
//                    --endian=little --cpu=Cortex-M3 -e --fpu=None           /
//                    --dlib_config "C:\Program Files (x86)\IAR               /
//                    Systems\Embedded Workbench                              /
//                    6.4\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\..\..\config\ -I          /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\..\..\..\..\Libraries\MDR /
//                    32F9Qx_StdPeriph_Driver\inc\ -I                         /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\..\..\..\..\Libraries\MDR /
//                    32F9Qx_StdPeriph_Driver\inc\USB_Library\ -I             /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\..\..\..\..\Libraries\CMS /
//                    IS\CM3\CoreSupport\ -I C:\WORK\Milandr.MDR1986BExx.1.4. /
//                    0\Example_Projects\MDR1986VE91_Eval\Demo\IAR_Systems\.. /
//                    \..\..\..\Libraries\CMSIS\CM3\DeviceSupport\MDR32F9Qx\i /
//                    nc\ -I C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projec /
//                    ts\MDR1986VE91_Eval\Demo\IAR_Systems\..\..\..\..\Librar /
//                    ies\CMSIS\CM3\DeviceSupport\MDR32F9Qx\startup\iar\ -I   /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\..\..\..\..\Example_Proje /
//                    cts\MDR1986VE91_Eval\inc\ -Ohz                          /
//    List file    =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\MDR32F9Qx_ssp. /
//                    s                                                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MDR32F9Qx_ssp

        #define SHT_PROGBITS 0x1

        PUBLIC SSP_BRGInit
        PUBLIC SSP_ClearITPendingBit
        PUBLIC SSP_Cmd
        PUBLIC SSP_DMACmd
        PUBLIC SSP_DeInit
        PUBLIC SSP_GetFlagStatus
        PUBLIC SSP_GetITStatus
        PUBLIC SSP_GetITStatusMasked
        PUBLIC SSP_ITConfig
        PUBLIC SSP_Init
        PUBLIC SSP_ReceiveData
        PUBLIC SSP_SendData
        PUBLIC SSP_StructInit

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_StdPeriph_Driver\src\MDR32F9Qx_ssp.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    MDR32F9Qx_ssp.c
//    4   * @author  Phyton Application Team
//    5   * @version V1.4.0
//    6   * @date    01/02/2011
//    7   * @brief   This file contains all the SSP firmware functions.
//    8   ******************************************************************************
//    9   * <br><br>
//   10   *
//   11   * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
//   12   * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
//   13   * TIME. AS A RESULT, PHYTON SHALL NOT BE HELD LIABLE FOR ANY DIRECT, INDIRECT
//   14   * OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
//   15   * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
//   16   * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
//   17   *
//   18   * <h2><center>&copy; COPYRIGHT 2011 Phyton</center></h2>
//   19   ******************************************************************************
//   20   * FILE MDR32F9Qx_ssp.c
//   21   */
//   22 
//   23 /* Includes ------------------------------------------------------------------*/
//   24 #include "MDR32F9Qx_config.h"
//   25 #include "MDR32F9Qx_ssp.h"
//   26 #include "MDR32F9Qx_rst_clk.h"
//   27 
//   28 #define ASSERT_INFO_FILE_ID FILEID__MDR32F9X_SSP_C
//   29 
//   30 /** @addtogroup __MDR32F9Qx_StdPeriph_Driver MDR32F9Qx Standard Peripherial Driver
//   31   * @{
//   32   */
//   33 
//   34 /** @defgroup SSP SSP
//   35   * @{
//   36   */
//   37 
//   38 /** @defgroup SSP_Private_Defines SSP Private Defines
//   39   * @{
//   40   */
//   41 
//   42 #define CR1_EN_Set                 ((uint16_t)0x0002)  /*!< SSP Enable Mask */
//   43 #define CR1_EN_Reset               ((uint16_t)0xFFFD)  /*!< SSP Disable Mask */
//   44 
//   45 /** @} */ /* End of group SSP_Private_Defines */
//   46 
//   47 /** @defgroup SSP_Private_Functions SSP Private Functions
//   48   * @{
//   49   */
//   50 
//   51 /**
//   52   * @brief  Resets the SSPx peripheral registers to their default reset values.
//   53   * @param  SSPx: Select the SSP peripheral.
//   54   *         This parameter can be one of the following values: SSP1, SSP2.
//   55   * @retval None
//   56   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   57 void SSP_DeInit(MDR_SSP_TypeDef* SSPx)
//   58 {
//   59   /* Check the parameters */
//   60   assert_param(IS_SSP_ALL_PERIPH(SSPx));
//   61 
//   62   SSPx->CR0   = 0;
SSP_DeInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   63   SSPx->CR1   = 0;
        STR      R1,[R0, #+4]
//   64   SSPx->CPSR  = 0;
        STR      R1,[R0, #+16]
//   65   SSPx->IMSC  = 0;
        STR      R1,[R0, #+20]
//   66   SSPx->DMACR = 0;
        STR      R1,[R0, #+36]
//   67 
//   68   /* Clear SSP ICR[RTIC] and SSP ICR[RORIC] bits */
//   69   SSPx->ICR = SSP_IT_RT | SSP_IT_ROR;
        MOVS     R1,#+3
        STR      R1,[R0, #+32]
//   70 
//   71 }
        BX       LR               ;; return
//   72 
//   73 /**
//   74   * @brief  Initializes the SSPx peripheral according to the specified
//   75   *         parameters in the SSP_InitStruct.
//   76   * @param  SSPx: Select the SSP peripheral.
//   77   *         This parameter can be one of the following values:
//   78   *         SSP1, SSP2.
//   79   * @param  SSP_InitStruct: pointer to a SSP_InitTypeDef structure
//   80   *         that contains the configuration information for the specified SSP peripheral.
//   81   * @retval None
//   82   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   83 void SSP_Init(MDR_SSP_TypeDef* SSPx, const SSP_InitTypeDef* SSP_InitStruct)
//   84 {
//   85   uint32_t tmpreg;
//   86 
//   87   /* Check the parameters */
//   88   assert_param(IS_SSP_ALL_PERIPH(SSPx));
//   89   assert_param(IS_SSP_SPEED_FACTOR(SSP_InitStruct->SSP_SCR));
//   90   assert_param(IS_SSP_SPEED_DIVIDER(SSP_InitStruct->SSP_CPSDVSR));
//   91   assert_param(IS_SSP_MODE(SSP_InitStruct->SSP_Mode));
//   92   assert_param(IS_SSP_WORD_LENGTH(SSP_InitStruct->SSP_WordLength));
//   93   assert_param(IS_SSP_SPH(SSP_InitStruct->SSP_SPH));
//   94   assert_param(IS_SSP_SPO(SSP_InitStruct->SSP_SPO));
//   95   assert_param(IS_SSP_FRF(SSP_InitStruct->SSP_FRF));
//   96   assert_param(IS_SSP_HARDWARE_FLOW_CONTROL(SSP_InitStruct->SSP_HardwareFlowControl));
//   97 
//   98   /* SSPx CPSR Configuration */
//   99   SSPx->CPSR = SSP_InitStruct->SSP_CPSDVSR;
SSP_Init:
        LDRH     R2,[R1, #+2]
        STR      R2,[R0, #+16]
//  100 
//  101   /* SSPx CR0 Configuration */
//  102   tmpreg = (SSP_InitStruct->SSP_SCR << SSP_CR0_SCR_Pos)
//  103          + SSP_InitStruct->SSP_SPH
//  104          + SSP_InitStruct->SSP_SPO
//  105          + SSP_InitStruct->SSP_FRF
//  106          + SSP_InitStruct->SSP_WordLength;
//  107   SSPx->CR0 = tmpreg;
        LDRH     R2,[R1, #+0]
        LDRH     R3,[R1, #+8]
        ADD      R2,R3,R2, LSL #+8
        LDRH     R3,[R1, #+10]
        ADDS     R2,R3,R2
        LDRH     R3,[R1, #+12]
        ADDS     R2,R3,R2
        LDRH     R3,[R1, #+6]
        ADDS     R2,R3,R2
        STR      R2,[R0, #+0]
//  108 
//  109   /* SSPx CR1 Configuration */
//  110   tmpreg = SSP_InitStruct->SSP_HardwareFlowControl + SSP_InitStruct->SSP_Mode;
//  111   SSPx->CR1 = tmpreg;
        LDRH     R2,[R1, #+14]
        LDRH     R1,[R1, #+4]
        ADDS     R1,R1,R2
        STR      R1,[R0, #+4]
//  112 }
        BX       LR               ;; return
//  113 
//  114 /**
//  115   * @brief  Fills each SSP_InitStruct member with its default value.
//  116   * @param  SSP_InitStruct: pointer to a SSP_InitTypeDef structure
//  117   *         that is to be initialized.
//  118   * @retval None
//  119   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  120 void SSP_StructInit(SSP_InitTypeDef* SSP_InitStruct)
//  121 {
//  122   /* SSP_InitStruct members default value */
//  123   /* Initialize the SPI_Mode member */
//  124   SSP_InitStruct->SSP_Mode = SSP_ModeMaster;
SSP_StructInit:
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
//  125   /* initialize the SSP_WordLength member */
//  126   SSP_InitStruct->SSP_WordLength = SSP_WordLength8b;
        MOVS     R1,#+7
        STRH     R1,[R0, #+6]
//  127   /* Initialize the SSP_SPO member */
//  128   SSP_InitStruct->SSP_SPO = SSP_SPO_Low;
        MOVS     R1,#+0
        STRH     R1,[R0, #+10]
//  129   /* Initialize the SSP_SPH member */
//  130   SSP_InitStruct->SSP_SPH = SSP_SPH_1Edge;
        STRH     R1,[R0, #+8]
//  131   /* Initialize the SSP_FRF member */
//  132   SSP_InitStruct->SSP_FRF = SSP_FRF_SPI_Motorola;
        STRH     R1,[R0, #+12]
//  133   /* Initialize the SSP max speed */
//  134   SSP_InitStruct->SSP_CPSDVSR = 2;
        MOVS     R1,#+2
        STRH     R1,[R0, #+2]
//  135   SSP_InitStruct->SSP_SCR = 0;
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  136 
//  137 }
        BX       LR               ;; return
//  138 
//  139 /**
//  140   * @brief  Enables or disables the specified SSP peripheral.
//  141   * @param  SSPx: Select the SSP peripheral.
//  142   *         This parameter can be one of the following values:
//  143   *         SSP1, SSP2.
//  144   * @param  NewState: new state of the SSPx peripheral.
//  145   *         This parameter can be: ENABLE or DISABLE.
//  146   * @retval None
//  147   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  148 void SSP_Cmd(MDR_SSP_TypeDef* SSPx, FunctionalState NewState)
//  149 {
//  150   /* Check the parameters */
//  151   assert_param(IS_SSP_ALL_PERIPH(SSPx));
//  152   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  153 
//  154   if (NewState != DISABLE)
SSP_Cmd:
        CMP      R1,#+0
        LDR      R1,[R0, #+4]
        ITEE     NE 
        ORRNE    R1,R1,#0x2
        MOVWEQ   R2,#+65533
        ANDEQ    R1,R2,R1
//  155   {
//  156     /* Enable the selected SSP by setting the SSE bit in the CR1 register */
//  157     SSPx->CR1 |= CR1_EN_Set;
//  158   }
//  159   else
//  160   {
//  161     /* Disable the selected SSP by clearing the SSE bit in the CR1 register */
//  162     SSPx->CR1 &= CR1_EN_Reset;
        STR      R1,[R0, #+4]
//  163   }
//  164 }
        BX       LR               ;; return
//  165 
//  166 /**
//  167   * @brief  Enables or disables the specified SSP interrupts.
//  168   * @param  SSPx: Select the SSP peripheral.
//  169   *         This parameter can be one of the following values:
//  170   *         SSP1, SSP2.
//  171   * @param  SSP_IT: specifies the SSP interrupt sources to be enabled or disabled.
//  172   *         This parameter can be one of the following values:
//  173   *           @arg SSP_IT_TX
//  174   *           @arg SSP_IT_RX
//  175   *           @arg SSP_IT_RT
//  176   *           @arg SSP_IT_ROR
//  177   * @param  NewState: new state of the specified SSPx interrupts.
//  178   *         This parameter can be: ENABLE or DISABLE.
//  179   * @retval None
//  180   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  181 void SSP_ITConfig(MDR_SSP_TypeDef* SSPx, uint32_t SSP_IT, FunctionalState NewState)
//  182 {
//  183   /* Check the parameters */
//  184   assert_param(IS_SSP_ALL_PERIPH(SSPx));
//  185   assert_param(IS_SSP_CONFIG_IT(SSP_IT));
//  186   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  187 
//  188   if (NewState != DISABLE)
SSP_ITConfig:
        CMP      R2,#+0
        LDR      R2,[R0, #+20]
        ITE      NE 
        ORRNE    R1,R1,R2
        BICEQ    R1,R2,R1
//  189   {
//  190     SSPx->IMSC |= SSP_IT;
//  191   }
//  192   else
//  193   {
//  194     SSPx->IMSC &= ~SSP_IT;
        STR      R1,[R0, #+20]
//  195   }
//  196 }
        BX       LR               ;; return
//  197 
//  198 /**
//  199   * @brief  Checks whether the specified SSP interrupt has occurred or not.
//  200   * @param  SSPx: Select the SSP peripheral.
//  201   *         This parameter can be one of the following values:
//  202   *         SSP1, SSP2.
//  203   * @param  SSP_IT: specifies the SSP interrupt source to check.
//  204   *         This parameter can be one of the following values:
//  205   *           @arg SSP_IT_TX
//  206   *           @arg SSP_IT_RX
//  207   *           @arg SSP_IT_RT
//  208   *           @arg SSP_IT_ROR
//  209   * @retval The new state of SSP_IT (SET or RESET).
//  210   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  211 ITStatus SSP_GetITStatus(MDR_SSP_TypeDef* SSPx, uint32_t SSP_IT)
//  212 {
//  213   ITStatus bitstatus;
//  214 
//  215   /* Check the parameters */
//  216   assert_param(IS_SSP_ALL_PERIPH(SSPx));
//  217   assert_param(IS_SSP_CONFIG_IT(SSP_IT));
//  218 
//  219   if ((SSPx->RIS & SSP_IT) == SSP_IT)
SSP_GetITStatus:
        LDR      R0,[R0, #+24]
        ANDS     R0,R1,R0
        CMP      R0,R1
        BNE.N    ??SSP_GetITStatus_0
//  220   {
//  221     bitstatus = SET;
        MOVS     R0,#+1
        BX       LR
//  222   }
//  223   else
//  224   {
//  225     bitstatus = RESET;
??SSP_GetITStatus_0:
        MOVS     R0,#+0
//  226   }
//  227 
//  228   return (bitstatus);
        BX       LR               ;; return
//  229 }
//  230 
//  231 /**
//  232   * @brief  Checks whether the specified SSP interrupt (masked) has occurred or not.
//  233   * @param  SSPx: Select the SSP peripheral.
//  234   *         This parameter can be one of the following values:
//  235   *         SSP1, SSP2.
//  236   * @param  SSP_IT: specifies the SSP interrupt source to check.
//  237   *         This parameter can be one of the following values:
//  238   *           @arg SSP_IT_TX
//  239   *           @arg SSP_IT_RX
//  240   *           @arg SSP_IT_RT
//  241   *           @arg SSP_IT_ROR
//  242  * @retval The new state of SSP_IT (SET or RESET).
//  243   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  244 ITStatus SSP_GetITStatusMasked(MDR_SSP_TypeDef* SSPx, uint32_t SSP_IT)
//  245 {
//  246   ITStatus bitstatus;
//  247 
//  248   /* Check the parameters */
//  249   assert_param(IS_SSP_ALL_PERIPH(SSPx));
//  250   assert_param(IS_SSP_CONFIG_IT(SSP_IT));
//  251 
//  252   if (SSPx->MIS & SSP_IT)
SSP_GetITStatusMasked:
        LDR      R0,[R0, #+28]
        ANDS     R0,R1,R0
        IT       NE 
        MOVNE    R0,#+1
//  253   {
//  254     bitstatus = SET;
//  255   }
//  256   else
//  257   {
//  258     bitstatus = RESET;
//  259   }
//  260 
//  261   return (bitstatus);
        UXTB     R0,R0
        BX       LR               ;; return
//  262 }
//  263 
//  264 /**
//  265   * @brief  Clears the SSPx�s interrupt pending bits.
//  266   * @param  SSPx: Select the SSP or the SSP peripheral.
//  267   *         This parameter can be one of the following values:
//  268   *         SSP1, SSP2.
//  269   * @param  SSP_IT: specifies the interrupt pending bit to clear.
//  270   *         This parameter can be one of the following values:
//  271   *           @arg SSP_IT_RT
//  272   *           @arg SSP_IT_ROR
//  273   * @retval None
//  274   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  275 void SSP_ClearITPendingBit(MDR_SSP_TypeDef* SSPx, uint32_t SSP_IT)
//  276 {
//  277   /* Check the parameters */
//  278   assert_param(IS_SSP_ALL_PERIPH(SSPx));
//  279   assert_param(IS_SSP_RESET_IT(SSP_IT));
//  280 
//  281   SSPx->ICR |= SSP_IT;
SSP_ClearITPendingBit:
        LDR      R2,[R0, #+32]
        ORRS     R1,R1,R2
        STR      R1,[R0, #+32]
//  282 }
        BX       LR               ;; return
//  283 
//  284 /**
//  285   * @brief  Enables or disables the SSP�s DMA interface.
//  286   * @param  SSPx: Select the SSP peripheral.
//  287   *         This parameter can be one of the following values:
//  288   *         SSP1, SSP2.
//  289   * @param  SSP_DMAReq: specifies the DMA request.
//  290   *         This parameter can be any combination of the following values:
//  291   *           @arg SSP_DMA_RXE: SSP DMA receive request
//  292   *           @arg SSP_DMA_TXE: SSP DMA transmit request
//  293   * @param  NewState: new state of the DMA Request sources.
//  294   *         This parameter can be: ENABLE or DISABLE.
//  295   * @note The DMA mode is not available for SSP5.
//  296   * @retval None
//  297   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  298 void SSP_DMACmd(MDR_SSP_TypeDef* SSPx, uint32_t SSP_DMAReq, FunctionalState NewState)
//  299 {
//  300   /* Check the parameters */
//  301   assert_param(IS_SSP_ALL_PERIPH(SSPx));
//  302   assert_param(IS_SSP_DMAREQ(SSP_DMAReq));
//  303   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  304 
//  305   if (NewState != DISABLE)
SSP_DMACmd:
        CMP      R2,#+0
        LDR      R2,[R0, #+36]
        ITEE     NE 
        ORRNE    R1,R1,R2
        MVNEQ    R1,R1
        ANDEQ    R1,R1,R2
//  306   {
//  307     /* Enable the DMA transfer for selected requests in the SSP DMACR register */
//  308     SSPx->DMACR |= SSP_DMAReq;
//  309   }
//  310   else
//  311   {
//  312     /* Disable the DMA transfer for selected requests in the SSP DMACR register */
//  313     SSPx->DMACR &= (uint16_t)~SSP_DMAReq;
        STR      R1,[R0, #+36]
//  314   }
//  315 }
        BX       LR               ;; return
//  316 
//  317 /**
//  318   * @brief  Transmits single data through the SSPx peripheral.
//  319   * @param  SSPx: Select the SSP peripheral.
//  320   *         This parameter can be one of the following values:
//  321   *         SSP1, SSP2.
//  322   * @param  Data: the data to transmit.
//  323   * @retval None
//  324   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  325 void SSP_SendData(MDR_SSP_TypeDef* SSPx, uint16_t Data)
//  326 {
//  327   /* Check the parameters */
//  328   assert_param(IS_SSP_ALL_PERIPH(SSPx));
//  329 
//  330   /* Transmit Data */
//  331   SSPx->DR = Data;
SSP_SendData:
        STR      R1,[R0, #+8]
//  332 
//  333 }
        BX       LR               ;; return
//  334 
//  335 /**
//  336   * @brief  Returns the most recent received data by the SSPx peripheral.
//  337   * @param  SSPx: Select the SSP peripheral.
//  338   *         This parameter can be one of the following values:
//  339   *         SSP1, SSP2.
//  340   * @retval The received data (7:0) and error flags (15:8).
//  341   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  342 uint16_t SSP_ReceiveData(MDR_SSP_TypeDef* SSPx)
//  343 {
//  344   /* Check the parameters */
//  345   assert_param(IS_SSP_ALL_PERIPH(SSPx));
//  346 
//  347   /* Receive Data */
//  348   return ((uint16_t)(SSPx->DR));
SSP_ReceiveData:
        LDR      R0,[R0, #+8]
        UXTH     R0,R0
        BX       LR               ;; return
//  349 }
//  350 
//  351 /**
//  352   * @brief  Checks whether the specified SSP flag is set or not.
//  353   * @param  SSPx: Select the SSP or the SSP peripheral.
//  354   *         This parameter can be one of the following values:
//  355   *         SSP1, SSP2, SSP3, SSP4 or SSP5.
//  356   * @param  SSP_FLAG: specifies the flag to check.
//  357   *         This parameter can be one of the following values:
//  358   *           @arg SSP_FLAG_BSY
//  359   *           @arg SSP_FLAG_RFF
//  360   *           @arg SSP_FLAG_RNE
//  361   *           @arg SSP_FLAG_TNF
//  362   * @retval The new state of SSP_FLAG (SET or RESET).
//  363   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  364 FlagStatus SSP_GetFlagStatus(MDR_SSP_TypeDef* SSPx, uint32_t SSP_FLAG)
//  365 {
//  366   FlagStatus bitstatus;
//  367 
//  368   /* Check the parameters */
//  369   assert_param(IS_SSP_ALL_PERIPH(SSPx));
//  370   assert_param(IS_SSP_FLAG(SSP_FLAG));
//  371 
//  372   if (SSPx->SR & SSP_FLAG)
SSP_GetFlagStatus:
        LDR      R0,[R0, #+12]
        ANDS     R0,R1,R0
        IT       NE 
        MOVNE    R0,#+1
//  373   {
//  374     bitstatus = SET;
//  375   }
//  376   else
//  377   {
//  378     bitstatus = RESET;
//  379   }
//  380 
//  381   return (bitstatus);
        UXTB     R0,R0
        BX       LR               ;; return
//  382 }
//  383 
//  384 /**
//  385   * @brief  Initializes the SSPx peripheral Clock according to the
//  386   *         specified parameters.
//  387   * @param  SSPx: Select the SSP peripheral.
//  388   *         This parameter can be one of the following values:
//  389   *         SSP1, SSP2.
//  390   * @param  SSP_BRG: specifies the HCLK division factor.
//  391   *         This parameter can be one of the following values:
//  392   *           @arg SSP_HCLKdiv1
//  393   *           @arg SSP_HCLKdiv2
//  394   *           @arg SSP_HCLKdiv4
//  395   *           @arg SSP_HCLKdiv8
//  396   *           @arg SSP_HCLKdiv16
//  397   *           @arg SSP_HCLKdiv32
//  398   *           @arg SSP_HCLKdiv64
//  399   *           @arg SSP_HCLKdiv128
//  400   * @retval None
//  401   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  402 void SSP_BRGInit ( MDR_SSP_TypeDef* SSPx, uint32_t SSP_BRG ) {
SSP_BRGInit:
        PUSH     {R4,LR}
//  403 	uint32_t tmpreg;
//  404 
//  405 	/* Check the parameters */
//  406 	assert_param(IS_SSP_ALL_PERIPH(SSPx));
//  407 	assert_param(IS_SSP_CLOCK_BRG(SSP_BRG));
//  408 
//  409 #ifdef USE_MDR1986VE3 /* For Cortex M1 */
//  410 	if ( (SSPx != MDR_SSP1) && (SSPx != MDR_SSP2) && (SSPx != MDR_SSP3)) {
//  411 		tmpreg = MDR_RST_CLK->UART_SSP_CLOCK;
//  412 	}
//  413 	else
//  414 #endif	// #ifdef USE_MDR1986VE3 /* For Cortex M1 */
//  415 		tmpreg = MDR_RST_CLK->SSP_CLOCK;
        LDR.N    R2,??DataTable0  ;; 0x4002002c
        LDR      R3,[R2, #+0]
//  416 
//  417 
//  418 
//  419 	if (SSPx == MDR_SSP1) {
        LDR.N    R4,??DataTable0_1  ;; 0x40040000
        CMP      R0,R4
        BNE.N    ??SSP_BRGInit_0
//  420 		tmpreg |= RST_CLK_SSP_CLOCK_SSP1_CLK_EN;
//  421 		tmpreg &= ~RST_CLK_SSP_CLOCK_SSP1_BRG_Msk;
//  422 		tmpreg |= SSP_BRG;
        LSRS     R0,R3,#+8
        ORRS     R0,R1,R0, LSL #+8
        ORR      R3,R0,#0x1000000
        B.N      ??SSP_BRGInit_1
//  423 	}
//  424 	else{
//  425 		if (SSPx == MDR_SSP2) {
??SSP_BRGInit_0:
        LDR.N    R4,??DataTable0_2  ;; 0x400a0000
        CMP      R0,R4
        BNE.N    ??SSP_BRGInit_1
//  426 			tmpreg |= RST_CLK_SSP_CLOCK_SSP2_CLK_EN;
//  427 			tmpreg &= ~RST_CLK_SSP_CLOCK_SSP2_BRG_Msk;
//  428 			tmpreg |= (SSP_BRG << 8);
        BIC      R0,R3,#0xFF00
        ORR      R0,R0,R1, LSL #+8
        ORR      R3,R0,#0x2000000
//  429 		}
//  430 #ifdef USE_MDR1986VE3 /* For Cortex M1 */
//  431 		else{
//  432 			if(SSPx == MDR_SSP3) {
//  433 				tmpreg |= RST_CLK_SSP_CLOCK_SSP3_CLK_EN;
//  434 				tmpreg &= ~RST_CLK_SSP_CLOCK_SSP3_BRG_Msk;
//  435 				tmpreg |= (SSP_BRG << 16);
//  436 			}
//  437 
//  438 			else{
//  439 				if(SSPx == MDR_SSP4) {
//  440 					tmpreg |= RST_CLK_UART_SSP_CLOCK_SSP4_CLK_EN;
//  441 					tmpreg &= ~RST_CLK_UART_SSP_CLOCK_SSP4_BRG_Msk;
//  442 					tmpreg |= (SSP_BRG << 16);
//  443 				}
//  444 			}
//  445 		}
//  446 #endif // #ifdef USE_MDR1986VE3 /* For Cortex M1 */
//  447 	}
//  448 #ifdef USE_MDR1986VE3 /* For Cortex M1 */
//  449 	if( (SSPx != MDR_SSP1) && (SSPx != MDR_SSP2) && (SSPx != MDR_SSP3) ){
//  450 		MDR_RST_CLK->UART_SSP_CLOCK = tmpreg;
//  451 	}
//  452 	else
//  453 #endif // #ifdef USE_MDR1986VE3 /* For Cortex M1 */
//  454 		MDR_RST_CLK->SSP_CLOCK = tmpreg;
??SSP_BRGInit_1:
        STR      R3,[R2, #+0]
//  455 
//  456 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     0x4002002c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_1:
        DC32     0x40040000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_2:
        DC32     0x400a0000

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  457 
//  458 /** @} */ /* End of group SSP_Private_Functions */
//  459 
//  460 /** @} */ /* End of group SSP */
//  461 
//  462 /** @} */ /* End of group __MDR32F9Qx_StdPeriph_Driver */
//  463 
//  464 /******************* (C) COPYRIGHT 2011 Phyton *********************************
//  465 *
//  466 * END OF FILE MDR32F9Qx_ssp.c */
//  467 
// 
// 248 bytes in section .text
// 
// 248 bytes of CODE memory
//
//Errors: none
//Warnings: none
