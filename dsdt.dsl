/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of dsdt.aml
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0000669C (26268)
 *     Revision         0x01 **** 32-bit table (V1), no 64-bit math support
 *     Checksum         0xF6
 *     OEM ID           "0AB11"
 *     OEM Table ID     "0AB11009"
 *     OEM Revision     0x00000009 (9)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20051117 (537202967)
 */
DefinitionBlock ("", "DSDT", 1, "0AB11", "0AB11009", 0x0000000B)
{
    Name (OSTY, Ones)
    OperationRegion (ACMS, SystemIO, 0x72, 0x02)
    Field (ACMS, ByteAcc, NoLock, Preserve)
    {
        ICMS,   8, 
        DCMS,   8
    }

    IndexField (ICMS, DCMS, ByteAcc, NoLock, Preserve)
    {
        Offset (0x01), 
        Offset (0x04), 
        Offset (0x08), 
        BS_A,   32
    }

    OperationRegion (CFGS, SystemMemory, BS_A, 0x80)
    Field (CFGS, AnyAcc, NoLock, Preserve)
    {
        Offset (0x04), 
        PCIE,   32, 
        Offset (0x31), 
        TPMR,   1, 
        STHP,   1, 
        SHPG,   1, 
        OSCF,   1
    }

    OperationRegion (CMPT, SystemIO, 0x0C50, 0x03)
    Field (CMPT, ByteAcc, NoLock, Preserve)
    {
        CMID,   8, 
            ,   6, 
        GPCT,   2, 
        GP0I,   1, 
        GP1I,   1, 
        GP2I,   1, 
        GP3I,   1, 
        GP4I,   1, 
        GP5I,   1, 
        GP6I,   1, 
        GP7I,   1
    }

    OperationRegion (PCFG, SystemMemory, PCIE, 0x02000000)
    Field (PCFG, AnyAcc, NoLock, Preserve)
    {
        Offset (0x38078), 
        Offset (0x3807A), 
        PMS7,   1, 
        Offset (0x50078), 
        Offset (0x5007A), 
        PMSA,   1, 
        Offset (0x8800A), 
        STCL,   16, 
        Offset (0xA0004), 
        SMIE,   1, 
        SMME,   1, 
        Offset (0xA0008), 
        RVID,   8, 
        Offset (0xA0014), 
        SMB1,   32, 
        Offset (0xA0050), 
            ,   10, 
        GP51,   1, 
        Offset (0xA0056), 
            ,   11, 
        GP64,   1, 
        Offset (0xA0082), 
            ,   2, 
        G31O,   1, 
        Offset (0xA0090), 
        SM00,   16, 
        Offset (0xA00BA), 
            ,   4, 
        ESMP,   1, 
        Offset (0xA00BB), 
            ,   1, 
        HSMP,   1, 
        Offset (0xA00E1), 
            ,   6, 
        ACIR,   1, 
        Offset (0xA4004), 
        PCMD,   2
    }

    OperationRegion (PMIO, SystemIO, 0x0CD6, 0x02)
    Field (PMIO, ByteAcc, NoLock, Preserve)
    {
        INPM,   8, 
        DAPM,   8
    }

    IndexField (INPM, DAPM, ByteAcc, NoLock, Preserve)
    {
            ,   1, 
        TM1E,   1, 
        TM2E,   1, 
        Offset (0x01), 
            ,   1, 
        TM1S,   1, 
        TM2S,   1, 
        Offset (0x04), 
            ,   7, 
        SLPS,   1, 
        Offset (0x07), 
            ,   7, 
        CLPS,   1, 
        Offset (0x0D), 
        EV0S,   1, 
        EV1S,   1, 
        Offset (0x10), 
            ,   6, 
        PWDE,   1, 
        Offset (0x1C), 
            ,   3, 
        MKME,   1, 
        PI3E,   1, 
        PI2E,   1, 
        PI1E,   1, 
        PI0E,   1, 
            ,   3, 
        MKMS,   1, 
        PI3S,   1, 
        PI2S,   1, 
        PI1S,   1, 
        PI0S,   1, 
        Offset (0x20), 
        P1EB,   16, 
        Offset (0x36), 
            ,   6, 
        GV6P,   1, 
        GV7P,   1, 
        EV0C,   1, 
        EV1C,   1, 
            ,   1, 
        GM0P,   1, 
        GM1P,   1, 
        GM2P,   1, 
        GM3P,   1, 
        GM8P,   1, 
            ,   1, 
        GM4P,   1, 
        GM5P,   1, 
            ,   1, 
        GM6P,   1, 
        GM7P,   1, 
        Offset (0x3B), 
        GPX0,   1, 
        GPX4,   1, 
        GPX5,   1, 
        GPX1,   1, 
        GPX6,   1, 
        GPX7,   1, 
        GPX2,   1, 
        GPX3,   1, 
        Offset (0x55), 
        SPRE,   1, 
            ,   1, 
            ,   1, 
        EPNM,   1, 
        DPPF,   1, 
        FNGS,   1, 
        Offset (0x61), 
            ,   7, 
        R617,   1, 
        Offset (0x65), 
            ,   4, 
        RSTU,   1, 
        Offset (0x68), 
            ,   3, 
        TPDE,   1, 
            ,   1, 
        Offset (0x7C), 
            ,   2, 
        BLNK,   2, 
        Offset (0x84), 
        WPNE,   1, 
        WPAG,   1, 
        Offset (0x92), 
            ,   7, 
        GV7S,   1, 
        Offset (0x96), 
        GP8I,   1, 
        GP9I,   1, 
        Offset (0x9A), 
            ,   7, 
        HECO,   1, 
        Offset (0xA8), 
        PI4E,   1, 
        PI5E,   1, 
        PI6E,   1, 
        PI7E,   1, 
        Offset (0xA9), 
        PI4S,   1, 
        PI5S,   1, 
        PI6S,   1, 
        PI7S,   1
    }

    OperationRegion (P1E0, SystemIO, P1EB, 0x04)
    Field (P1E0, ByteAcc, NoLock, Preserve)
    {
            ,   14, 
        PEWS,   1, 
        WSTA,   1, 
            ,   14, 
        PEWD,   1
    }

    Method (SPTS, 1, NotSerialized)
    {
        If ((Arg0 == 0x03))
        {
            RSTU = Zero
        }

        If ((Arg0 == One))
        {
            BLNK = 0x02
        }

        If ((Arg0 == 0x02))
        {
            BLNK = Zero
        }

        If ((Arg0 == 0x03))
        {
            BLNK = One
        }

        CLPS = One
        SLPS = One
        If ((RVID <= 0x13))
        {
            PWDE = Zero
        }
    }

    Method (SWAK, 1, NotSerialized)
    {
        HECO = One
        If ((Arg0 == 0x03))
        {
            RSTU = One
        }

        PEWS = PEWS /* \PEWS */
        BLNK = 0x03
        PMS7 = One
        PMSA = One
    }

    Method (TRMD, 1, NotSerialized)
    {
        SPRE = Arg0
        TPDE = Arg0
    }

    Name (DP80, 0x80)
    Name (DP90, 0x90)
    Name (SPIO, 0x2E)
    Name (SEIO, 0x164E)
    Name (IO1B, 0x0F40)
    Name (IO1L, 0x80)
    Name (IO2B, 0x0295)
    Name (IO2L, 0x02)
    Name (APIC, One)
    Name (MR64, Zero)
    Name (PMBS, 0x0800)
    Name (PMLN, 0xA0)
    Name (GPBS, Zero)
    Name (GPLN, Zero)
    Name (SMB0, 0x0B00)
    Name (SMBB, 0x0B20)
    Name (SMBM, 0x10)
    Name (SMBL, 0x20)
    Name (PCIB, 0xE0000000)
    Name (PCIL, 0x10000000)
    Name (PEPM, One)
    Name (PEER, One)
    Name (PECS, One)
    Name (SMIT, 0xB0)
    Name (CMRQ, 0xE0)
    Name (CMER, 0xE1)
    Name (CMOR, 0xE3)
    Name (PEHP, Zero)
    Name (SHPC, Zero)
    OperationRegion (BIOS, SystemMemory, 0xAFE94064, 0xFF)
    Field (BIOS, ByteAcc, NoLock, Preserve)
    {
        SS1,    1, 
        SS2,    1, 
        SS3,    1, 
        SS4,    1, 
        Offset (0x01), 
        IOST,   16, 
        TOPM,   32, 
        ROMS,   32, 
        MG1B,   32, 
        MG1L,   32, 
        MG2B,   32, 
        MG2L,   32, 
        Offset (0x1C), 
        DMAX,   8, 
        HPTA,   32, 
        CPB0,   32, 
        CPB1,   32, 
        CPB2,   32, 
        CPB3,   32, 
        ASSB,   8, 
        AOTB,   8, 
        AAXB,   32, 
        SMIF,   8, 
        DTSE,   8, 
        DTS1,   8, 
        DTS2,   8, 
        MPEN,   8, 
        TPMF,   8, 
        MG3B,   32, 
        MG3L,   32, 
        MH1B,   32, 
        MH1L,   32, 
        OSTP,   8, 
        M4BL,   32, 
        M4BH,   32, 
        M4LL,   32, 
        M4LH,   32, 
        VGAR,   8, 
        SEB0,   8, 
        SUB0,   8, 
        SEB1,   8, 
        SUB1,   8, 
        SEB2,   8, 
        SUB2,   8, 
        SEB3,   8, 
        SUB3,   8, 
        IOB0,   16, 
        IOL0,   16, 
        IOB1,   16, 
        IOL1,   16, 
        IOB2,   16, 
        IOL2,   16, 
        IOB3,   16, 
        IOL3,   16, 
        GP4S,   32, 
        GP4L,   32, 
        GP5S,   32, 
        GP5L,   32, 
        GP6S,   32, 
        GP6L,   32, 
        GP7S,   32, 
        GP7L,   32, 
        GP8S,   32, 
        GP8L,   32, 
        GP9S,   32, 
        GP9L,   32
    }

    Method (RRIO, 4, NotSerialized)
    {
        Debug = "RRIO"
    }

    Method (RDMA, 3, NotSerialized)
    {
        Debug = "rDMA"
    }

    Name (PICM, Zero)
    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        If (Arg0)
        {
            DBG8 = 0xAA
        }
        Else
        {
            DBG8 = 0xAC
        }

        PICM = Arg0
    }

    Name (OSVR, Ones)
    Method (OSFL, 0, NotSerialized)
    {
        If ((OSVR != Ones))
        {
            Return (OSVR) /* \OSVR */
        }

        Name (TTT0, Zero)
        TTT0 = OSYS ()
        If ((TTT0 == One))
        {
            OSVR = 0x03
        }
        ElseIf ((TTT0 == 0x10))
        {
            OSVR = One
        }
        ElseIf ((TTT0 == 0x11))
        {
            OSVR = 0x02
        }
        ElseIf ((TTT0 == 0x12))
        {
            OSVR = 0x04
        }
        ElseIf ((TTT0 == 0x13))
        {
            OSVR = Zero
        }
        ElseIf ((TTT0 == 0x14))
        {
            OSVR = Zero
        }
        ElseIf ((TTT0 == 0x15))
        {
            OSVR = Zero
        }
        ElseIf ((TTT0 == 0x16))
        {
            OSVR = Zero
        }

        Return (OSVR) /* \OSVR */
    }

    Method (MCTH, 2, NotSerialized)
    {
        If ((SizeOf (Arg0) < SizeOf (Arg1)))
        {
            Return (Zero)
        }

        Local0 = (SizeOf (Arg0) + One)
        Name (BUF0, Buffer (Local0){})
        Name (BUF1, Buffer (Local0){})
        BUF0 = Arg0
        BUF1 = Arg1
        While (Local0)
        {
            Local0--
            If ((DerefOf (BUF0 [Local0]) != DerefOf (BUF1 [Local0]
                )))
            {
                Return (Zero)
            }
        }

        Return (One)
    }

    Name (PRWP, Package (0x02)
    {
        Zero, 
        Zero
    })
    Method (GPRW, 2, NotSerialized)
    {
        PRWP [Zero] = Arg0
        Local0 = (SS1 << One)
        Local0 |= (SS2 << 0x02)
        Local0 |= (SS3 << 0x03)
        Local0 |= (SS4 << 0x04)
        If (((One << Arg1) & Local0))
        {
            PRWP [One] = Arg1
        }
        Else
        {
            Local0 >>= One
            If (((OSFL () == One) || (OSFL () == 0x02)))
            {
                FindSetLeftBit (Local0, PRWP [One])
            }
            Else
            {
                FindSetRightBit (Local0, PRWP [One])
            }
        }

        Return (PRWP) /* \PRWP */
    }

    Name (WAKP, Package (0x02)
    {
        Zero, 
        Zero
    })
    OperationRegion (DEB0, SystemIO, DP80, One)
    Field (DEB0, ByteAcc, NoLock, Preserve)
    {
        DBG8,   8
    }

    OperationRegion (DEB1, SystemIO, DP90, 0x02)
    Field (DEB1, WordAcc, NoLock, Preserve)
    {
        DBG9,   16
    }

    Method (OSYS, 0, NotSerialized)
    {
        Local0 = 0x10
        If (CondRefOf (_OSI, Local1))
        {
            If (_OSI ("Windows 2000"))
            {
                Local0 = 0x12
            }

            If (_OSI ("Windows 2001"))
            {
                Local0 = 0x13
            }

            If (_OSI ("Windows 2001 SP1"))
            {
                Local0 = 0x13
            }

            If (_OSI ("Windows 2001 SP2"))
            {
                Local0 = 0x13
            }

            If (_OSI ("Windows 2001.1"))
            {
                Local0 = 0x14
            }

            If (_OSI ("Windows 2001.1 SP1"))
            {
                Local0 = 0x14
            }

            If (_OSI ("Windows 2006"))
            {
                Local0 = 0x15
            }

            If (_OSI ("Windows 2009"))
            {
                Local0 = 0x16
            }
        }
        ElseIf (MCTH (_OS, "Microsoft Windows NT"))
        {
            Local0 = 0x12
        }
        ElseIf (MCTH (_OS, "Microsoft WindowsME: Millennium Edition"))
        {
            Local0 = 0x11
        }

        Return (Local0)
    }

    Scope (_PR)
    {
        Processor (P001, 0x01, 0x00000810, 0x06){}
        Processor (P002, 0x02, 0x00000000, 0x00){}
        Processor (P003, 0x03, 0x00000000, 0x00){}
        Processor (P004, 0x04, 0x00000000, 0x00){}
        Processor (P005, 0x05, 0x00000000, 0x00){}
        Processor (P006, 0x06, 0x00000000, 0x00){}
        Processor (P007, 0x07, 0x00000000, 0x00){}
        Processor (P008, 0x08, 0x00000000, 0x00){}
        Processor (P009, 0x09, 0x00000000, 0x00){}
        Processor (P00A, 0x0A, 0x00000000, 0x00){}
        Processor (P00B, 0x0B, 0x00000000, 0x00){}
        Processor (P00C, 0x0C, 0x00000000, 0x00){}
        Processor (P00D, 0x0D, 0x00000000, 0x00){}
        Processor (P00E, 0x0E, 0x00000000, 0x00){}
        Processor (P00F, 0x0F, 0x00000000, 0x00){}
        Processor (P010, 0x10, 0x00000000, 0x00){}
        Processor (P011, 0x11, 0x00000000, 0x00){}
        Processor (P012, 0x12, 0x00000000, 0x00){}
        Processor (P013, 0x13, 0x00000000, 0x00){}
        Processor (P014, 0x14, 0x00000000, 0x00){}
        Processor (P015, 0x15, 0x00000000, 0x00){}
        Processor (P016, 0x16, 0x00000000, 0x00){}
        Processor (P017, 0x17, 0x00000000, 0x00){}
        Processor (P018, 0x18, 0x00000000, 0x00){}
        Processor (P019, 0x19, 0x00000000, 0x00){}
        Processor (P01A, 0x1A, 0x00000000, 0x00){}
        Processor (P01B, 0x1B, 0x00000000, 0x00){}
        Processor (P01C, 0x1C, 0x00000000, 0x00){}
        Processor (P01D, 0x1D, 0x00000000, 0x00){}
        Processor (P01E, 0x1E, 0x00000000, 0x00){}
        Processor (P01F, 0x1F, 0x00000000, 0x00){}
        Processor (P020, 0x20, 0x00000000, 0x00){}
        Processor (P021, 0x21, 0x00000000, 0x00){}
        Processor (P022, 0x22, 0x00000000, 0x00){}
        Processor (P023, 0x23, 0x00000000, 0x00){}
        Processor (P024, 0x24, 0x00000000, 0x00){}
        Processor (P025, 0x25, 0x00000000, 0x00){}
        Processor (P026, 0x26, 0x00000000, 0x00){}
        Processor (P027, 0x27, 0x00000000, 0x00){}
        Processor (P028, 0x28, 0x00000000, 0x00){}
        Processor (P029, 0x29, 0x00000000, 0x00){}
        Processor (P02A, 0x2A, 0x00000000, 0x00){}
        Processor (P02B, 0x2B, 0x00000000, 0x00){}
        Processor (P02C, 0x2C, 0x00000000, 0x00){}
        Processor (P02D, 0x2D, 0x00000000, 0x00){}
        Processor (P02E, 0x2E, 0x00000000, 0x00){}
        Processor (P02F, 0x2F, 0x00000000, 0x00){}
        Processor (P030, 0x30, 0x00000000, 0x00){}
        Processor (P031, 0x31, 0x00000000, 0x00){}
        Processor (P032, 0x32, 0x00000000, 0x00){}
        Processor (P033, 0x33, 0x00000000, 0x00){}
        Processor (P034, 0x34, 0x00000000, 0x00){}
        Processor (P035, 0x35, 0x00000000, 0x00){}
        Processor (P036, 0x36, 0x00000000, 0x00){}
        Processor (P037, 0x37, 0x00000000, 0x00){}
        Processor (P038, 0x38, 0x00000000, 0x00){}
        Processor (P039, 0x39, 0x00000000, 0x00){}
        Processor (P03A, 0x3A, 0x00000000, 0x00){}
        Processor (P03B, 0x3B, 0x00000000, 0x00){}
        Processor (P03C, 0x3C, 0x00000000, 0x00){}
        Processor (P03D, 0x3D, 0x00000000, 0x00){}
        Processor (P03E, 0x3E, 0x00000000, 0x00){}
        Processor (P03F, 0x3F, 0x00000000, 0x00){}
        Processor (P040, 0x40, 0x00000000, 0x00){}
        Alias (P001, CPU1)
        Alias (P002, CPU2)
        Alias (P003, CPU3)
        Alias (P004, CPU4)
        Alias (P005, CPU5)
        Alias (P006, CPU6)
        Alias (P007, CPU7)
        Alias (P008, CPU8)
        Alias (P009, CPU9)
    }

    Scope (_SB)
    {
        Name (PR00, Package (0x13)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x000BFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x000CFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x000DFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                0x03, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0011FFFF, 
                Zero, 
                LNKG, 
                Zero
            }
        })
        Name (AR00, Package (0x13)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x37
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x34
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                Zero, 
                0x34
            }, 

            Package (0x04)
            {
                0x000BFFFF, 
                Zero, 
                Zero, 
                0x36
            }, 

            Package (0x04)
            {
                0x000CFFFF, 
                Zero, 
                Zero, 
                0x36
            }, 

            Package (0x04)
            {
                0x000DFFFF, 
                Zero, 
                Zero, 
                0x36
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                0x03, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0011FFFF, 
                Zero, 
                Zero, 
                0x16
            }
        })
        Name (PR12, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR12, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x18
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x19
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x1A
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x1B
            }
        })
        Name (PR14, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKH, 
                Zero
            }
        })
        Name (AR14, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x2C
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x2D
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x2E
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x2F
            }
        })
        Name (PR1B, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR1B, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x20
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x21
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x22
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x23
            }
        })
        Name (PR1C, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKH, 
                Zero
            }
        })
        Name (AR1C, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x24
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x25
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x26
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x27
            }
        })
        Name (PR1D, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR1D, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x28
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x29
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x2A
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x2B
            }
        })
        Name (PR40, Package (0x03)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x000BFFFF, 
                Zero, 
                LNKG, 
                Zero
            }
        })
        Name (AR40, Package (0x03)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x57
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x54
            }, 

            Package (0x04)
            {
                0x000BFFFF, 
                Zero, 
                Zero, 
                0x56
            }
        })
        Name (PR42, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR42, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x38
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x39
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x3A
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x3B
            }
        })
        Name (PR4B, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR4B, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x40
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x41
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x42
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x43
            }
        })
        Name (PR0C, Package (0x01)
        {
            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                LNKE, 
                Zero
            }
        })
        Name (AR0C, Package (0x01)
        {
            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                Zero, 
                0x14
            }
        })
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {4,7,10,11,12,14,15}
        })
        Alias (PRSA, PRSB)
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            Name (_ADR, 0x00180001)  // _ADR: Address
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00) /* \_SB_.AR00 */
                }

                Return (PR00) /* \_SB_.PR00 */
            }

            Method (NPTS, 1, NotSerialized)
            {
            }

            Method (NWAK, 1, NotSerialized)
            {
            }

            Device (RD8A)
            {
                Name (_ADR, Zero)  // _ADR: Address
                OperationRegion (NB2, PCI_Config, Zero, 0x0100)
                Field (NB2, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    MI,     32, 
                    MD,     32, 
                    Offset (0x94), 
                    HI,     32, 
                    HD,     32, 
                    Offset (0xF8), 
                    API,    32, 
                    APD,    32
                }

                Device (NMEM)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x14)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y00)
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y01)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (CRS, \_SB.PCI0.RD8A.NMEM._Y00._BAS, BAS1)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.PCI0.RD8A.NMEM._Y00._LEN, LEN1)  // _LEN: Length
                        MI = 0x3C
                        Local0 = MD /* \_SB_.PCI0.RD8A.MD__ */
                        If ((Local0 & 0x40))
                        {
                            MI = 0x3A
                            BAS1 = (MD & 0xFFFFFF00)
                            LEN1 = ((MD & 0xFF) << 0x17)
                        }

                        CreateDWordField (CRS, \_SB.PCI0.RD8A.NMEM._Y01._BAS, BAS2)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.PCI0.RD8A.NMEM._Y01._LEN, LEN2)  // _LEN: Length
                        API = Zero
                        Local1 = APD /* \_SB_.PCI0.RD8A.APD_ */
                        If ((Local1 & One))
                        {
                            LEN2 = 0x0100
                            API = One
                            BAS2 = (APD & 0xFFFFFF00)
                        }

                        Return (CRS) /* \_SB_.PCI0.RD8A.NMEM.CRS_ */
                    }
                }
            }

            Device (IOMA)
            {
                Name (_ADR, 0x02)  // _ADR: Address
                OperationRegion (NBF2, PCI_Config, Zero, 0x0100)
                Field (NBF2, AnyAcc, NoLock, Preserve)
                {
                    DID,    32, 
                    Offset (0x44), 
                    MBAS,   32
                }

                Device (UMEM)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x15)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y02)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (CRS, \_SB.PCI0.IOMA.UMEM._Y02._BAS, BAS3)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.PCI0.IOMA.UMEM._Y02._LEN, LEN3)  // _LEN: Length
                        If ((DID != Ones))
                        {
                            LEN3 = 0x4000
                            BAS3 = (MBAS & 0xFFFFFF00)
                        }

                        Return (CRS) /* \_SB_.PCI0.IOMA.UMEM.CRS_ */
                    }
                }
            }

            Device (PC02)
            {
                Name (_ADR, 0x00020000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x18, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR12) /* \_SB_.AR12 */
                    }

                    Return (PR12) /* \_SB_.PR12 */
                }
            }

            Device (PC04)
            {
                Name (_ADR, 0x00040000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x18, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR14) /* \_SB_.AR14 */
                    }

                    Return (PR14) /* \_SB_.PR14 */
                }
            }

            Device (PC0B)
            {
                Name (_ADR, 0x000B0000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x18, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR1B) /* \_SB_.AR1B */
                    }

                    Return (PR1B) /* \_SB_.PR1B */
                }
            }

            Device (PC0C)
            {
                Name (_ADR, 0x000C0000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x18, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR1C) /* \_SB_.AR1C */
                    }

                    Return (PR1C) /* \_SB_.PR1C */
                }
            }

            Device (PC0D)
            {
                Name (_ADR, 0x000D0000)  // _ADR: Address
                Device (KWL1)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    OperationRegion (PMCS, PCI_Config, 0x44, 0x02)
                    Field (PMCS, ByteAcc, NoLock, Preserve)
                    {
                        POST,   2
                    }

                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        Stall (0x1E)
                        POST = Zero
                        Stall (0x1E)
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                        POST = 0x03
                    }
                }

                Device (KWL2)
                {
                    Name (_ADR, One)  // _ADR: Address
                    OperationRegion (PMCS, PCI_Config, 0x44, 0x02)
                    Field (PMCS, ByteAcc, NoLock, Preserve)
                    {
                        POST,   2
                    }

                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        Stall (0x1E)
                        POST = Zero
                        Stall (0x1E)
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                        POST = 0x03
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x18, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR1D) /* \_SB_.AR1D */
                    }

                    Return (PR1D) /* \_SB_.PR1D */
                }
            }

            Device (SMBS)
            {
                Name (_ADR, 0x00140000)  // _ADR: Address
                OperationRegion (SMBS, PCI_Config, Zero, 0x0100)
                Field (SMBS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    REV,    8
                }

                OperationRegion (WIDE, PCI_Config, 0xAD, One)
                Field (WIDE, AnyAcc, NoLock, Preserve)
                {
                    DUM1,   4, 
                    SOPT,   1
                }
            }

            Device (IDEC)
            {
                Name (_ADR, 0x00140001)  // _ADR: Address
                Name (UDMT, Package (0x08)
                {
                    0x78, 
                    0x5A, 
                    0x3C, 
                    0x2D, 
                    0x1E, 
                    0x14, 
                    0x0F, 
                    Zero
                })
                Name (PIOT, Package (0x06)
                {
                    0x0258, 
                    0x0186, 
                    0x010E, 
                    0xB4, 
                    0x78, 
                    Zero
                })
                Name (PITR, Package (0x06)
                {
                    0x99, 
                    0x47, 
                    0x34, 
                    0x22, 
                    0x20, 
                    0x99
                })
                Name (MDMT, Package (0x04)
                {
                    0x01E0, 
                    0x96, 
                    0x78, 
                    Zero
                })
                Name (MDTR, Package (0x04)
                {
                    0x77, 
                    0x21, 
                    0x20, 
                    0xFF
                })
                OperationRegion (IDE, PCI_Config, 0x40, 0x20)
                Field (IDE, AnyAcc, NoLock, Preserve)
                {
                    PPIT,   16, 
                    SPIT,   16, 
                    PMDT,   16, 
                    SMDT,   16, 
                    PPIC,   8, 
                    SPIC,   8, 
                    PPIM,   8, 
                    SPIM,   8, 
                    Offset (0x14), 
                    PUDC,   2, 
                    SUDC,   2, 
                    Offset (0x16), 
                    PUDM,   8, 
                    SUDM,   8
                }

                Method (GETT, 1, NotSerialized)
                {
                    Local0 = (Arg0 & 0x0F)
                    Local1 = (Arg0 >> 0x04)
                    Return ((0x1E * ((Local0 + One) + (Local1 + One)
                        )))
                }

                Method (GTM, 1, NotSerialized)
                {
                    CreateByteField (Arg0, Zero, PIT1)
                    CreateByteField (Arg0, One, PIT0)
                    CreateByteField (Arg0, 0x02, MDT1)
                    CreateByteField (Arg0, 0x03, MDT0)
                    CreateByteField (Arg0, 0x04, PICX)
                    CreateByteField (Arg0, 0x05, UDCX)
                    CreateByteField (Arg0, 0x06, UDMX)
                    Name (BUF, Buffer (0x14)
                    {
                        /* 0000 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                        /* 0008 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                        /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                    })
                    CreateDWordField (BUF, Zero, PIO0)
                    CreateDWordField (BUF, 0x04, DMA0)
                    CreateDWordField (BUF, 0x08, PIO1)
                    CreateDWordField (BUF, 0x0C, DMA1)
                    CreateDWordField (BUF, 0x10, FLAG)
                    If ((PICX & One))
                    {
                        Return (BUF) /* \_SB_.PCI0.IDEC.GTM_.BUF_ */
                    }

                    PIO0 = GETT (PIT0)
                    PIO1 = GETT (PIT1)
                    If ((UDCX & One))
                    {
                        FLAG |= One
                        DMA0 = DerefOf (UDMT [(UDMX & 0x0F)])
                    }
                    Else
                    {
                        DMA0 = GETT (MDT0)
                    }

                    If ((UDCX & 0x02))
                    {
                        FLAG |= 0x04
                        DMA1 = DerefOf (UDMT [(UDMX >> 0x04)])
                    }
                    Else
                    {
                        DMA1 = GETT (MDT1)
                    }

                    FLAG |= 0x1A
                    Return (BUF) /* \_SB_.PCI0.IDEC.GTM_.BUF_ */
                }

                Method (STM, 3, NotSerialized)
                {
                    CreateDWordField (Arg0, Zero, PIO0)
                    CreateDWordField (Arg0, 0x04, DMA0)
                    CreateDWordField (Arg0, 0x08, PIO1)
                    CreateDWordField (Arg0, 0x0C, DMA1)
                    CreateDWordField (Arg0, 0x10, FLAG)
                    Name (BUF, Buffer (0x07)
                    {
                         0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00         // .......
                    })
                    CreateByteField (BUF, Zero, PIT1)
                    CreateByteField (BUF, One, PIT0)
                    CreateByteField (BUF, 0x02, MDT1)
                    CreateByteField (BUF, 0x03, MDT0)
                    CreateByteField (BUF, 0x04, PIMX)
                    CreateByteField (BUF, 0x05, UDCX)
                    CreateByteField (BUF, 0x06, UDMX)
                    Local0 = Match (PIOT, MLE, PIO0, MTR, Zero, Zero)
                    Local0 %= 0x05
                    Local1 = Match (PIOT, MLE, PIO1, MTR, Zero, Zero)
                    Local1 %= 0x05
                    PIMX = ((Local1 << 0x04) | Local0)
                    PIT0 = DerefOf (PITR [Local0])
                    PIT1 = DerefOf (PITR [Local1])
                    If ((FLAG & One))
                    {
                        Local0 = Match (UDMT, MLE, DMA0, MTR, Zero, Zero)
                        Local0 %= 0x07
                        UDMX |= Local0
                        UDCX |= One
                    }
                    ElseIf ((DMA0 != Ones))
                    {
                        Local0 = Match (MDMT, MLE, DMA0, MTR, Zero, Zero)
                        MDT0 = DerefOf (MDTR [Local0])
                    }

                    If ((FLAG & 0x04))
                    {
                        Local0 = Match (UDMT, MLE, DMA1, MTR, Zero, Zero)
                        Local0 %= 0x07
                        UDMX |= (Local0 << 0x04)
                        UDCX |= 0x02
                    }
                    ElseIf ((DMA1 != Ones))
                    {
                        Local0 = Match (MDMT, MLE, DMA1, MTR, Zero, Zero)
                        MDT1 = DerefOf (MDTR [Local0])
                    }

                    Return (BUF) /* \_SB_.PCI0.IDEC.STM_.BUF_ */
                }

                Method (GTF, 2, NotSerialized)
                {
                    CreateByteField (Arg1, Zero, MDT1)
                    CreateByteField (Arg1, One, MDT0)
                    CreateByteField (Arg1, 0x02, PIMX)
                    CreateByteField (Arg1, 0x03, UDCX)
                    CreateByteField (Arg1, 0x04, UDMX)
                    If ((Arg0 == 0xA0))
                    {
                        Local0 = (PIMX & 0x0F)
                        Local1 = MDT0 /* \_SB_.PCI0.IDEC.GTF_.MDT0 */
                        Local2 = (UDCX & One)
                        Local3 = (UDMX & 0x0F)
                    }
                    Else
                    {
                        Local0 = (PIMX >> 0x04)
                        Local1 = MDT1 /* \_SB_.PCI0.IDEC.GTF_.MDT1 */
                        Local2 = (UDCX & 0x02)
                        Local3 = (UDMX >> 0x04)
                    }

                    Name (BUF, Buffer (0x15)
                    {
                        /* 0000 */  0x03, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xEF, 0x03,  // ........
                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xFF, 0xEF, 0x00, 0x00,  // ........
                        /* 0010 */  0x00, 0x00, 0x00, 0x00, 0xF5                     // .....
                    })
                    CreateByteField (BUF, One, PMOD)
                    CreateByteField (BUF, 0x08, DMOD)
                    CreateByteField (BUF, 0x05, CMDA)
                    CreateByteField (BUF, 0x0C, CMDB)
                    CreateByteField (BUF, 0x13, CMDC)
                    CMDA = Arg0
                    CMDB = Arg0
                    CMDC = Arg0
                    PMOD = (Local0 | 0x08)
                    If (Local2)
                    {
                        DMOD = (Local3 | 0x40)
                    }
                    Else
                    {
                        Local4 = Match (MDMT, MLE, GETT (Local1), MTR, Zero, Zero)
                        If ((Local4 < 0x03))
                        {
                            DMOD = (0x20 | Local4)
                        }
                    }

                    Return (BUF) /* \_SB_.PCI0.IDEC.GTF_.BUF_ */
                }

                Device (PRID)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        Name (BUF, Buffer (0x07)
                        {
                             0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00         // .......
                        })
                        CreateWordField (BUF, Zero, VPIT)
                        CreateWordField (BUF, 0x02, VMDT)
                        CreateByteField (BUF, 0x04, VPIC)
                        CreateByteField (BUF, 0x05, VUDC)
                        CreateByteField (BUF, 0x06, VUDM)
                        If (((^^^SMBS.REV >= 0x3A) || ^^^SMBS.SOPT))
                        {
                            VPIT = PPIT /* \_SB_.PCI0.IDEC.PPIT */
                            VMDT = PMDT /* \_SB_.PCI0.IDEC.PMDT */
                            VPIC = PPIC /* \_SB_.PCI0.IDEC.PPIC */
                            VUDC = PUDC /* \_SB_.PCI0.IDEC.PUDC */
                            VUDM = PUDM /* \_SB_.PCI0.IDEC.PUDM */
                        }
                        Else
                        {
                            VPIT = SPIT /* \_SB_.PCI0.IDEC.SPIT */
                            VMDT = SMDT /* \_SB_.PCI0.IDEC.SMDT */
                            VPIC = SPIC /* \_SB_.PCI0.IDEC.SPIC */
                            VUDC = SUDC /* \_SB_.PCI0.IDEC.SUDC */
                            VUDM = SUDM /* \_SB_.PCI0.IDEC.SUDM */
                        }

                        Return (GTM (BUF))
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        Name (BUF, Buffer (0x07)
                        {
                             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00         // .......
                        })
                        CreateWordField (BUF, Zero, VPIT)
                        CreateWordField (BUF, 0x02, VMDT)
                        CreateByteField (BUF, 0x04, VPIM)
                        CreateByteField (BUF, 0x05, VUDC)
                        CreateByteField (BUF, 0x06, VUDM)
                        BUF = STM (Arg0, Arg1, Arg2)
                        If (((^^^SMBS.REV >= 0x3A) || ^^^SMBS.SOPT))
                        {
                            PPIT = VPIT /* \_SB_.PCI0.IDEC.PRID._STM.VPIT */
                            PMDT = VMDT /* \_SB_.PCI0.IDEC.PRID._STM.VMDT */
                            PPIM = VPIM /* \_SB_.PCI0.IDEC.PRID._STM.VPIM */
                            PUDC = VUDC /* \_SB_.PCI0.IDEC.PRID._STM.VUDC */
                            PUDM = VUDM /* \_SB_.PCI0.IDEC.PRID._STM.VUDM */
                        }
                        Else
                        {
                            SPIT = VPIT /* \_SB_.PCI0.IDEC.PRID._STM.VPIT */
                            SMDT = VMDT /* \_SB_.PCI0.IDEC.PRID._STM.VMDT */
                            SPIM = VPIM /* \_SB_.PCI0.IDEC.PRID._STM.VPIM */
                            SUDC = VUDC /* \_SB_.PCI0.IDEC.PRID._STM.VUDC */
                            SUDM = VUDM /* \_SB_.PCI0.IDEC.PRID._STM.VUDM */
                        }
                    }

                    Device (P_D0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Name (BUF, Buffer (0x05)
                            {
                                 0x00, 0x00, 0x00, 0x00, 0x00                     // .....
                            })
                            CreateWordField (BUF, Zero, VMDT)
                            CreateByteField (BUF, 0x02, VPIM)
                            CreateByteField (BUF, 0x03, VUDC)
                            CreateByteField (BUF, 0x04, VUDM)
                            If (((^^^^SMBS.REV >= 0x3A) || ^^^^SMBS.SOPT))
                            {
                                VMDT = PMDT /* \_SB_.PCI0.IDEC.PMDT */
                                VPIM = PPIM /* \_SB_.PCI0.IDEC.PPIM */
                                VUDC = PUDC /* \_SB_.PCI0.IDEC.PUDC */
                                VUDM = PUDM /* \_SB_.PCI0.IDEC.PUDM */
                            }
                            Else
                            {
                                VMDT = SMDT /* \_SB_.PCI0.IDEC.SMDT */
                                VPIM = SPIM /* \_SB_.PCI0.IDEC.SPIM */
                                VUDC = SUDC /* \_SB_.PCI0.IDEC.SUDC */
                                VUDM = SUDM /* \_SB_.PCI0.IDEC.SUDM */
                            }

                            Return (GTF (0xA0, BUF))
                        }
                    }

                    Device (P_D1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Name (BUF, Buffer (0x05)
                            {
                                 0x00, 0x00, 0x00, 0x00, 0x00                     // .....
                            })
                            CreateWordField (BUF, Zero, VMDT)
                            CreateByteField (BUF, 0x02, VPIM)
                            CreateByteField (BUF, 0x03, VUDC)
                            CreateByteField (BUF, 0x04, VUDM)
                            If (((^^^^SMBS.REV >= 0x3A) || ^^^^SMBS.SOPT))
                            {
                                VMDT = PMDT /* \_SB_.PCI0.IDEC.PMDT */
                                VPIM = PPIM /* \_SB_.PCI0.IDEC.PPIM */
                                VUDC = PUDC /* \_SB_.PCI0.IDEC.PUDC */
                                VUDM = PUDM /* \_SB_.PCI0.IDEC.PUDM */
                            }
                            Else
                            {
                                VMDT = SMDT /* \_SB_.PCI0.IDEC.SMDT */
                                VPIM = SPIM /* \_SB_.PCI0.IDEC.SPIM */
                                VUDC = SUDC /* \_SB_.PCI0.IDEC.SUDC */
                                VUDM = SUDM /* \_SB_.PCI0.IDEC.SUDM */
                            }

                            Return (GTF (0xB0, BUF))
                        }
                    }
                }

                Device (SECD)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        Name (BUF, Buffer (0x07)
                        {
                             0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00         // .......
                        })
                        CreateWordField (BUF, Zero, VPIT)
                        CreateWordField (BUF, 0x02, VMDT)
                        CreateByteField (BUF, 0x04, VPIC)
                        CreateByteField (BUF, 0x05, VUDC)
                        CreateByteField (BUF, 0x06, VUDM)
                        If (((^^^SMBS.REV >= 0x3A) || ^^^SMBS.SOPT))
                        {
                            VPIT = SPIT /* \_SB_.PCI0.IDEC.SPIT */
                            VMDT = SMDT /* \_SB_.PCI0.IDEC.SMDT */
                            VPIC = SPIC /* \_SB_.PCI0.IDEC.SPIC */
                            VUDC = SUDC /* \_SB_.PCI0.IDEC.SUDC */
                            VUDM = SUDM /* \_SB_.PCI0.IDEC.SUDM */
                        }
                        Else
                        {
                            VPIT = PPIT /* \_SB_.PCI0.IDEC.PPIT */
                            VMDT = PMDT /* \_SB_.PCI0.IDEC.PMDT */
                            VPIC = PPIC /* \_SB_.PCI0.IDEC.PPIC */
                            VUDC = PUDC /* \_SB_.PCI0.IDEC.PUDC */
                            VUDM = PUDM /* \_SB_.PCI0.IDEC.PUDM */
                        }

                        Return (GTM (BUF))
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        Name (BUF, Buffer (0x07)
                        {
                             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00         // .......
                        })
                        CreateWordField (BUF, Zero, VPIT)
                        CreateWordField (BUF, 0x02, VMDT)
                        CreateByteField (BUF, 0x04, VPIM)
                        CreateByteField (BUF, 0x05, VUDC)
                        CreateByteField (BUF, 0x06, VUDM)
                        BUF = STM (Arg0, Arg1, Arg2)
                        If (((^^^SMBS.REV >= 0x3A) || ^^^SMBS.SOPT))
                        {
                            SPIT = VPIT /* \_SB_.PCI0.IDEC.SECD._STM.VPIT */
                            SMDT = VMDT /* \_SB_.PCI0.IDEC.SECD._STM.VMDT */
                            SPIM = VPIM /* \_SB_.PCI0.IDEC.SECD._STM.VPIM */
                            SUDC = VUDC /* \_SB_.PCI0.IDEC.SECD._STM.VUDC */
                            SUDM = VUDM /* \_SB_.PCI0.IDEC.SECD._STM.VUDM */
                        }
                        Else
                        {
                            PPIT = VPIT /* \_SB_.PCI0.IDEC.SECD._STM.VPIT */
                            PMDT = VMDT /* \_SB_.PCI0.IDEC.SECD._STM.VMDT */
                            PPIM = VPIM /* \_SB_.PCI0.IDEC.SECD._STM.VPIM */
                            PUDC = VUDC /* \_SB_.PCI0.IDEC.SECD._STM.VUDC */
                            PUDM = VUDM /* \_SB_.PCI0.IDEC.SECD._STM.VUDM */
                        }
                    }

                    Device (S_D0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Name (BUF, Buffer (0x05)
                            {
                                 0x00, 0x00, 0x00, 0x00, 0x00                     // .....
                            })
                            CreateWordField (BUF, Zero, VMDT)
                            CreateByteField (BUF, 0x02, VPIM)
                            CreateByteField (BUF, 0x03, VUDC)
                            CreateByteField (BUF, 0x04, VUDM)
                            If (((^^^^SMBS.REV >= 0x3A) || ^^^^SMBS.SOPT))
                            {
                                VMDT = SMDT /* \_SB_.PCI0.IDEC.SMDT */
                                VPIM = SPIM /* \_SB_.PCI0.IDEC.SPIM */
                                VUDC = SUDC /* \_SB_.PCI0.IDEC.SUDC */
                                VUDM = SUDM /* \_SB_.PCI0.IDEC.SUDM */
                            }
                            Else
                            {
                                VMDT = PMDT /* \_SB_.PCI0.IDEC.PMDT */
                                VPIM = PPIM /* \_SB_.PCI0.IDEC.PPIM */
                                VUDC = PUDC /* \_SB_.PCI0.IDEC.PUDC */
                                VUDM = PUDM /* \_SB_.PCI0.IDEC.PUDM */
                            }

                            Return (GTF (0xA0, BUF))
                        }
                    }

                    Device (S_D1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Name (BUF, Buffer (0x05)
                            {
                                 0x00, 0x00, 0x00, 0x00, 0x00                     // .....
                            })
                            CreateWordField (BUF, Zero, VMDT)
                            CreateByteField (BUF, 0x02, VPIM)
                            CreateByteField (BUF, 0x03, VUDC)
                            CreateByteField (BUF, 0x04, VUDM)
                            If (((^^^^SMBS.REV >= 0x3A) || ^^^^SMBS.SOPT))
                            {
                                VMDT = SMDT /* \_SB_.PCI0.IDEC.SMDT */
                                VPIM = SPIM /* \_SB_.PCI0.IDEC.SPIM */
                                VUDC = SUDC /* \_SB_.PCI0.IDEC.SUDC */
                                VUDM = SUDM /* \_SB_.PCI0.IDEC.SUDM */
                            }
                            Else
                            {
                                VMDT = PMDT /* \_SB_.PCI0.IDEC.PMDT */
                                VPIM = PPIM /* \_SB_.PCI0.IDEC.PPIM */
                                VUDC = PUDC /* \_SB_.PCI0.IDEC.PUDC */
                                VUDM = PUDM /* \_SB_.PCI0.IDEC.PUDM */
                            }

                            Return (GTF (0xB0, BUF))
                        }
                    }
                }
            }

            Device (SBAZ)
            {
                Name (_ADR, 0x00140002)  // _ADR: Address
                OperationRegion (PCI, PCI_Config, Zero, 0x0100)
                Field (PCI, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x42), 
                    DNSP,   1, 
                    DNSO,   1, 
                    ENSR,   1
                }
            }

            Device (SBRG)
            {
                Name (_ADR, 0x00140003)  // _ADR: Address
                OperationRegion (LPCS, PCI_Config, Zero, 0x0100)
                Field (LPCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x40), 
                        ,   7, 
                    ECEN,   1, 
                    Offset (0xA4), 
                    ECAD,   16
                }

                Name (ECIN, Zero)
                Mutex (ECMU, 0x00)
                Mutex (MLMU, 0x00)
                OperationRegion (ECBP, SystemIO, (ECAD & 0xFFFE), 0x02)
                Field (ECBP, ByteAcc, NoLock, Preserve)
                {
                    BPIO,   8
                }

                OperationRegion (ECIO, SystemIO, (ECAD & 0xFFFE), 0x02)
                Field (ECIO, ByteAcc, NoLock, Preserve)
                {
                    IND,    8, 
                    DAT,    8
                }

                IndexField (IND, DAT, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x07), 
                    LDNM,   8, 
                    Offset (0x22), 
                    POW,    8, 
                    Offset (0x30), 
                    ACT,    1, 
                    Offset (0x60), 
                    IOBH,   8, 
                    IOBL,   8, 
                    Offset (0x70), 
                    INT,    4
                }

                Method (CFG, 1, NotSerialized)
                {
                    If ((ECEN == One))
                    {
                        BPIO = 0x5A
                        BPIO = 0x5A
                        LDNM = Arg0
                    }
                }

                Method (XCFG, 0, NotSerialized)
                {
                    If ((ECEN == One))
                    {
                        BPIO = 0xA5
                    }
                }

                Method (STA, 1, NotSerialized)
                {
                    If ((ECEN == One))
                    {
                        Acquire (ECMU, 0x5000)
                        CFG (Arg0)
                        Local1 = Zero
                        If (ACT)
                        {
                            Local1 = 0x0F
                        }

                        If ((IND == 0xFF))
                        {
                            Local1 = Zero
                        }

                        XCFG ()
                        Release (ECMU)
                        Return (Local1)
                    }
                    Else
                    {
                        Local1 = Zero
                        Return (Local1)
                    }
                }

                Method (RDMB, 1, NotSerialized)
                {
                    If ((ECEN == One))
                    {
                        Acquire (ECMU, 0x1388)
                        Acquire (MLMU, 0x1388)
                        CFG (0x05)
                        Name (IOBA, Zero)
                        IOBA = IOBH /* \_SB_.PCI0.SBRG.IOBH */
                        IOBA <<= 0x08
                        IOBA |= IOBL /* \_SB_.PCI0.SBRG.IOBL */
                        OperationRegion (MLIO, SystemIO, IOBA, 0x02)
                        Field (MLIO, ByteAcc, NoLock, Preserve)
                        {
                            MLIN,   8, 
                            MLDA,   8
                        }

                        MLIN = Arg0
                        Return (MLDA) /* \_SB_.PCI0.SBRG.RDMB.MLDA */
                        Release (MLMU)
                        Release (ECMU)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (WRMB, 2, NotSerialized)
                {
                    If ((ECEN == One))
                    {
                        Acquire (ECMU, 0x1388)
                        Acquire (MLMU, 0x1388)
                        CFG (0x05)
                        Name (IOBA, Zero)
                        IOBA = IOBH /* \_SB_.PCI0.SBRG.IOBH */
                        IOBA <<= 0x08
                        IOBA |= IOBL /* \_SB_.PCI0.SBRG.IOBL */
                        OperationRegion (MLIO, SystemIO, IOBA, 0x02)
                        Field (MLIO, ByteAcc, NoLock, Preserve)
                        {
                            MLIN,   8, 
                            MLDA,   8
                        }

                        MLIN = Arg0
                        MLDA = Arg1
                        Release (MLMU)
                        Release (ECMU)
                    }
                }

                Name (KBWF, One)
                Name (MSWF, One)
                Name (IRWF, One)
                Device (PSKE)
                {
                    Name (_HID, EisaId ("PNP0303") /* IBM Enhanced Keyboard (101/102-key, PS/2 Mouse) */)  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP030B"))  // _CID: Compatible ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((ECEN == One))
                        {
                            Local1 = Zero
                            Local1 = STA (0x07)
                        }
                        Else
                        {
                            Local1 = Zero
                        }

                        Return (Local1)
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {1}
                    })
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x03, 0x04))
                    }

                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                        If (Arg0)
                        {
                            KBWF = One
                        }
                        Else
                        {
                            KBWF = Zero
                        }
                    }
                }

                Device (PSMS)
                {
                    Name (_HID, EisaId ("PNP0F03") /* Microsoft PS/2-style Mouse */)  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0F13") /* PS/2 Mouse */)  // _CID: Compatible ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((ECEN == One))
                        {
                            Local1 = Zero
                            Local1 = STA (0x07)
                        }
                        Else
                        {
                            Local1 = Zero
                        }

                        Return (Local1)
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQNoFlags ()
                            {12}
                    })
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x03, 0x04))
                    }

                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                        If (Arg0)
                        {
                            MSWF = One
                        }
                        Else
                        {
                            MSWF = Zero
                        }
                    }
                }

                Method (KWEN, 0, NotSerialized)
                {
                    WRMB (0x81, Zero)
                    WRMB (0x82, One)
                    WRMB (0x80, Zero)
                    WRMB (0xA0, 0x95)
                }

                Method (KWDS, 0, NotSerialized)
                {
                    WRMB (0x81, Zero)
                    WRMB (0x82, Zero)
                    WRMB (0x80, Zero)
                    WRMB (0xA0, 0x95)
                }

                Method (MWEN, 0, NotSerialized)
                {
                    WRMB (0x81, One)
                    WRMB (0x82, One)
                    WRMB (0x80, Zero)
                    WRMB (0xA0, 0x95)
                }

                Method (MWDS, 0, NotSerialized)
                {
                    WRMB (0x81, One)
                    WRMB (0x82, Zero)
                    WRMB (0x80, Zero)
                    WRMB (0xA0, 0x95)
                }

                Device (ECIR)
                {
                    Name (_HID, EisaId ("AMDC001"))  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((ECEN == One))
                        {
                            Local1 = Zero
                            If ((OSTY == 0x06))
                            {
                                Local1 = STA (0x05)
                            }
                        }
                        Else
                        {
                            Local1 = Zero
                        }

                        Return (Local1)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Name (RSRC, ResourceTemplate ()
                        {
                            IO (Decode16,
                                0x0000,             // Range Minimum
                                0x0000,             // Range Maximum
                                0x08,               // Alignment
                                0x08,               // Length
                                _Y03)
                            IRQNoFlags (_Y04)
                                {}
                        })
                        CreateByteField (RSRC, \_SB.PCI0.SBRG.ECIR._CRS._Y03._MIN, IO1)  // _MIN: Minimum Base Address
                        CreateByteField (RSRC, 0x03, IO2)
                        CreateByteField (RSRC, \_SB.PCI0.SBRG.ECIR._CRS._Y03._MAX, IO3)  // _MAX: Maximum Base Address
                        CreateByteField (RSRC, 0x05, IO4)
                        CreateWordField (RSRC, \_SB.PCI0.SBRG.ECIR._CRS._Y04._INT, IRQV)  // _INT: Interrupts
                        Acquire (ECMU, 0x1388)
                        CFG (0x05)
                        If (ACT)
                        {
                            IO1 = IOBL /* \_SB_.PCI0.SBRG.IOBL */
                            IO2 = IOBH /* \_SB_.PCI0.SBRG.IOBH */
                            IO3 = IOBL /* \_SB_.PCI0.SBRG.IOBL */
                            IO4 = IOBH /* \_SB_.PCI0.SBRG.IOBH */
                            Local0 = One
                            IRQV = (Local0 << INT) /* \_SB_.PCI0.SBRG.INT_ */
                        }

                        XCFG ()
                        Release (ECMU)
                        Return (RSRC) /* \_SB_.PCI0.SBRG.ECIR._CRS.RSRC */
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IO (Decode16,
                                0x0550,             // Range Minimum
                                0x0550,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQ (Edge, ActiveHigh, Shared, )
                                {5}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0650,             // Range Minimum
                                0x0650,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQ (Edge, ActiveHigh, Shared, )
                                {5}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0550,             // Range Minimum
                                0x0550,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQ (Edge, ActiveHigh, Shared, )
                                {3}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0650,             // Range Minimum
                                0x0650,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQ (Edge, ActiveHigh, Shared, )
                                {3}
                        }
                        EndDependentFn ()
                    })
                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CreateByteField (Arg0, 0x02, IO1)
                        CreateByteField (Arg0, 0x03, IO2)
                        CreateWordField (Arg0, 0x09, IRQV)
                        Acquire (ECMU, 0x1388)
                        CFG (0x05)
                        IOBL = IO1 /* \_SB_.PCI0.SBRG.ECIR._SRS.IO1_ */
                        IOBH = IO2 /* \_SB_.PCI0.SBRG.ECIR._SRS.IO2_ */
                        FindSetRightBit (IRQV, Local0)
                        INT = (Local0 - One)
                        ACT = One
                        XCFG ()
                        Release (ECMU)
                    }

                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x17, 0x04))
                    }

                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                        If (Arg0)
                        {
                            IRWF = One
                        }
                        Else
                        {
                            IRWF = Zero
                        }
                    }

                    Method (IRCF, 2, NotSerialized)
                    {
                        Name (CONN, Zero)
                        If ((Arg0 == One))
                        {
                            CONN |= RVID /* \_SB_.PCI0.SBRG.ECIR.IRCF.CONN */
                            CONN |= 0x00013200 /* \_SB_.PCI0.SBRG.ECIR.IRCF.CONN */
                            Return (CONN) /* \_SB_.PCI0.SBRG.ECIR.IRCF.CONN */
                        }

                        If ((Arg0 == 0x02))
                        {
                            CONN = (GP64 << One)
                            CONN |= GP51 /* \_SB_.PCI0.SBRG.ECIR.IRCF.CONN */
                            Return (CONN) /* \_SB_.PCI0.SBRG.ECIR.IRCF.CONN */
                        }

                        If ((Arg0 == 0x03))
                        {
                            If ((Arg1 == Zero))
                            {
                                G31O = One
                            }
                            Else
                            {
                                G31O = Zero
                                Sleep (0x64)
                                G31O = One
                            }
                        }

                        If ((Arg0 == 0x04))
                        {
                            If ((Arg1 == Zero))
                            {
                                ACIR = Zero
                            }
                            Else
                            {
                                ACIR = One
                            }
                        }

                        If (((Arg0 == Zero) || (Arg0 > 0x05)))
                        {
                            CONN = Ones
                        }

                        Return (CONN) /* \_SB_.PCI0.SBRG.ECIR.IRCF.CONN */
                    }
                }

                Method (PPTS, 1, NotSerialized)
                {
                    If (^PSKE._STA ())
                    {
                        If (KBWF)
                        {
                            KWEN ()
                        }
                        Else
                        {
                            KWDS ()
                        }
                    }

                    If (^PSMS._STA ())
                    {
                        If (MSWF)
                        {
                            MWEN ()
                        }
                        Else
                        {
                            MWDS ()
                        }
                    }
                }

                Method (WWAK, 1, NotSerialized)
                {
                    If (^PSKE._STA ())
                    {
                        KWDS ()
                    }

                    If (^PSMS._STA ())
                    {
                        MWDS ()
                    }
                }

                Method (EPTS, 1, NotSerialized)
                {
                    If ((ECEN == One))
                    {
                        PPTS (Arg0)
                    }
                }

                Method (EWAK, 1, NotSerialized)
                {
                    If ((ECEN == One))
                    {
                        WWAK (Arg0)
                    }
                }

                Device (PIC)
                {
                    Name (_HID, EisaId ("PNP0000") /* 8259-compatible Programmable Interrupt Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (DMAD)
                {
                    Name (_HID, EisaId ("PNP0200") /* PC-class DMA Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        DMA (Compatibility, BusMaster, Transfer8, )
                            {4}
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0087,             // Range Minimum
                            0x0087,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0089,             // Range Minimum
                            0x0089,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x008F,             // Range Minimum
                            0x008F,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x00,               // Alignment
                            0x20,               // Length
                            )
                    })
                }

                Device (TMR)
                {
                    Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x00,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                }

                Device (RTC0)
                {
                    Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                }

                Device (SPKR)
                {
                    Name (_HID, EisaId ("PNP0800") /* Microsoft Sound System Compatible Device */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                    })
                }

                Device (COPR)
                {
                    Name (_HID, EisaId ("PNP0C04") /* x87-compatible Floating Point Processing Unit */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (UAR1)
                {
                    Name (_UID, One)  // _UID: Unique ID
                    Name (_HID, EisaId ("PNP0501") /* 16550A-compatible COM Serial Port */)  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (DSTA (Zero))
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        DCNT (Zero, Zero)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Return (DCRS (Zero, Zero))
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        DSRS (Arg0, Zero)
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        Return (CMPR) /* \_SB_.PCI0.SBRG.UAR1.CMPR */
                    }

                    Name (CMPR, ResourceTemplate ()
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02F8,             // Range Minimum
                                0x02F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03E8,             // Range Minimum
                                0x03E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02E8,             // Range Minimum
                                0x02E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        EndDependentFn ()
                    })
                }

                Device (UAR2)
                {
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        Return (UHID (One))
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (DSTA (One))
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        DCNT (One, Zero)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Return (DCRS (One, One))
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        DSRS (Arg0, One)
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        Return (CMPR) /* \_SB_.PCI0.SBRG.UAR2.CMPR */
                    }

                    Name (CMPR, ResourceTemplate ()
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IO (Decode16,
                                0x02F8,             // Range Minimum
                                0x02F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02F8,             // Range Minimum
                                0x02F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03E8,             // Range Minimum
                                0x03E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02E8,             // Range Minimum
                                0x02E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {0,1,2,3}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02F8,             // Range Minimum
                                0x02F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {0,1,2,3}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03E8,             // Range Minimum
                                0x03E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {0,1,2,3}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02E8,             // Range Minimum
                                0x02E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {0,1,2,3}
                        }
                        EndDependentFn ()
                    })
                }

                Device (UAR3)
                {
                    Name (_UID, 0x03)  // _UID: Unique ID
                    Name (_HID, EisaId ("PNP0501") /* 16550A-compatible COM Serial Port */)  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (DST2 (0x02))
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        DCN2 (0x0E, Zero, 0x02)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Return (DCR2 (0x02, Zero))
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        DSR2 (Arg0, 0x0E, 0x02)
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        Return (CMPR) /* \_SB_.PCI0.SBRG.UAR3.CMPR */
                    }

                    Name (CMPR, ResourceTemplate ()
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IO (Decode16,
                                0x03E8,             // Range Minimum
                                0x03E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {5}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,9,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02F8,             // Range Minimum
                                0x02F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,9,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03E8,             // Range Minimum
                                0x03E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,9,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02E8,             // Range Minimum
                                0x02E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,9,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {}
                        }
                        EndDependentFn ()
                    })
                }

                Device (PS2K)
                {
                    Name (_HID, EisaId ("PNP0303") /* IBM Enhanced Keyboard (101/102-key, PS/2 Mouse) */)  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP030B"))  // _CID: Compatible ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Local0 = (One << 0x0A)
                        If ((IOST & Local0))
                        {
                            Return (0x0F)
                        }

                        Return (Zero)
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {1}
                    })
                }

                Method (PS2K._PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x03, One))
                }

                Device (PS2M)
                {
                    Name (_HID, EisaId ("PNP0F03") /* Microsoft PS/2-style Mouse */)  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0F13") /* PS/2 Mouse */)  // _CID: Compatible ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Local0 = (One << 0x0C)
                        If ((IOST & Local0))
                        {
                            Return (0x0F)
                        }

                        Return (Zero)
                    }

                    Name (M2R0, ResourceTemplate ()
                    {
                        IRQNoFlags ()
                            {12}
                    })
                    Name (M2R1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {12}
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Local0 = (One << 0x0A)
                        If ((IOST & Local0))
                        {
                            Return (M2R0) /* \_SB_.PCI0.SBRG.PS2M.M2R0 */
                        }
                        Else
                        {
                            Return (M2R1) /* \_SB_.PCI0.SBRG.PS2M.M2R1 */
                        }
                    }
                }

                Method (PS2M._PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x03, One))
                }

                Device (SIOR)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Method (_UID, 0, NotSerialized)  // _UID: Unique ID
                    {
                        Return (SPIO) /* \SPIO */
                    }

                    Name (CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y05)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y06)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y07)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y08)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y09)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y0A)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If (((SPIO != 0x03F0) && (SPIO > 0xF0)))
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y05._MIN, GP10)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y05._MAX, GP11)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.SIOR._Y05._LEN, GPL1)  // _LEN: Length
                            GP10 = SPIO /* \SPIO */
                            GP11 = SPIO /* \SPIO */
                            GPL1 = 0x02
                        }

                        If (IO1B)
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y06._MIN, GP20)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y06._MAX, GP21)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.SIOR._Y06._LEN, GPL2)  // _LEN: Length
                            GP20 = IO1B /* \IO1B */
                            GP21 = IO1B /* \IO1B */
                            GPL2 = IO1L /* \IO1L */
                        }

                        If (IO2B)
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y07._MIN, GP30)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y07._MAX, GP31)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.SIOR._Y07._LEN, GPL3)  // _LEN: Length
                            GP30 = IO2B /* \IO2B */
                            GP31 = IO2B /* \IO2B */
                            GPL3 = IO2L /* \IO2L */
                        }

                        CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y08._MIN, GP40)  // _MIN: Minimum Base Address
                        CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y08._MAX, GP41)  // _MAX: Maximum Base Address
                        CreateByteField (CRS, \_SB.PCI0.SBRG.SIOR._Y08._LEN, GPL4)  // _LEN: Length
                        CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y09._MIN, GP50)  // _MIN: Minimum Base Address
                        CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y09._MAX, GP51)  // _MAX: Maximum Base Address
                        CreateByteField (CRS, \_SB.PCI0.SBRG.SIOR._Y09._LEN, GPL5)  // _LEN: Length
                        CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y0A._MIN, GP60)  // _MIN: Minimum Base Address
                        CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y0A._MAX, GP61)  // _MAX: Maximum Base Address
                        CreateByteField (CRS, \_SB.PCI0.SBRG.SIOR._Y0A._LEN, GPL6)  // _LEN: Length
                        ENFG (One)
                        If (ACTR)
                        {
                            Local0 = (IOAH << 0x08)
                            Local0 |= IOAL
                            Local1 = (FindSetRightBit (Local0) - One)
                            Local1 = (One << Local1)
                            GP50 = (Local0 | 0x0800)
                            GP51 = (Local0 | 0x0800)
                            GPL5 = Local1
                            GP60 = (Local0 | 0x0C00)
                            GP61 = (Local0 | 0x0C00)
                            GPL6 = Local1
                            If ((OPT0 & 0x02)){}
                            Else
                            {
                                GP40 = (Local0 | 0x0400)
                                GP41 = (Local0 | 0x0400)
                                GPL4 = Local1
                            }
                        }

                        EXFG ()
                        Return (CRS) /* \_SB_.PCI0.SBRG.SIOR.CRS_ */
                    }
                }

                Name (DCAT, Package (0x15)
                {
                    0x02, 
                    0x03, 
                    One, 
                    Zero, 
                    0xFF, 
                    0x07, 
                    0xFF, 
                    0xFF, 
                    0x07, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0x06, 
                    0x08, 
                    0x09, 
                    0xFF, 
                    0xFF
                })
                Method (ENFG, 1, NotSerialized)
                {
                    INDX = 0x87
                    INDX = 0x87
                    LDN = Arg0
                }

                Method (EXFG, 0, NotSerialized)
                {
                    INDX = 0xAA
                }

                Method (LPTM, 1, NotSerialized)
                {
                    ENFG (CGLD (Arg0))
                    Local0 = (OPT0 & 0x02)
                    EXFG ()
                    Return (Local0)
                }

                Method (UHID, 1, NotSerialized)
                {
                    If ((Arg0 == One))
                    {
                        ENFG (CGLD (Arg0))
                        Local0 = (OPT1 & 0x38)
                        EXFG ()
                        If (Local0)
                        {
                            Return (0x1005D041)
                        }
                    }

                    Return (0x0105D041)
                }

                Method (SIOK, 1, NotSerialized)
                {
                    ENFG (0x0A)
                    If (Arg0)
                    {
                        CRE0 |= 0x63
                        CRE4 |= 0x0C
                        CRE6 |= 0x80
                    }
                    Else
                    {
                        CRE0 &= 0x9F
                        CRE4 &= 0xF3
                        CRE6 &= 0x7F
                        Local0 = CRE3 /* \_SB_.PCI0.SBRG.CRE3 */
                    }

                    EXFG ()
                }

                Method (PS2K._PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    ENFG (0x0A)
                    OPT6 &= 0xEF
                    If (Arg0)
                    {
                        OPT6 |= 0x10
                    }

                    EXFG ()
                }

                Method (PS2M._PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    ENFG (0x0A)
                    OPT6 &= 0xDF
                    If (Arg0)
                    {
                        OPT6 |= 0x20
                    }

                    EXFG ()
                }

                Method (SIOS, 1, NotSerialized)
                {
                    ENFG (0x09)
                    OPT3 &= 0x1F
                    If ((Arg0 == 0x03))
                    {
                        OPT3 |= 0xC0
                    }
                    ElseIf ((Arg0 > 0x03)){}
                    Else
                    {
                        OPT3 |= 0x80
                    }

                    EXFG ()
                    Debug = "SIOS"
                    If ((Arg0 == One))
                    {
                        SIOK (Ones)
                    }
                }

                Method (SIOW, 1, NotSerialized)
                {
                    Debug = "SIOW"
                    SIOK (Zero)
                    ENFG (0x09)
                    OPT3 &= 0x1F
                    EXFG ()
                }

                Method (SIOH, 0, NotSerialized)
                {
                    Debug = "SIOH"
                    ENFG (0x0A)
                    If ((OPT3 & 0x10))
                    {
                        Notify (PS2K, 0x02) // Device Wake
                    }

                    If ((OPT3 & 0x20))
                    {
                        Notify (PS2M, 0x02) // Device Wake
                    }

                    SIOK (Zero)
                }

                OperationRegion (IOID, SystemIO, SPIO, 0x02)
                Field (IOID, ByteAcc, NoLock, Preserve)
                {
                    INDX,   8, 
                    DATA,   8
                }

                IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x07), 
                    LDN,    8, 
                    Offset (0x22), 
                    FDCP,   1, 
                        ,   2, 
                    LPTP,   1, 
                    URAP,   1, 
                    URBP,   1, 
                    Offset (0x30), 
                    ACTR,   8, 
                    Offset (0x60), 
                    IOAH,   8, 
                    IOAL,   8, 
                    IOH2,   8, 
                    IOL2,   8, 
                    Offset (0x70), 
                    INTR,   8, 
                    Offset (0x74), 
                    DMCH,   8, 
                    Offset (0xE0), 
                    CRE0,   8, 
                    CRE1,   8, 
                    CRE2,   8, 
                    CRE3,   8, 
                    CRE4,   8, 
                    CRE5,   8, 
                    CRE6,   8, 
                    Offset (0xF0), 
                    OPT0,   8, 
                    OPT1,   8, 
                    OPT2,   8, 
                    OPT3,   8, 
                    OPT4,   8, 
                    Offset (0xF6), 
                    OPT6,   8, 
                    Offset (0xF9), 
                    OPT9,   8
                }

                Method (CGLD, 1, NotSerialized)
                {
                    Return (DerefOf (DCAT [Arg0]))
                }

                Method (DSTA, 1, NotSerialized)
                {
                    Local0 = Zero
                    Local1 = (One << Arg0)
                    If ((IOST & Local1))
                    {
                        ENFG (CGLD (Arg0))
                        If (ACTR)
                        {
                            Local0 = 0x0F
                        }
                        Else
                        {
                            Local0 = 0x0D
                        }

                        EXFG ()
                    }

                    Return (Local0)
                }

                Method (DCNT, 2, NotSerialized)
                {
                    ENFG (CGLD (Arg0))
                    Local1 = (IOAH << 0x08)
                    Local1 |= IOAL
                    RRIO (Arg0, Arg1, Local1, 0x08)
                    If (((DMCH < 0x04) && ((Local1 = (DMCH & 0x03)) != Zero)))
                    {
                        RDMA (Arg0, Arg1, Local1++)
                    }

                    ACTR = Arg1
                    EXFG ()
                }

                Name (CRS1, ResourceTemplate ()
                {
                    IRQNoFlags ()
                        {}
                    DMA (Compatibility, NotBusMaster, Transfer8, _Y0B)
                        {}
                    IO (Decode16,
                        0x0000,             // Range Minimum
                        0x0000,             // Range Maximum
                        0x01,               // Alignment
                        0x00,               // Length
                        _Y0C)
                })
                CreateWordField (CRS1, One, IRQM)
                CreateByteField (CRS1, \_SB.PCI0.SBRG._Y0B._DMA, DMAM)  // _DMA: Direct Memory Access
                CreateWordField (CRS1, \_SB.PCI0.SBRG._Y0C._MIN, IO11)  // _MIN: Minimum Base Address
                CreateWordField (CRS1, \_SB.PCI0.SBRG._Y0C._MAX, IO12)  // _MAX: Maximum Base Address
                CreateByteField (CRS1, \_SB.PCI0.SBRG._Y0C._LEN, LEN1)  // _LEN: Length
                Name (CRS2, ResourceTemplate ()
                {
                    IRQNoFlags ()
                        {6}
                    DMA (Compatibility, NotBusMaster, Transfer8, _Y0D)
                        {2}
                    IO (Decode16,
                        0x0000,             // Range Minimum
                        0x0000,             // Range Maximum
                        0x01,               // Alignment
                        0x00,               // Length
                        _Y0E)
                    IO (Decode16,
                        0x0000,             // Range Minimum
                        0x0000,             // Range Maximum
                        0x01,               // Alignment
                        0x00,               // Length
                        _Y0F)
                })
                CreateWordField (CRS2, One, IRQE)
                CreateByteField (CRS2, \_SB.PCI0.SBRG._Y0D._DMA, DMAE)  // _DMA: Direct Memory Access
                CreateWordField (CRS2, \_SB.PCI0.SBRG._Y0E._MIN, IO21)  // _MIN: Minimum Base Address
                CreateWordField (CRS2, \_SB.PCI0.SBRG._Y0E._MAX, IO22)  // _MAX: Maximum Base Address
                CreateByteField (CRS2, \_SB.PCI0.SBRG._Y0E._LEN, LEN2)  // _LEN: Length
                CreateWordField (CRS2, \_SB.PCI0.SBRG._Y0F._MIN, IO31)  // _MIN: Minimum Base Address
                CreateWordField (CRS2, \_SB.PCI0.SBRG._Y0F._MAX, IO32)  // _MAX: Maximum Base Address
                CreateByteField (CRS2, \_SB.PCI0.SBRG._Y0F._LEN, LEN3)  // _LEN: Length
                Method (DCRS, 2, NotSerialized)
                {
                    ENFG (CGLD (Arg0))
                    IO11 = (IOAH << 0x08)
                    IO11 |= IOAL /* \_SB_.PCI0.SBRG.IO11 */
                    IO12 = IO11 /* \_SB_.PCI0.SBRG.IO11 */
                    Local0 = (FindSetRightBit (IO11) - One)
                    LEN1 = (One << Local0)
                    If (INTR)
                    {
                        IRQM = (One << INTR) /* \_SB_.PCI0.SBRG.INTR */
                    }
                    Else
                    {
                        IRQM = Zero
                    }

                    If (((DMCH > 0x03) | ((Local1 = (DMCH & 0x03)) == Zero)))
                    {
                        DMAM = Zero
                    }
                    Else
                    {
                        DMAM = (One << Local1)
                    }

                    EXFG ()
                    Return (CRS1) /* \_SB_.PCI0.SBRG.CRS1 */
                }

                Method (DSRS, 2, NotSerialized)
                {
                    CreateWordField (Arg0, One, IRQM)
                    CreateByteField (Arg0, 0x04, DMAM)
                    CreateWordField (Arg0, 0x08, IO11)
                    ENFG (CGLD (Arg1))
                    IOAL = (IO11 & 0xFF)
                    IOAH = (IO11 >> 0x08)
                    If (IRQM)
                    {
                        FindSetRightBit (IRQM, Local0)
                        INTR = (Local0 - One)
                    }
                    Else
                    {
                        INTR = Zero
                    }

                    If (DMAM)
                    {
                        FindSetRightBit (DMAM, Local0)
                        DMCH = (Local0 - One)
                    }
                    Else
                    {
                        DMCH = 0x04
                    }

                    EXFG ()
                    DCNT (Arg1, One)
                }

                Device (SIO2)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Method (_UID, 0, NotSerialized)  // _UID: Unique ID
                    {
                        Return (SEIO) /* \SEIO */
                    }

                    Name (CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y10)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If (((SEIO != 0x03F0) && (SEIO > 0xF0)))
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO2._Y10._MIN, GP10)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIO2._Y10._MAX, GP11)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.SIO2._Y10._LEN, GPL1)  // _LEN: Length
                            GP10 = SEIO /* \SEIO */
                            GP11 = SEIO /* \SEIO */
                            GPL1 = 0x02
                        }

                        Return (CRS) /* \_SB_.PCI0.SBRG.SIO2.CRS_ */
                    }
                }

                Mutex (MUT0, 0x00)
                Method (ENF2, 1, NotSerialized)
                {
                    Acquire (MUT0, 0x0FFF)
                    LDN2 = Arg0
                }

                Method (EXF2, 0, NotSerialized)
                {
                    Release (MUT0)
                }

                OperationRegion (IO2D, SystemIO, SEIO, 0x02)
                Field (IO2D, ByteAcc, NoLock, Preserve)
                {
                    IN2D,   8, 
                    DAT2,   8
                }

                IndexField (IN2D, DAT2, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x07), 
                    LDN2,   8, 
                    Offset (0x30), 
                    ACT2,   8, 
                    Offset (0x60), 
                    SEAH,   8, 
                    SEAL,   8, 
                    SEH2,   8, 
                    SEL2,   8, 
                    Offset (0x70), 
                    INT2,   8, 
                    Offset (0x74), 
                    DMC2,   8
                }

                Method (DST2, 1, NotSerialized)
                {
                    ENF2 (Arg0)
                    Local0 = ACT2 /* \_SB_.PCI0.SBRG.ACT2 */
                    EXF2 ()
                    If ((Local0 == 0xFF))
                    {
                        Return (Zero)
                    }

                    Local0 &= One
                    Local1 = (IOST | (Local0 << Arg0))
                    If (Local0)
                    {
                        Return (0x0F)
                    }
                    ElseIf (((One << Arg0) & Local1))
                    {
                        Return (0x0D)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (DCN2, 3, NotSerialized)
                {
                    ENF2 (Arg2)
                    Local1 = (SEAH << 0x08)
                    Local1 |= SEAL
                    If (((DMC2 < 0x04) && ((Local1 = (DMC2 & 0x03)) != Zero)))
                    {
                        RDMA (Arg0, Arg1, Local1++)
                    }

                    ACT2 = Arg1
                    RRIO (Arg0, Arg1, Local1, 0x08)
                    EXF2 ()
                }

                Method (DCR2, 2, NotSerialized)
                {
                    ENF2 (Arg0)
                    IO11 = (SEAH << 0x08)
                    IO11 |= SEAL /* \_SB_.PCI0.SBRG.IO11 */
                    IO12 = IO11 /* \_SB_.PCI0.SBRG.IO11 */
                    Local0 = (FindSetRightBit (IO11) - One)
                    LEN1 = (One << Local0)
                    If (INT2)
                    {
                        IRQM = (One << INT2) /* \_SB_.PCI0.SBRG.INT2 */
                    }
                    Else
                    {
                        IRQM = Zero
                    }

                    If (((DMC2 > 0x03) | ((Local1 = (DMC2 & 0x03)) == Zero)))
                    {
                        DMAM = Zero
                    }
                    Else
                    {
                        Local1 = (DMC2 & 0x03)
                        DMAM = (One << Local1)
                    }

                    EXF2 ()
                    Return (CRS1) /* \_SB_.PCI0.SBRG.CRS1 */
                }

                Method (DSR2, 3, NotSerialized)
                {
                    CreateWordField (Arg0, One, IRQM)
                    CreateByteField (Arg0, 0x04, DMAM)
                    CreateWordField (Arg0, 0x08, IO11)
                    ENF2 (Arg2)
                    Local1 = (SEAH << 0x08)
                    Local1 |= SEAL
                    RRIO (Arg1, Zero, Local1, 0x08)
                    RRIO (Arg1, One, IO11, 0x08)
                    SEAL = (IO11 & 0xFF)
                    SEAH = (IO11 >> 0x08)
                    If (IRQM)
                    {
                        FindSetRightBit (IRQM, Local0)
                        INT2 = (Local0 - One)
                    }
                    Else
                    {
                        INT2 = Zero
                    }

                    If (DMAM)
                    {
                        FindSetRightBit (DMAM, Local0)
                        DMC2 = (Local0 - One)
                    }
                    Else
                    {
                        DMC2 = 0x04
                    }

                    EXF2 ()
                    DCN2 (Arg1, One, 0x02)
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103") /* HPET System Timer */)  // _HID: Hardware ID
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            _Y11)
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (CRS, \_SB.PCI0.SBRG.HPET._Y11._BAS, HPT)  // _BAS: Base Address
                        HPT = 0xFED00000
                        Return (CRS) /* \_SB_.PCI0.SBRG.HPET.CRS_ */
                    }
                }

                Device (^PCIE)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x11)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0xE0000000,         // Address Base
                            0x10000000,         // Address Length
                            _Y12)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (CRS, \_SB.PCI0.PCIE._Y12._BAS, BAS1)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.PCI0.PCIE._Y12._LEN, LEN1)  // _LEN: Length
                        BAS1 = PCIB /* \PCIB */
                        LEN1 = PCIL /* \PCIL */
                        Return (CRS) /* \_SB_.PCI0.PCIE.CRS_ */
                    }
                }

                Device (OMSC)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y13)
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y14)
                    })
                    Name (CRS1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y15)
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y16)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If (APIC)
                        {
                            CreateDWordField (CRS, \_SB.PCI0.SBRG.OMSC._Y13._LEN, ML01)  // _LEN: Length
                            CreateDWordField (CRS, \_SB.PCI0.SBRG.OMSC._Y13._BAS, MB01)  // _BAS: Base Address
                            CreateDWordField (CRS, \_SB.PCI0.SBRG.OMSC._Y14._LEN, ML02)  // _LEN: Length
                            CreateDWordField (CRS, \_SB.PCI0.SBRG.OMSC._Y14._BAS, MB02)  // _BAS: Base Address
                            MB01 = 0xFEC00000
                            ML01 = 0x1000
                            MB02 = 0xFEE00000
                            ML02 = 0x1000
                            CreateDWordField (CRS1, \_SB.PCI0.SBRG.OMSC._Y15._LEN, ML03)  // _LEN: Length
                            CreateDWordField (CRS1, \_SB.PCI0.SBRG.OMSC._Y15._BAS, MB03)  // _BAS: Base Address
                            CreateDWordField (CRS1, \_SB.PCI0.SBRG.OMSC._Y16._LEN, ML04)  // _LEN: Length
                            CreateDWordField (CRS1, \_SB.PCI0.SBRG.OMSC._Y16._BAS, MB04)  // _BAS: Base Address
                            MB03 = 0xFEC00000
                            ML03 = 0x1000
                            MB04 = 0xFEE00000
                            ML04 = 0x1000
                        }

                        Local0 = (0x05 << 0x0A)
                        If ((IOST & Local0))
                        {
                            Return (CRS) /* \_SB_.PCI0.SBRG.OMSC.CRS_ */
                        }
                        Else
                        {
                            Return (CRS1) /* \_SB_.PCI0.SBRG.OMSC.CRS1 */
                        }
                    }
                }

                Device (^^RMEM)
                {
                    Name (_HID, EisaId ("PNP0C01") /* System Board */)  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0x00000000,         // Address Base
                            0x000A0000,         // Address Length
                            )
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y17)
                        Memory32Fixed (ReadOnly,
                            0x000E0000,         // Address Base
                            0x00020000,         // Address Length
                            _Y18)
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y19)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (CRS, \_SB.RMEM._Y17._BAS, BAS1)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.RMEM._Y17._LEN, LEN1)  // _LEN: Length
                        CreateDWordField (CRS, \_SB.RMEM._Y18._BAS, BAS2)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.RMEM._Y18._LEN, LEN2)  // _LEN: Length
                        CreateDWordField (CRS, \_SB.RMEM._Y19._BAS, BAS4)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.RMEM._Y19._LEN, LEN4)  // _LEN: Length
                        If (OSFL ()){}
                        Else
                        {
                            If (MG1B)
                            {
                                If ((MG1B > 0x000C0000))
                                {
                                    BAS1 = 0x000C0000
                                    LEN1 = (MG1B - BAS1) /* \_SB_.RMEM._CRS.BAS1 */
                                }
                            }
                            Else
                            {
                                BAS1 = 0x000C0000
                                LEN1 = 0x00020000
                            }

                            If (Local0 = (MG1B + MG1L) /* \MG1L */)
                            {
                                BAS2 = Local0
                                LEN2 = (0x00100000 - BAS2) /* \_SB_.RMEM._CRS.BAS2 */
                            }
                        }

                        BAS4 = MH1B /* \MH1B */
                        LEN4 = (Zero - BAS4) /* \_SB_.RMEM._CRS.BAS4 */
                        Return (CRS) /* \_SB_.RMEM.CRS_ */
                    }
                }

                Device (RMSC)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x10)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0022,             // Range Minimum
                            0x0022,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x00,               // Alignment
                            0x0B,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x00,               // Alignment
                            0x0E,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0084,             // Range Minimum
                            0x0084,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0088,             // Range Minimum
                            0x0088,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x008C,             // Range Minimum
                            0x008C,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0090,             // Range Minimum
                            0x0090,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x00A2,             // Range Minimum
                            0x00A2,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x00B1,             // Range Minimum
                            0x00B1,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00E0,             // Range Minimum
                            0x00E0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x040B,             // Range Minimum
                            0x040B,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x04D6,             // Range Minimum
                            0x04D6,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0C00,             // Range Minimum
                            0x0C00,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0C14,             // Range Minimum
                            0x0C14,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0C50,             // Range Minimum
                            0x0C50,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0C52,             // Range Minimum
                            0x0C52,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0C6C,             // Range Minimum
                            0x0C6C,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0C6F,             // Range Minimum
                            0x0C6F,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0CD0,             // Range Minimum
                            0x0CD0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0CD2,             // Range Minimum
                            0x0CD2,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0CD4,             // Range Minimum
                            0x0CD4,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0CD6,             // Range Minimum
                            0x0CD6,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0CD8,             // Range Minimum
                            0x0CD8,             // Range Maximum
                            0x00,               // Alignment
                            0x08,               // Length
                            )
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y1A)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y1D)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y1C)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y1B)
                        IO (Decode16,
                            0x0900,             // Range Minimum
                            0x0900,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0910,             // Range Minimum
                            0x0910,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0xFE00,             // Range Minimum
                            0xFE00,             // Range Maximum
                            0x00,               // Alignment
                            0xFF,               // Length
                            )
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y1E)
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y1F)
                        Memory32Fixed (ReadOnly,
                            0xFFB80000,         // Address Base
                            0x00080000,         // Address Length
                            )
                        Memory32Fixed (ReadOnly,
                            0xFEC10000,         // Address Base
                            0x00000020,         // Address Length
                            )
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y1A._MIN, GP00)  // _MIN: Minimum Base Address
                        CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y1A._MAX, GP01)  // _MAX: Maximum Base Address
                        CreateByteField (CRS, \_SB.PCI0.SBRG.RMSC._Y1A._LEN, GP0L)  // _LEN: Length
                        GP00 = PMBS /* \PMBS */
                        GP01 = PMBS /* \PMBS */
                        GP0L = PMLN /* \PMLN */
                        If (SMBB)
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y1B._MIN, GP10)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y1B._MAX, GP11)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.RMSC._Y1B._LEN, GP1L)  // _LEN: Length
                            GP10 = SMBB /* \SMBB */
                            GP11 = SMBB /* \SMBB */
                            GP1L = SMBL /* \SMBL */
                            CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y1C._MIN, GPB0)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y1C._MAX, GPB1)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.RMSC._Y1C._LEN, GPBL)  // _LEN: Length
                            GPB0 = SMB0 /* \SMB0 */
                            GPB1 = SMB0 /* \SMB0 */
                            GPBL = SMBM /* \SMBM */
                        }

                        If (GPBS)
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y1D._MIN, GP20)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y1D._MAX, GP21)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.RMSC._Y1D._LEN, GP2L)  // _LEN: Length
                            GP20 = GPBS /* \GPBS */
                            GP21 = GPBS /* \GPBS */
                            GP2L = GPLN /* \GPLN */
                        }

                        Local0 = (One << 0x0A)
                        Local1 = (One << 0x0C)
                        Local0 = ((IOST & Local0) | (IOST & Local1))
                        CreateByteField (CRS, \_SB.PCI0.SBRG.RMSC._Y1E._LEN, KBL0)  // _LEN: Length
                        CreateByteField (CRS, \_SB.PCI0.SBRG.RMSC._Y1F._LEN, KBL1)  // _LEN: Length
                        If ((Local0 == Zero))
                        {
                            KBL0 = One
                            KBL1 = One
                        }

                        Return (CRS) /* \_SB_.PCI0.SBRG.RMSC.CRS_ */
                    }
                }
            }

            Device (P0PC)
            {
                Name (_ADR, 0x00140004)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR0C) /* \_SB_.AR0C */
                    }

                    Return (PR0C) /* \_SB_.PR0C */
                }
            }

            Device (UHC1)
            {
                Name (_ADR, 0x00120000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0B, 0x04))
                }
            }

            Device (UHC2)
            {
                Name (_ADR, 0x00120001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0B, 0x04))
                }
            }

            Device (UHC3)
            {
                Name (_ADR, 0x00120002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0B, 0x04))
                }
            }

            Device (USB4)
            {
                Name (_ADR, 0x00130000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0B, 0x04))
                }
            }

            Device (UHC5)
            {
                Name (_ADR, 0x00130001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0B, 0x04))
                }
            }

            Device (UHC6)
            {
                Name (_ADR, 0x00130002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0B, 0x04))
                }
            }

            Device (UHC7)
            {
                Name (_ADR, 0x00140005)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0B, 0x04))
                }
            }

            Device (SATA)
            {
                Name (_ADR, 0x00110000)  // _ADR: Address
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                }

                OperationRegion (SACS, PCI_Config, Zero, 0x40)
                Field (SACS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x24), 
                    STB5,   32
                }

                Name (SPTM, Buffer (0x14)
                {
                    /* 0000 */  0x78, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00,  // x.......
                    /* 0008 */  0x78, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00,  // x.......
                    /* 0010 */  0x1F, 0x00, 0x00, 0x00                           // ....
                })
                Device (PRID)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        Return (SPTM) /* \_SB_.PCI0.SATA.SPTM */
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((STCL == 0x0101))
                        {
                            Local1 = 0x0F
                        }
                        Else
                        {
                            Local1 = Zero
                        }

                        Return (Local1)
                    }

                    Name (PRIS, Zero)
                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        OperationRegion (BAR, SystemMemory, STB5, 0x0400)
                        Field (BAR, AnyAcc, NoLock, Preserve)
                        {
                            Offset (0x120), 
                                ,   7, 
                            PMBY,   1, 
                            Offset (0x128), 
                            PMS0,   4, 
                            Offset (0x129), 
                            PMS1,   4, 
                            Offset (0x220), 
                                ,   7, 
                            PSBY,   1, 
                            Offset (0x228), 
                            PSS0,   4, 
                            Offset (0x229), 
                            PSS1,   4, 
                            Offset (0x2A0), 
                                ,   7
                        }

                        If (((OSTY <= 0x15) && (OSTY >= 0x12)))
                        {
                            If (PMS1)
                            {
                                Local0 = 0x32
                                While (((PMBY == One) && Local0))
                                {
                                    Sleep (0xFA)
                                    Local0--
                                }
                            }

                            If (PSS1)
                            {
                                Local0 = 0x32
                                While (((PSBY == One) && Local0))
                                {
                                    Sleep (0xFA)
                                    Local0--
                                }
                            }
                        }

                        PRIS = Zero
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                        PRIS = 0x03
                    }

                    Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
                    {
                        Return (PRIS) /* \_SB_.PCI0.SATA.PRID.PRIS */
                    }

                    Device (P_D0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            OperationRegion (BAR, SystemMemory, STB5, 0x0400)
                            Field (BAR, AnyAcc, NoLock, Preserve)
                            {
                                Offset (0x128), 
                                PMS0,   4, 
                                Offset (0x129), 
                                PMS1,   4
                            }

                            If (~(PMS1 == Zero))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Name (S12P, Zero)
                        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                        {
                            OperationRegion (BAR, SystemMemory, STB5, 0x0400)
                            Field (BAR, AnyAcc, NoLock, Preserve)
                            {
                                Offset (0x120), 
                                    ,   7, 
                                PMBY,   1
                            }

                            Local0 = 0x32
                            While (((PMBY == One) && Local0))
                            {
                                Sleep (0xFA)
                                Local0--
                            }

                            S12P = Zero
                        }

                        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                        {
                            S12P = 0x03
                        }

                        Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
                        {
                            Return (S12P) /* \_SB_.PCI0.SATA.PRID.P_D0.S12P */
                        }
                    }

                    Device (P_D1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            OperationRegion (BAR, SystemMemory, STB5, 0x0400)
                            Field (BAR, AnyAcc, NoLock, Preserve)
                            {
                                Offset (0x228), 
                                PSS0,   4, 
                                Offset (0x229), 
                                PSS1,   4
                            }

                            If (~(PSS1 == Zero))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Name (S12P, Zero)
                        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                        {
                            OperationRegion (BAR, SystemMemory, STB5, 0x0400)
                            Field (BAR, AnyAcc, NoLock, Preserve)
                            {
                                Offset (0x220), 
                                    ,   7, 
                                PSBY,   1
                            }

                            Local0 = 0x32
                            While (((PSBY == One) && Local0))
                            {
                                Sleep (0xFA)
                                Local0--
                            }

                            S12P = Zero
                        }

                        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                        {
                            S12P = 0x03
                        }

                        Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
                        {
                            Return (S12P) /* \_SB_.PCI0.SATA.PRID.P_D1.S12P */
                        }
                    }
                }

                Device (SECD)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        Return (SPTM) /* \_SB_.PCI0.SATA.SPTM */
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                    }

                    Name (SECS, Zero)
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((STCL == 0x0101))
                        {
                            Local1 = 0x0F
                        }
                        Else
                        {
                            Local1 = Zero
                        }

                        Return (Local1)
                    }

                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        OperationRegion (BAR, SystemMemory, STB5, 0x0400)
                        Field (BAR, AnyAcc, NoLock, Preserve)
                        {
                            Offset (0x1A0), 
                                ,   7, 
                            SMBY,   1, 
                            Offset (0x1A8), 
                            SMS0,   4, 
                            Offset (0x1A9), 
                            SMS1,   4, 
                            Offset (0x2A0), 
                                ,   7, 
                            SSBY,   1, 
                            Offset (0x2A8), 
                            SSS0,   4, 
                            Offset (0x2A9), 
                            SSS1,   4, 
                            Offset (0x2AC)
                        }

                        If (((OSTY <= 0x15) && (OSTY >= 0x12)))
                        {
                            If (SMS1)
                            {
                                Local0 = 0x32
                                While (((SMBY == One) && Local0))
                                {
                                    Sleep (0xFA)
                                    Local0--
                                }
                            }

                            If (SSS1)
                            {
                                Local0 = 0x32
                                While (((SSBY == One) && Local0))
                                {
                                    Sleep (0xFA)
                                    Local0--
                                }
                            }
                        }

                        SECS = Zero
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                        SECS = 0x03
                    }

                    Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
                    {
                        Return (SECS) /* \_SB_.PCI0.SATA.SECD.SECS */
                    }

                    Device (S_D0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            OperationRegion (BAR, SystemMemory, STB5, 0x0400)
                            Field (BAR, AnyAcc, NoLock, Preserve)
                            {
                                Offset (0x1A8), 
                                SMS0,   4, 
                                Offset (0x1A9), 
                                SMS1,   4
                            }

                            If (~(SMS1 == Zero))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Name (S12P, Zero)
                        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                        {
                            OperationRegion (BAR, SystemMemory, STB5, 0x1000)
                            Field (BAR, AnyAcc, NoLock, Preserve)
                            {
                                Offset (0x1A0), 
                                    ,   7, 
                                SMBY,   1
                            }

                            Local0 = 0x32
                            While (((SMBY == One) && Local0))
                            {
                                Sleep (0xFA)
                                Local0--
                            }

                            S12P = Zero
                        }

                        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                        {
                            S12P = 0x03
                        }

                        Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
                        {
                            Return (S12P) /* \_SB_.PCI0.SATA.SECD.S_D0.S12P */
                        }
                    }

                    Device (S_D1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            OperationRegion (BAR, SystemMemory, STB5, 0x0400)
                            Field (BAR, AnyAcc, NoLock, Preserve)
                            {
                                Offset (0x2A8), 
                                SSS0,   4, 
                                Offset (0x2A9), 
                                SSS1,   4
                            }

                            If (~(SSS1 == Zero))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Name (S12P, Zero)
                        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                        {
                            OperationRegion (BAR, SystemMemory, STB5, 0x0400)
                            Field (BAR, AnyAcc, NoLock, Preserve)
                            {
                                Offset (0x2A0), 
                                    ,   7, 
                                SSBY,   1
                            }

                            Local0 = 0x32
                            While (((SSBY == One) && Local0))
                            {
                                Sleep (0xFA)
                                Local0--
                            }

                            S12P = Zero
                        }

                        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                        {
                            S12P = 0x03
                        }

                        Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
                        {
                            Return (S12P) /* \_SB_.PCI0.SATA.SECD.S_D1.S12P */
                        }
                    }
                }
            }
        }

        Device (PC40)
        {
            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            Name (_ADR, 0x001C0001)  // _ADR: Address
            Method (^BN40, 0, NotSerialized)
            {
                Return (0x40)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN40 ())
            }

            Name (_UID, 0x40)  // _UID: Unique ID
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR40) /* \_SB_.AR40 */
                }

                Return (PR40) /* \_SB_.PR40 */
            }

            Method (BN40, 0, NotSerialized)
            {
                Return (SEB1) /* \SEB1 */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((SEB1 != Zero))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Name (CRS, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x003F,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0040,             // Length
                    ,, _Y20)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0xFFFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0xF300,             // Length
                    ,, _Y21, TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x03B0,             // Range Minimum
                    0x03BB,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x000C,             // Length
                    ,, _Y22, TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x03C0,             // Range Minimum
                    0x03DF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0020,             // Length
                    ,, _Y23, TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, _Y24, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y25, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y26, AddressRangeMemory, TypeStatic)
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Prefetchable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000001600000000, // Range Minimum
                    0x000000254FFFFFFF, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000F50000000, // Length
                    ,, _Y30, AddressRangeMemory, TypeStatic)
            })
            CreateWordField (CRS, \_SB.PC40._Y20._MIN, MINB)  // _MIN: Minimum Base Address
            CreateWordField (CRS, \_SB.PC40._Y20._MAX, MAXB)  // _MAX: Maximum Base Address
            CreateWordField (CRS, \_SB.PC40._Y20._LEN, LENB)  // _LEN: Length
            CreateWordField (CRS, \_SB.PC40._Y21._MIN, MINI)  // _MIN: Minimum Base Address
            CreateWordField (CRS, \_SB.PC40._Y21._MAX, MAXI)  // _MAX: Maximum Base Address
            CreateWordField (CRS, \_SB.PC40._Y21._LEN, LENI)  // _LEN: Length
            CreateWordField (CRS, \_SB.PC40._Y22._MIN, MIN1)  // _MIN: Minimum Base Address
            CreateWordField (CRS, \_SB.PC40._Y22._MAX, MAX1)  // _MAX: Maximum Base Address
            CreateWordField (CRS, \_SB.PC40._Y22._LEN, LEN1)  // _LEN: Length
            CreateWordField (CRS, \_SB.PC40._Y23._MIN, MIN2)  // _MIN: Minimum Base Address
            CreateWordField (CRS, \_SB.PC40._Y23._MAX, MAX2)  // _MAX: Maximum Base Address
            CreateWordField (CRS, \_SB.PC40._Y23._LEN, LEN2)  // _LEN: Length
            CreateDWordField (CRS, \_SB.PC40._Y24._MIN, MIN4)  // _MIN: Minimum Base Address
            CreateDWordField (CRS, \_SB.PC40._Y24._MAX, MAX4)  // _MAX: Maximum Base Address
            CreateDWordField (CRS, \_SB.PC40._Y24._LEN, LEN4)  // _LEN: Length
            CreateDWordField (CRS, \_SB.PC40._Y25._MIN, MIN5)  // _MIN: Minimum Base Address
            CreateDWordField (CRS, \_SB.PC40._Y25._MAX, MAX5)  // _MAX: Maximum Base Address
            CreateDWordField (CRS, \_SB.PC40._Y25._LEN, LEN5)  // _LEN: Length
            CreateDWordField (CRS, \_SB.PC40._Y26._MIN, MIN6)  // _MIN: Minimum Base Address
            CreateDWordField (CRS, \_SB.PC40._Y26._MAX, MAX6)  // _MAX: Maximum Base Address
            CreateDWordField (CRS, \_SB.PC40._Y26._LEN, LEN6)  // _LEN: Length
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = SEB1 /* \SEB1 */
                MINB = Local0
                Local0 = SUB1 /* \SUB1 */
                MAXB = Local0
                Local0 = (SUB1 - SEB1) /* \SEB1 */
                LENB = (Local0 + One)
                MINI = IOB1 /* \IOB1 */
                LENI = IOL1 /* \IOL1 */
                Local0 = IOL1 /* \IOL1 */
                MAXI = (MINI + Local0--)
                If ((VGAR == One))
                {
                    Noop
                }
                Else
                {
                    MIN4 = Zero
                    MAX4 = Zero
                    LEN4 = Zero
                    MIN1 = Zero
                    MAX1 = Zero
                    LEN1 = Zero
                    MIN2 = Zero
                    MAX2 = Zero
                    LEN2 = Zero
                }

                MIN5 = GP4S /* \GP4S */
                LEN5 = GP4L /* \GP4L */
                Local0 = GP4L /* \GP4L */
                If (Local0)
                {
                    MAX5 = (MIN5 + Local0--)
                }

                MIN6 = GP5S /* \GP5S */
                LEN6 = GP5L /* \GP5L */
                Local0 = GP5L /* \GP5L */
                MAX6 = (MIN6 + Local0--)
                Return (CRS) /* \_SB_.PC40.CRS_ */
            }

            If (OSCF)
            {
                Name (SUPP, Zero)
                Name (CTRL, Zero)
                Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
                {
                    If ((Arg0 == ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */))
                    {
                        CreateDWordField (Arg3, Zero, CDW1)
                        CreateDWordField (Arg3, 0x04, CDW2)
                        CreateDWordField (Arg3, 0x08, CDW3)
                        SUPP = CDW2 /* \_SB_.PC40._OSC.CDW2 */
                        CTRL = CDW3 /* \_SB_.PC40._OSC.CDW3 */
                        If (((SUPP & 0x16) != 0x16))
                        {
                            CTRL &= 0x1E
                        }

                        CTRL &= 0x1D
                        If (~(CDW1 & One))
                        {
                            If ((CTRL & One)){}
                            If ((CTRL & 0x04)){}
                            If ((CTRL & 0x10)){}
                        }

                        If ((Arg1 != One))
                        {
                            CDW1 |= 0x08
                        }

                        If ((CDW3 != CTRL))
                        {
                            CDW1 |= 0x10
                        }

                        CDW3 = CTRL /* \_SB_.PC40.CTRL */
                        Return (Arg3)
                    }
                    Else
                    {
                        CDW1 |= 0x04
                        Return (Arg3)
                    }
                }
            }

            Device (RD8B)
            {
                Name (_ADR, Zero)  // _ADR: Address
                OperationRegion (NB2, PCI_Config, Zero, 0x0100)
                Field (NB2, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    MI,     32, 
                    MD,     32, 
                    Offset (0x94), 
                    HI,     32, 
                    HD,     32, 
                    Offset (0xF8), 
                    API,    32, 
                    APD,    32
                }

                Device (NMEM)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x44)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y27)
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y28)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (CRS, \_SB.PC40.RD8B.NMEM._Y27._BAS, BAS1)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.PC40.RD8B.NMEM._Y27._LEN, LEN1)  // _LEN: Length
                        MI = 0x3C
                        Local0 = MD /* \_SB_.PC40.RD8B.MD__ */
                        If ((Local0 & 0x40))
                        {
                            MI = 0x3A
                            BAS1 = (MD & 0xFFFFFF00)
                            LEN1 = ((MD & 0xFF) << 0x17)
                        }

                        CreateDWordField (CRS, \_SB.PC40.RD8B.NMEM._Y28._BAS, BAS2)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.PC40.RD8B.NMEM._Y28._LEN, LEN2)  // _LEN: Length
                        API = Zero
                        Local1 = APD /* \_SB_.PC40.RD8B.APD_ */
                        If ((Local1 & One))
                        {
                            LEN2 = 0x0100
                            API = One
                            BAS2 = (APD & 0xFFFFFF00)
                        }

                        Return (CRS) /* \_SB_.PC40.RD8B.NMEM.CRS_ */
                    }
                }
            }

            Device (IOMB)
            {
                Name (_ADR, 0x02)  // _ADR: Address
                OperationRegion (NBF2, PCI_Config, Zero, 0x0100)
                Field (NBF2, AnyAcc, NoLock, Preserve)
                {
                    DID,    32, 
                    Offset (0x44), 
                    MBAS,   32
                }

                Device (UMEM)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x45)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y29)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (CRS, \_SB.PC40.IOMB.UMEM._Y29._BAS, BAS3)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.PC40.IOMB.UMEM._Y29._LEN, LEN3)  // _LEN: Length
                        If ((DID != Ones))
                        {
                            LEN3 = 0x4000
                            BAS3 = (MBAS & 0xFFFFFF00)
                        }

                        Return (CRS) /* \_SB_.PC40.IOMB.UMEM.CRS_ */
                    }
                }
            }

            Device (PC12)
            {
                Name (_ADR, 0x00020000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x18, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR42) /* \_SB_.AR42 */
                    }

                    Return (PR42) /* \_SB_.PR42 */
                }
            }

            Device (PC1B)
            {
                Name (_ADR, 0x000B0000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x18, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR4B) /* \_SB_.AR4B */
                    }

                    Return (PR4B) /* \_SB_.PR4B */
                }
            }
        }

        Scope (\_GPE)
        {
            Method (_L18, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Notify (\_SB.PCI0.PC02, 0x02) // Device Wake
                Notify (\_SB.PCI0.PC04, 0x02) // Device Wake
                Notify (\_SB.PCI0.PC0B, 0x02) // Device Wake
                Notify (\_SB.PCI0.PC0C, 0x02) // Device Wake
                Notify (\_SB.PCI0.PC0D, 0x02) // Device Wake
                Notify (\_SB.PC40.PC12, 0x02) // Device Wake
                Notify (\_SB.PC40.PC1B, 0x02) // Device Wake
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            Method (_L03, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                \_SB.PCI0.SBRG.SIOH ()
            }

            Method (_L0B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Notify (\_SB.PCI0.UHC1, 0x02) // Device Wake
                Notify (\_SB.PCI0.UHC2, 0x02) // Device Wake
                Notify (\_SB.PCI0.UHC3, 0x02) // Device Wake
                Notify (\_SB.PCI0.USB4, 0x02) // Device Wake
                Notify (\_SB.PCI0.UHC5, 0x02) // Device Wake
                Notify (\_SB.PCI0.UHC6, 0x02) // Device Wake
                Notify (\_SB.PCI0.UHC7, 0x02) // Device Wake
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }
        }

        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C") /* Power Button Device */)  // _HID: Hardware ID
            Name (_UID, 0xAA)  // _UID: Unique ID
            Name (_STA, 0x0B)  // _STA: Status
        }
    }

    Scope (_SB)
    {
        OperationRegion (PIRQ, SystemIO, 0x0C00, 0x02)
        Field (PIRQ, ByteAcc, NoLock, Preserve)
        {
            PIDX,   8, 
            PDAT,   8
        }

        IndexField (PIDX, PDAT, ByteAcc, NoLock, Preserve)
        {
            PIRA,   8, 
            PIRB,   8, 
            PIRC,   8, 
            PIRD,   8, 
            PIRS,   8, 
            Offset (0x09), 
            PIRE,   8, 
            PIRF,   8, 
            PIRG,   8, 
            PIRH,   8
        }

        OperationRegion (KBDD, SystemIO, 0x64, One)
        Field (KBDD, ByteAcc, NoLock, Preserve)
        {
            PD64,   8
        }

        Method (IRQC, 0, NotSerialized)
        {
            PIRA = Zero
            PIRB = Zero
            PIRC = Zero
            PIRD = Zero
            Local1 = PD64 /* \_SB_.PD64 */
            PIRE = Zero
            PIRF = Zero
            PIRG = Zero
            PIRH = Zero
        }

        Name (BUFA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {15}
        })
        Name (IPRA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Name (IPRB, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Name (IPRC, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Name (IPRD, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Device (LNKA)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRA)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSA) /* \_SB_.PRSA */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRA = Zero
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRA) /* \_SB_.PIRA */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRA = Local0
            }
        }

        Device (LNKB)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRB)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSB) /* \_SB_.PRSB */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRB = Zero
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRB) /* \_SB_.PIRB */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRB = Local0
            }
        }

        Device (LNKC)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRC)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSC) /* \_SB_.PRSC */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRC = Zero
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRC) /* \_SB_.PIRC */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRC = Local0
            }
        }

        Device (LNKD)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRD)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSD) /* \_SB_.PRSD */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRD = Zero
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRD) /* \_SB_.PIRD */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRD = Local0
            }
        }

        Device (LNKE)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRE)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSE) /* \_SB_.PRSE */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRE = Zero
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRE) /* \_SB_.PIRE */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (PIRE, Local0)
                Local0--
                PIRE = Local0
            }
        }

        Device (LNKF)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRF)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSF) /* \_SB_.PRSF */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRF = Zero
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRF) /* \_SB_.PIRF */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRF = Local0
            }
        }

        Device (LNKG)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRG)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSG) /* \_SB_.PRSG */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRG = Zero
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRG) /* \_SB_.PIRG */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRG = Local0
            }
        }

        Device (LNKH)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRH)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSH) /* \_SB_.PRSH */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRH = Zero
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRH) /* \_SB_.PIRH */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRH = Local0
            }
        }
    }

    Scope (_SB)
    {
        Name (XCPD, Zero)
        Name (XNPT, One)
        Name (XCAP, 0x02)
        Name (XDCP, 0x04)
        Name (XDCT, 0x08)
        Name (XDST, 0x0A)
        Name (XLCP, 0x0C)
        Name (XLCT, 0x10)
        Name (XLST, 0x12)
        Name (XSCP, 0x14)
        Name (XSCT, 0x18)
        Name (XSST, 0x1A)
        Name (XRCT, 0x1C)
        Mutex (MUTE, 0x00)
        Method (RBPE, 1, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            Local0 = (Arg0 + PCIB) /* \PCIB */
            OperationRegion (PCFG, SystemMemory, Local0, One)
            Field (PCFG, ByteAcc, NoLock, Preserve)
            {
                XCFG,   8
            }

            Release (MUTE)
            Return (XCFG) /* \_SB_.RBPE.XCFG */
        }

        Method (RWPE, 1, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            Arg0 &= 0xFFFFFFFE
            Local0 = (Arg0 + PCIB) /* \PCIB */
            OperationRegion (PCFG, SystemMemory, Local0, 0x02)
            Field (PCFG, WordAcc, NoLock, Preserve)
            {
                XCFG,   16
            }

            Release (MUTE)
            Return (XCFG) /* \_SB_.RWPE.XCFG */
        }

        Method (RDPE, 1, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            Arg0 &= 0xFFFFFFFC
            Local0 = (Arg0 + PCIB) /* \PCIB */
            OperationRegion (PCFG, SystemMemory, Local0, 0x04)
            Field (PCFG, DWordAcc, NoLock, Preserve)
            {
                XCFG,   32
            }

            Release (MUTE)
            Return (XCFG) /* \_SB_.RDPE.XCFG */
        }

        Method (WBPE, 2, NotSerialized)
        {
            Acquire (MUTE, 0x0FFF)
            Local0 = (Arg0 + PCIB) /* \PCIB */
            OperationRegion (PCFG, SystemMemory, Local0, One)
            Field (PCFG, ByteAcc, NoLock, Preserve)
            {
                XCFG,   8
            }

            XCFG = Arg1
            Release (MUTE)
        }

        Method (WWPE, 2, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            Arg0 &= 0xFFFFFFFE
            Local0 = (Arg0 + PCIB) /* \PCIB */
            OperationRegion (PCFG, SystemMemory, Local0, 0x02)
            Field (PCFG, WordAcc, NoLock, Preserve)
            {
                XCFG,   16
            }

            XCFG = Arg1
            Release (MUTE)
        }

        Method (WDPE, 2, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            Arg0 &= 0xFFFFFFFC
            Local0 = (Arg0 + PCIB) /* \PCIB */
            OperationRegion (PCFG, SystemMemory, Local0, 0x04)
            Field (PCFG, DWordAcc, NoLock, Preserve)
            {
                XCFG,   32
            }

            XCFG = Arg1
            Release (MUTE)
        }

        Method (RWDP, 3, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            Arg0 &= 0xFFFFFFFC
            Local0 = (Arg0 + PCIB) /* \PCIB */
            OperationRegion (PCFG, SystemMemory, Local0, 0x04)
            Field (PCFG, DWordAcc, NoLock, Preserve)
            {
                XCFG,   32
            }

            Local1 = (XCFG & Arg2)
            XCFG = (Local1 | Arg1)
            Release (MUTE)
        }

        Method (RPME, 1, NotSerialized)
        {
            Local0 = (Arg0 + 0x84)
            Local1 = RDPE (Local0)
            If ((Local1 == Ones))
            {
                Return (Zero)
            }
            Else
            {
                If ((Local1 && 0x00010000))
                {
                    WDPE (Local0, (Local1 & 0x00010000))
                    Return (One)
                }

                Return (Zero)
            }
        }
    }

    If (OSCF)
    {
        Scope (_SB.PCI0)
        {
            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                If ((Arg0 == ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */))
                {
                    CreateDWordField (Arg3, Zero, CDW1)
                    CreateDWordField (Arg3, 0x04, CDW2)
                    CreateDWordField (Arg3, 0x08, CDW3)
                    SUPP = CDW2 /* \_SB_.PCI0._OSC.CDW2 */
                    CTRL = CDW3 /* \_SB_.PCI0._OSC.CDW3 */
                    If (((SUPP & 0x16) != 0x16))
                    {
                        CTRL &= 0x1E
                    }

                    CTRL &= 0x1D
                    If (~(CDW1 & One))
                    {
                        If ((CTRL & One)){}
                        If ((CTRL & 0x04)){}
                        If ((CTRL & 0x10)){}
                    }

                    If ((Arg1 != One))
                    {
                        CDW1 |= 0x08
                    }

                    If ((CDW3 != CTRL))
                    {
                        CDW1 |= 0x10
                    }

                    CDW3 = CTRL /* \_SB_.PCI0.CTRL */
                    Return (Arg3)
                }
                Else
                {
                    CDW1 |= 0x04
                    Return (Arg3)
                }
            }
        }
    }

    Method (NPTS, 1, NotSerialized)
    {
    }

    Method (NWAK, 1, NotSerialized)
    {
    }

    Method (NB2S, 1, NotSerialized)
    {
    }

    Method (NB2W, 1, NotSerialized)
    {
    }

    Scope (_SB.PCI0.SBRG)
    {
        OperationRegion (BMIO, SystemIO, 0x0CA2, One)
        Field (BMIO, ByteAcc, NoLock, Preserve)
        {
            BMCD,   8
        }

        OperationRegion (MIPT, SystemIO, SMIT, One)
        Field (MIPT, ByteAcc, NoLock, Preserve)
        {
            PSMI,   8
        }

        Device (BMCI)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0CA2,             // Range Minimum
                    0x0CA2,             // Range Maximum
                    0x00,               // Alignment
                    0x02,               // Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((BMCD == 0xFF))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }

        Method (BMCW, 1, NotSerialized)
        {
            PSMI = 0x30
        }
    }

    Scope (_SB)
    {
        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Name (SUPP, Zero)
            Name (CTRL, Zero)
            If ((Arg0 == ToUUID ("ed855e0c-6c90-47bf-a62a-26de0fc5ad5c") /* Unknown UUID */))
            {
                CreateDWordField (Arg3, Zero, CDW1)
                CreateDWordField (Arg3, 0x04, CDW2)
                CreateDWordField (Arg3, 0x08, CDW3)
                SUPP = CDW2 /* \_SB_._OSC.CDW2 */
                CTRL = CDW3 /* \_SB_._OSC.CDW3 */
                If ((SUPP & One))
                {
                    Return (Arg3)
                }

                SUPP |= 0x04
                Return (Arg3)
            }
            Else
            {
                Return (Arg3)
            }
        }
    }

    Scope (_SB)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            OSTY = OSFL ()
            If ((OSFL () == Zero))
            {
                OSTY = 0x05
            }

            If ((OSFL () == 0x05))
            {
                OSTY = 0x06
            }
        }

        Scope (PCI0)
        {
            Name (CRS, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0000,             // Length
                    ,, _Y2B)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x03AF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x03B0,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x03E0,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0918,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x03B0,             // Range Minimum
                    0x03BB,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x000C,             // Length
                    ,, _Y2A, TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x03C0,             // Range Minimum
                    0x03DF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0020,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0000,             // Length
                    ,, _Y2C, TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xF0000000,         // Range Minimum
                    0xFFFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x10000000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, _Y2D, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y2E, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y2F, AddressRangeMemory, TypeStatic)
            })
            CreateWordField (CRS, \_SB.PCI0._Y2A._MIN, MIN1)  // _MIN: Minimum Base Address
            CreateWordField (CRS, \_SB.PCI0._Y2A._MAX, MAX1)  // _MAX: Maximum Base Address
            CreateWordField (CRS, \_SB.PCI0._Y2A._LEN, LEN1)  // _LEN: Length
            CreateWordField (CRS, \_SB.PCI0._Y2B._MIN, B0MI)  // _MIN: Minimum Base Address
            CreateWordField (CRS, \_SB.PCI0._Y2B._MAX, B0MX)  // _MAX: Maximum Base Address
            CreateWordField (CRS, \_SB.PCI0._Y2B._LEN, B0LE)  // _LEN: Length
            CreateWordField (CRS, \_SB.PCI0._Y2C._MIN, B0IN)  // _MIN: Minimum Base Address
            CreateWordField (CRS, \_SB.PCI0._Y2C._MAX, B0IX)  // _MAX: Maximum Base Address
            CreateWordField (CRS, \_SB.PCI0._Y2C._LEN, B0IL)  // _LEN: Length
            CreateDWordField (CRS, \_SB.PCI0._Y2D._MIN, MIN5)  // _MIN: Minimum Base Address
            CreateDWordField (CRS, \_SB.PCI0._Y2D._MAX, MAX5)  // _MAX: Maximum Base Address
            CreateDWordField (CRS, \_SB.PCI0._Y2D._LEN, LEN5)  // _LEN: Length
            CreateDWordField (CRS, \_SB.PCI0._Y2E._MIN, MIN6)  // _MIN: Minimum Base Address
            CreateDWordField (CRS, \_SB.PCI0._Y2E._MAX, MAX6)  // _MAX: Maximum Base Address
            CreateDWordField (CRS, \_SB.PCI0._Y2E._LEN, LEN6)  // _LEN: Length
            CreateDWordField (CRS, \_SB.PCI0._Y2F._MIN, MIN7)  // _MIN: Minimum Base Address
            CreateDWordField (CRS, \_SB.PCI0._Y2F._MAX, MAX7)  // _MAX: Maximum Base Address
            CreateDWordField (CRS, \_SB.PCI0._Y2F._LEN, LEN7)  // _LEN: Length
            Name (CR64, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0000,             // Length
                    ,, _Y31)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x03AF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x03B0,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x03E0,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0918,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x03B0,             // Range Minimum
                    0x03BB,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x000C,             // Length
                    ,, _Y30, TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x03C0,             // Range Minimum
                    0x03DF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0020,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0000,             // Length
                    ,, _Y32, TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xF0000000,         // Range Minimum
                    0xFFFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x10000000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, _Y33, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y34, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y35, AddressRangeMemory, TypeStatic)
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000000000, // Range Minimum
                    0x0000000000000000, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000000, // Length
                    ,, _Y36, AddressRangeMemory, TypeStatic)
            })
            CreateWordField (CR64, \_SB.PCI0._Y30._MIN, _MN1)  // _MIN: Minimum Base Address
            CreateWordField (CR64, \_SB.PCI0._Y30._MAX, _MX1)  // _MAX: Maximum Base Address
            CreateWordField (CR64, \_SB.PCI0._Y30._LEN, _LN1)  // _LEN: Length
            CreateWordField (CR64, \_SB.PCI0._Y31._MIN, B6MI)  // _MIN: Minimum Base Address
            CreateWordField (CR64, \_SB.PCI0._Y31._MAX, B6MX)  // _MAX: Maximum Base Address
            CreateWordField (CR64, \_SB.PCI0._Y31._LEN, B6LE)  // _LEN: Length
            CreateWordField (CR64, \_SB.PCI0._Y32._MIN, B6IN)  // _MIN: Minimum Base Address
            CreateWordField (CR64, \_SB.PCI0._Y32._MAX, B6IX)  // _MAX: Maximum Base Address
            CreateWordField (CR64, \_SB.PCI0._Y32._LEN, B6IL)  // _LEN: Length
            CreateDWordField (CR64, \_SB.PCI0._Y33._MIN, _MN5)  // _MIN: Minimum Base Address
            CreateDWordField (CR64, \_SB.PCI0._Y33._MAX, _MX5)  // _MAX: Maximum Base Address
            CreateDWordField (CR64, \_SB.PCI0._Y33._LEN, _LN5)  // _LEN: Length
            CreateDWordField (CR64, \_SB.PCI0._Y34._MIN, _MN6)  // _MIN: Minimum Base Address
            CreateDWordField (CR64, \_SB.PCI0._Y34._MAX, _MX6)  // _MAX: Maximum Base Address
            CreateDWordField (CR64, \_SB.PCI0._Y34._LEN, _LN6)  // _LEN: Length
            CreateDWordField (CR64, \_SB.PCI0._Y35._MIN, _MN7)  // _MIN: Minimum Base Address
            CreateDWordField (CR64, \_SB.PCI0._Y35._MAX, _MX7)  // _MAX: Maximum Base Address
            CreateDWordField (CR64, \_SB.PCI0._Y35._LEN, _LN7)  // _LEN: Length
            CreateDWordField (CR64, \_SB.PCI0._Y36._MIN, MN8L)  // _MIN: Minimum Base Address
            CreateDWordField (CR64, (0xF8 + 0x04), MN8H)
            CreateDWordField (CR64, \_SB.PCI0._Y36._MAX, MX8L)  // _MAX: Maximum Base Address
            CreateDWordField (CR64, (0x0100 + 0x04), MX8H)
            CreateDWordField (CR64, \_SB.PCI0._Y36._LEN, LN8L)  // _LEN: Length
            CreateDWordField (CR64, (0x0110 + 0x04), LN8H)
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = MG1L /* \MG1L */
                If (Local0)
                {
                    MIN5 = MG1B /* \MG1B */
                    LEN5 = MG1L /* \MG1L */
                    MAX5 = (MIN5 + Local0--)
                }

                MIN6 = MG2B /* \MG2B */
                LEN6 = MG2L /* \MG2L */
                Local0 = MG2L /* \MG2L */
                MAX6 = (MIN6 + Local0--)
                MIN7 = MG3B /* \MG3B */
                LEN7 = MG3L /* \MG3L */
                Local0 = MG3L /* \MG3L */
                MAX7 = (MIN7 + Local0--)
                If ((VGAR == Zero))
                {
                    Noop
                }
                Else
                {
                    MIN1 = Zero
                    MAX1 = Zero
                    LEN1 = Zero
                }

                Local0 = SEB0 /* \SEB0 */
                B0MI = Local0
                Local0 = SUB0 /* \SUB0 */
                B0MX = Local0
                Local0 = (SUB0 - SEB0) /* \SEB0 */
                B0LE = (Local0 + One)
                B0IN = IOB0 /* \IOB0 */
                B0IL = IOL0 /* \IOL0 */
                Local0 = IOL0 /* \IOL0 */
                B0IX = (B0IN + Local0--)
                _MN5 = MIN5 /* \_SB_.PCI0.MIN5 */
                _LN5 = LEN5 /* \_SB_.PCI0.LEN5 */
                _MX5 = MAX5 /* \_SB_.PCI0.MAX5 */
                _MN6 = MIN6 /* \_SB_.PCI0.MIN6 */
                _LN6 = LEN6 /* \_SB_.PCI0.LEN6 */
                _MX6 = MAX6 /* \_SB_.PCI0.MAX6 */
                _MN7 = MIN7 /* \_SB_.PCI0.MIN7 */
                _LN7 = LEN7 /* \_SB_.PCI0.LEN7 */
                _MX7 = MAX7 /* \_SB_.PCI0.MAX7 */
                MN8L = M4BL /* \M4BL */
                MN8H = M4BH /* \M4BH */
                Local0 = M4LL /* \M4LL */
                MX8L = Local0--
                If ((M4LL == Zero))
                {
                    Local0 = M4LH /* \M4LH */
                    MX8H = Local0--
                }
                Else
                {
                    MX8H = M4LH /* \M4LH */
                }

                If ((M4LL < M4BL))
                {
                    Local0 = M4LH /* \M4LH */
                    LN8H = (Local0-- - M4BH) /* \M4BH */
                    Local0 = M4LL /* \M4LL */
                    LN8L = (Local0++ + (Ones - M4BL))
                }
                Else
                {
                    LN8L = (M4LL - M4BL) /* \M4BL */
                    LN8H = (M4LH - M4BH) /* \M4BH */
                }

                If ((VGAR == Zero))
                {
                    Noop
                }
                Else
                {
                    _MN1 = Zero
                    _MX1 = Zero
                    _LN1 = Zero
                }

                Local0 = SEB0 /* \SEB0 */
                B6MI = Local0
                Local0 = SUB0 /* \SUB0 */
                B6MX = Local0
                Local0 = (SUB0 - SEB0) /* \SEB0 */
                B6LE = (Local0 + One)
                B6IN = IOB0 /* \IOB0 */
                B6IL = IOL0 /* \IOL0 */
                Local0 = IOL0 /* \IOL0 */
                B6IX = (B6IN + Local0--)
                If (MR64)
                {
                    If ((OSYS () >= 0x15))
                    {
                        Return (CR64) /* \_SB_.PCI0.CR64 */
                    }
                    Else
                    {
                        Return (CRS) /* \_SB_.PCI0.CRS_ */
                    }
                }
                Else
                {
                    Return (CRS) /* \_SB_.PCI0.CRS_ */
                }
            }
        }
    }

    Name (WOTB, Zero)
    Name (WSSB, Zero)
    Name (WAXB, Zero)
    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        DBG8 = Arg0
        PTS (Arg0)
        WAKP [Zero] = Zero
        WAKP [One] = Zero
        If (((Arg0 == 0x04) && (OSFL () == 0x02)))
        {
            Sleep (0x0BB8)
        }

        WSSB = ASSB /* \ASSB */
        WOTB = AOTB /* \AOTB */
        WAXB = AAXB /* \AAXB */
        ASSB = Arg0
        AOTB = OSFL ()
        OSTP = OSYS ()
        AAXB = Zero
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        DBG8 = (Arg0 << 0x04)
        WAK (Arg0)
        If (ASSB)
        {
            ASSB = WSSB /* \WSSB */
            AOTB = WOTB /* \WOTB */
            AAXB = WAXB /* \WAXB */
        }

        If (DerefOf (WAKP [Zero]))
        {
            WAKP [One] = Zero
        }
        Else
        {
            WAKP [One] = Arg0
        }

        Return (WAKP) /* \WAKP */
    }

    Scope (_SB.PCI0)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            OSTY = 0x10
            If (CondRefOf (_OSI, Local1))
            {
                If (_OSI ("Windows 2000"))
                {
                    OSTY = 0x12
                }
                ElseIf (_OSI ("Windows 2001"))
                {
                    OSTY = 0x13
                }
                ElseIf (_OSI ("Windows 2001 SP1"))
                {
                    OSTY = 0x13
                }
                ElseIf (_OSI ("Windows 2001 SP2"))
                {
                    OSTY = 0x13
                }
                ElseIf (_OSI ("Windows 2001.1"))
                {
                    OSTY = 0x14
                }
                ElseIf (_OSI ("Windows 2001.1 SP1"))
                {
                    OSTY = 0x14
                }
                ElseIf (_OSI ("Windows 2006"))
                {
                    OSTY = 0x15
                }
            }
            ElseIf (MCTH (_OS, "Microsoft Windows NT"))
            {
                Local0 = 0x12
            }
            Else
            {
                If (MCTH (_OS, "Microsoft WindowsME: Millennium Edition"))
                {
                    OSTY = 0x11
                }

                If (MCTH (_OS, "Linux"))
                {
                    OSTY = One
                }
            }

            If ((OSTY > 0x13))
            {
                PWDE = One
                DPPF = Zero
            }
        }
    }

    Scope (_SB.PCI0)
    {
        OperationRegion (TVID, SystemMemory, 0xFED40F00, 0x02)
        Field (TVID, WordAcc, NoLock, Preserve)
        {
            VIDT,   16
        }
    }

    Device (_SB.PCI0.SBRG.TPM)
    {
        Name (_HID, EisaId ("PNP0C31"))  // _HID: Hardware ID
        Name (_CID, EisaId ("PNP0C31"))  // _CID: Compatible ID
        Name (_UID, One)  // _UID: Unique ID
        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            Memory32Fixed (ReadWrite,
                0xFED40000,         // Address Base
                0x00005000,         // Address Length
                )
        })
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (TPMF)
            {
                If ((VIDT != 0x8086))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Device (_SB.PCI0.ITPM)
    {
        Name (_HID, "INTC0102")  // _HID: Hardware ID
        Name (_CID, EisaId ("PNP0C31"))  // _CID: Compatible ID
        Name (_UID, One)  // _UID: Unique ID
        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            Memory32Fixed (ReadWrite,
                0xFED40000,         // Address Base
                0x00005000,         // Address Length
                )
        })
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (TPMF)
            {
                If ((VIDT == 0x8086))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Return (Zero)
        }
    }

    Scope (_SB.PCI0.SBRG.TPM)
    {
        Name (TAAX, Zero)
        OperationRegion (MIPT, SystemIO, SMIT, One)
        Field (MIPT, ByteAcc, NoLock, Preserve)
        {
            PSMI,   8
        }

        Name (PPI1, Package (0x02)
        {
            Zero, 
            Zero
        })
        Name (PPI2, Package (0x03)
        {
            Zero, 
            Zero, 
            Zero
        })
        Name (MBUF, Buffer (0x04){})
        CreateByteField (MBUF, Zero, BUF0)
        CreateByteField (MBUF, One, BUF1)
        CreateByteField (MBUF, 0x02, BUF2)
        CreateByteField (MBUF, 0x03, BUF3)
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg0 == ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */))
            {
                Name (TTT0, Zero)
                TTT0 = ToInteger (Arg2)
                If ((TTT0 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x7F                                             // .
                    })
                }
                ElseIf ((TTT0 == One))
                {
                    Return ("1.0")
                }
                ElseIf ((TTT0 == 0x02))
                {
                    TAAX = AAXB /* \AAXB */
                    BUF0 = CMRQ /* \CMRQ */
                    BUF1 = 0xF0
                    BUF2 = ToInteger (DerefOf (Arg3 [Zero]))
                    BUF3 = One
                    AAXB = MBUF /* \_SB_.PCI0.SBRG.TPM_.MBUF */
                    PSMI = 0xFB
                    Sleep (0x03E8)
                    AAXB = TAAX /* \_SB_.PCI0.SBRG.TPM_.TAAX */
                    Return (Zero)
                }
                ElseIf ((TTT0 == 0x03))
                {
                    TAAX = AAXB /* \AAXB */
                    BUF0 = CMRQ /* \CMRQ */
                    BUF1 = 0x0F
                    BUF2 = Zero
                    BUF3 = Zero
                    AAXB = MBUF /* \_SB_.PCI0.SBRG.TPM_.MBUF */
                    PSMI = 0xFB
                    Sleep (0x03E8)
                    MBUF = AAXB /* \AAXB */
                    Local3 = BUF2 /* \_SB_.PCI0.SBRG.TPM_.BUF2 */
                    PPI1 [Zero] = Zero
                    PPI1 [One] = Local3
                    AAXB = TAAX /* \_SB_.PCI0.SBRG.TPM_.TAAX */
                    Return (PPI1) /* \_SB_.PCI0.SBRG.TPM_.PPI1 */
                }
                ElseIf ((TTT0 == 0x04))
                {
                    Return (0x02)
                }
                ElseIf ((TTT0 == 0x05))
                {
                    TAAX = AAXB /* \AAXB */
                    BUF0 = CMRQ /* \CMRQ */
                    BUF1 = 0xF0
                    BUF2 = Zero
                    BUF3 = Zero
                    AAXB = MBUF /* \_SB_.PCI0.SBRG.TPM_.MBUF */
                    PSMI = 0xFB
                    Sleep (0x03E8)
                    MBUF = AAXB /* \AAXB */
                    Local3 = (BUF2 >> 0x04)
                    BUF0 = CMER /* \CMER */
                    BUF1 = 0xFF
                    BUF2 = Zero
                    BUF3 = Zero
                    AAXB = MBUF /* \_SB_.PCI0.SBRG.TPM_.MBUF */
                    PSMI = 0xFB
                    Sleep (0x03E8)
                    MBUF = AAXB /* \AAXB */
                    Local6 = BUF2 /* \_SB_.PCI0.SBRG.TPM_.BUF2 */
                    Local4 = (CMER + One)
                    BUF0 = Local4
                    BUF1 = 0xFF
                    BUF2 = Zero
                    BUF3 = Zero
                    AAXB = MBUF /* \_SB_.PCI0.SBRG.TPM_.MBUF */
                    PSMI = 0xFB
                    Sleep (0x03E8)
                    MBUF = AAXB /* \AAXB */
                    Local7 = BUF2 /* \_SB_.PCI0.SBRG.TPM_.BUF2 */
                    Local2 = (Local7 * 0x0100)
                    Local2 += Local6
                    PPI2 [Zero] = Zero
                    PPI2 [One] = Local3
                    If ((Local2 == 0xFFF0))
                    {
                        PPI2 [0x02] = 0xFFFFFFF0
                    }
                    ElseIf ((Local2 == 0xFFF1))
                    {
                        PPI2 [0x02] = 0xFFFFFFF1
                    }
                    Else
                    {
                        PPI2 [0x02] = Local2
                    }

                    AAXB = TAAX /* \_SB_.PCI0.SBRG.TPM_.TAAX */
                    Return (PPI2) /* \_SB_.PCI0.SBRG.TPM_.PPI2 */
                }
                ElseIf ((TTT0 == 0x06))
                {
                    Return (Zero)
                }
                Else
                {
                }
            }
            ElseIf ((Arg0 == ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d") /* TPM Memory Clear */))
            {
                Name (TTT1, Zero)
                TTT1 = ToInteger (Arg2)
                If ((TTT1 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }
                ElseIf ((TTT1 == One))
                {
                    TAAX = AAXB /* \AAXB */
                    BUF0 = CMOR /* \CMOR */
                    BUF1 = 0xFE
                    BUF2 = ToInteger (DerefOf (Arg3 [Zero]))
                    BUF3 = One
                    AAXB = MBUF /* \_SB_.PCI0.SBRG.TPM_.MBUF */
                    PSMI = 0xFB
                    Sleep (0x0BB8)
                    AAXB = TAAX /* \_SB_.PCI0.SBRG.TPM_.TAAX */
                    Return (Zero)
                }
                Else
                {
                }
            }

            Return (Buffer (One)
            {
                 0x00                                             // .
            })
        }
    }

    Scope (_SB.PCI0.ITPM)
    {
        Name (TAAX, Zero)
        OperationRegion (MIPT, SystemIO, SMIT, One)
        Field (MIPT, ByteAcc, NoLock, Preserve)
        {
            PSMI,   8
        }

        Name (PPI1, Package (0x02)
        {
            Zero, 
            Zero
        })
        Name (PPI2, Package (0x03)
        {
            Zero, 
            Zero, 
            Zero
        })
        Name (MBUF, Buffer (0x04){})
        CreateByteField (MBUF, Zero, BUF0)
        CreateByteField (MBUF, One, BUF1)
        CreateByteField (MBUF, 0x02, BUF2)
        CreateByteField (MBUF, 0x03, BUF3)
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg0 == ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */))
            {
                Name (TTT0, Zero)
                TTT0 = ToInteger (Arg2)
                If ((TTT0 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x7F                                             // .
                    })
                }
                ElseIf ((TTT0 == One))
                {
                    Return ("1.0")
                }
                ElseIf ((TTT0 == 0x02))
                {
                    TAAX = AAXB /* \AAXB */
                    BUF0 = CMRQ /* \CMRQ */
                    BUF1 = 0xF0
                    BUF2 = ToInteger (DerefOf (Arg3 [Zero]))
                    BUF3 = One
                    AAXB = MBUF /* \_SB_.PCI0.ITPM.MBUF */
                    PSMI = 0xFB
                    Sleep (0x03E8)
                    AAXB = TAAX /* \_SB_.PCI0.ITPM.TAAX */
                    Return (Zero)
                }
                ElseIf ((TTT0 == 0x03))
                {
                    TAAX = AAXB /* \AAXB */
                    BUF0 = CMRQ /* \CMRQ */
                    BUF1 = 0x0F
                    BUF2 = Zero
                    BUF3 = Zero
                    AAXB = MBUF /* \_SB_.PCI0.ITPM.MBUF */
                    PSMI = 0xFB
                    Sleep (0x03E8)
                    MBUF = AAXB /* \AAXB */
                    Local3 = BUF2 /* \_SB_.PCI0.ITPM.BUF2 */
                    PPI1 [Zero] = Zero
                    PPI1 [One] = Local3
                    AAXB = TAAX /* \_SB_.PCI0.ITPM.TAAX */
                    Return (PPI1) /* \_SB_.PCI0.ITPM.PPI1 */
                }
                ElseIf ((TTT0 == 0x04))
                {
                    Return (0x02)
                }
                ElseIf ((TTT0 == 0x05))
                {
                    TAAX = AAXB /* \AAXB */
                    BUF0 = CMRQ /* \CMRQ */
                    BUF1 = 0xF0
                    BUF2 = Zero
                    BUF3 = Zero
                    AAXB = MBUF /* \_SB_.PCI0.ITPM.MBUF */
                    PSMI = 0xFB
                    Sleep (0x03E8)
                    MBUF = AAXB /* \AAXB */
                    Local3 = (BUF2 >> 0x04)
                    BUF0 = CMER /* \CMER */
                    BUF1 = 0xFF
                    BUF2 = Zero
                    BUF3 = Zero
                    AAXB = MBUF /* \_SB_.PCI0.ITPM.MBUF */
                    PSMI = 0xFB
                    Sleep (0x03E8)
                    MBUF = AAXB /* \AAXB */
                    Local6 = BUF2 /* \_SB_.PCI0.ITPM.BUF2 */
                    Local4 = (CMER + One)
                    BUF0 = Local4
                    BUF1 = 0xFF
                    BUF2 = Zero
                    BUF3 = Zero
                    AAXB = MBUF /* \_SB_.PCI0.ITPM.MBUF */
                    PSMI = 0xFB
                    Sleep (0x03E8)
                    MBUF = AAXB /* \AAXB */
                    Local7 = BUF2 /* \_SB_.PCI0.ITPM.BUF2 */
                    Local2 = (Local7 * 0x0100)
                    Local2 += Local6
                    PPI2 [Zero] = Zero
                    PPI2 [One] = Local3
                    If ((Local2 == 0xFFF0))
                    {
                        PPI2 [0x02] = 0xFFFFFFF0
                    }
                    ElseIf ((Local2 == 0xFFF1))
                    {
                        PPI2 [0x02] = 0xFFFFFFF1
                    }
                    Else
                    {
                        PPI2 [0x02] = Local2
                    }

                    AAXB = TAAX /* \_SB_.PCI0.ITPM.TAAX */
                    Return (PPI2) /* \_SB_.PCI0.ITPM.PPI2 */
                }
                ElseIf ((TTT0 == 0x06))
                {
                    Return (Zero)
                }
                Else
                {
                }
            }
            ElseIf ((Arg0 == ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d") /* TPM Memory Clear */))
            {
                Name (TTT1, Zero)
                TTT1 = ToInteger (Arg2)
                If ((TTT1 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }
                ElseIf ((TTT1 == One))
                {
                    TAAX = AAXB /* \AAXB */
                    BUF0 = CMOR /* \CMOR */
                    BUF1 = 0xFE
                    BUF2 = ToInteger (DerefOf (Arg3 [Zero]))
                    BUF3 = One
                    AAXB = MBUF /* \_SB_.PCI0.ITPM.MBUF */
                    PSMI = 0xFB
                    Sleep (0x0BB8)
                    AAXB = TAAX /* \_SB_.PCI0.ITPM.TAAX */
                    Return (Zero)
                }
                Else
                {
                }
            }

            Return (Buffer (One)
            {
                 0x00                                             // .
            })
        }
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    If (SS1)
    {
        Name (_S1, Package (0x04)  // _S1_: S1 System State
        {
            One, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS4)
    {
        Name (_S4, Package (0x04)  // _S4_: S4 System State
        {
            0x04, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x05, 
        Zero, 
        Zero, 
        Zero
    })
    Method (PTS, 1, NotSerialized)
    {
        If (Arg0)
        {
            \_SB.PCI0.SBRG.SIOS (Arg0)
            NPTS (Arg0)
            NB2S (Arg0)
            SPTS (Arg0)
            \_SB.PCI0.SBRG.EPTS (Arg0)
        }
    }

    Method (WAK, 1, NotSerialized)
    {
        \_SB.PCI0.SBRG.SIOW (Arg0)
        NWAK (Arg0)
        NB2W (Arg0)
        SWAK (Arg0)
        \_SB.PCI0.SBRG.EWAK (Arg0)
        \_SB.PCI0.SBRG.BMCW (Arg0)
    }
}

