/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20181213 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of dsdt.dat, Wed Jan 23 00:01:27 2019
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x00019AF2 (105202)
 *     Revision         0x02
 *     Checksum         0x60
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "CS-02   "
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "DSDT", 2, "LENOVO", "CS-02   ", 0x00000001)
{
    /*
     * iASL Warning: There were 2 external control methods found during
     * disassembly, but only 1 was resolved (1 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_PR_.CPU0._PPC, IntObj)
    External (_SB_.DPTF, UnknownObj)
    External (_SB_.TCHG, UnknownObj)
    External (_SB_.TPM_.PTS_, MethodObj)    // 1 Arguments
    External (_SB_.UBTC, UnknownObj)
    External (CFGD, IntObj)
    External (NDN3, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (PDC0, IntObj)
    External (PDC1, IntObj)
    External (PDC2, IntObj)
    External (PDC3, IntObj)

    Method (ADBG, 1, Serialized)
    {
        Return (Zero)
    }

    Name (PMBS, 0x0400)
    Name (SMIP, 0xB2)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (PMCB, 0xFED03000)
    Name (PMCP, 0xFED030A0)
    Name (PUNB, 0xFED06000)
    Name (IBAS, 0xFED08000)
    Name (SRCB, 0xFED1C000)
    Name (HPTB, 0xFED00000)
    Name (FMBL, One)
    Name (FDTP, 0x02)
    Name (RCOM, 0xFED98000)
    OperationRegion (GNVS, SystemMemory, 0x7A430000, 0x036A)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16, 
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
        SCIF,   8, 
        PRM2,   8, 
        PRM3,   8, 
        LCKF,   8, 
        PRM4,   8, 
        PRM5,   8, 
        P80D,   32, 
        LIDS,   8, 
        PWRS,   8, 
        DBGS,   8, 
        THOF,   8, 
        ACT1,   8, 
        ACTT,   8, 
        PSVT,   8, 
        TC1V,   8, 
        TC2V,   8, 
        TSPV,   8, 
        CRTT,   8, 
        DTSE,   8, 
        DTS1,   8, 
        DTS2,   8, 
        DTSF,   8, 
        BNUM,   8, 
        B0SC,   8, 
        B1SC,   8, 
        B2SC,   8, 
        B0SS,   8, 
        B1SS,   8, 
        B2SS,   8, 
        REVS,   8, 
        OSID,   8, 
        ADED,   8, 
        APIC,   8, 
        MPEN,   8, 
        PCP0,   8, 
        PCP1,   8, 
        PPCM,   8, 
        PPMF,   32, 
        Offset (0x32), 
        NATP,   8, 
        CMAP,   8, 
        CMBP,   8, 
        LPTP,   8, 
        FDCP,   8, 
        CMCP,   8, 
        CIRP,   8, 
        W381,   8, 
        NPCE,   8, 
        Offset (0x3C), 
        IGDS,   8, 
        TLST,   8, 
        CADL,   8, 
        PADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        SSTE,   16, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        KSV0,   32, 
        KSV1,   8, 
        Offset (0x67), 
        BLCS,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
        Offset (0x6E), 
        EMAE,   8, 
        EMAP,   16, 
        EMAL,   16, 
        Offset (0x74), 
        MEFE,   8, 
        DSTS,   8, 
        Offset (0x78), 
        TPMP,   8, 
        TPME,   8, 
        MORD,   8, 
        TCGP,   8, 
        PPRP,   32, 
        PPRQ,   8, 
        LPPR,   8, 
        GTF0,   56, 
        GTF2,   56, 
        IDEM,   8, 
        GTF1,   56, 
        Offset (0xAA), 
        ASLB,   32, 
        IBTT,   8, 
        IPAT,   8, 
        ITVF,   8, 
        ITVM,   8, 
        IPSC,   8, 
        IBLC,   8, 
        IBIA,   8, 
        ISSC,   8, 
        I409,   8, 
        I509,   8, 
        I609,   8, 
        I709,   8, 
        IDMM,   8, 
        IDMS,   8, 
        IF1E,   8, 
        HVCO,   8, 
        NXD1,   32, 
        NXD2,   32, 
        NXD3,   32, 
        NXD4,   32, 
        NXD5,   32, 
        NXD6,   32, 
        NXD7,   32, 
        NXD8,   32, 
        GSMI,   8, 
        PAVP,   8, 
        Offset (0xE1), 
        OSCC,   8, 
        NEXP,   8, 
        Offset (0xEB), 
        DSEN,   8, 
        ECON,   8, 
        GPIC,   8, 
        CTYP,   8, 
        L01C,   8, 
        VFN0,   8, 
        VFN1,   8, 
        Offset (0x100), 
        NVGA,   32, 
        NVHA,   32, 
        AMDA,   32, 
        DID6,   32, 
        DID7,   32, 
        DID8,   32, 
        Offset (0x147), 
        OTG0,   32, 
        OTG1,   32, 
        LPE0,   32, 
        LPE1,   32, 
        LPE2,   32, 
        ACST,   8, 
        BTST,   8, 
        PFLV,   8, 
        BREV,   8, 
        AOAC,   8, 
        XHCI,   8, 
        PMEN,   8, 
        USEL,   8, 
        ISPA,   32, 
        ISPD,   8, 
        D10A,   32, 
        D10L,   32, 
        D11A,   32, 
        D11L,   32, 
        P10A,   32, 
        P10L,   32, 
        P11A,   32, 
        P11L,   32, 
        P20A,   32, 
        P20L,   32, 
        P21A,   32, 
        P21L,   32, 
        U10A,   32, 
        U10L,   32, 
        U11A,   32, 
        U11L,   32, 
        U20A,   32, 
        U20L,   32, 
        U21A,   32, 
        U21L,   32, 
        SP0A,   32, 
        SP0L,   32, 
        SP1A,   32, 
        SP1L,   32, 
        S20A,   32, 
        S20L,   32, 
        S21A,   32, 
        S21L,   32, 
        S30A,   32, 
        S30L,   32, 
        S31A,   32, 
        S31L,   32, 
        D20A,   32, 
        D20L,   32, 
        D21A,   32, 
        D21L,   32, 
        I10A,   32, 
        I10L,   32, 
        I11A,   32, 
        I11L,   32, 
        I20A,   32, 
        I20L,   32, 
        I21A,   32, 
        I21L,   32, 
        I30A,   32, 
        I30L,   32, 
        I31A,   32, 
        I31L,   32, 
        I40A,   32, 
        I40L,   32, 
        I41A,   32, 
        I41L,   32, 
        I50A,   32, 
        I50L,   32, 
        I51A,   32, 
        I51L,   32, 
        I60A,   32, 
        I60L,   32, 
        I61A,   32, 
        I61L,   32, 
        I70A,   32, 
        I70L,   32, 
        I71A,   32, 
        I71L,   32, 
        EM0A,   32, 
        EM0L,   32, 
        EM1A,   32, 
        EM1L,   32, 
        SI0A,   32, 
        SI0L,   32, 
        SI1A,   32, 
        SI1L,   32, 
        SD0A,   32, 
        SD0L,   32, 
        SD1A,   32, 
        SD1L,   32, 
        ISH0,   32, 
        ISH1,   32, 
        Offset (0x2A4), 
        Offset (0x2A8), 
        DPTE,   8, 
        THM0,   8, 
        THM1,   8, 
        THM2,   8, 
        THM3,   8, 
        THM4,   8, 
        CHGR,   8, 
        DDSP,   8, 
        DSOC,   8, 
        DPSR,   8, 
        DPCT,   32, 
        DPPT,   32, 
        DGC0,   32, 
        DGP0,   32, 
        DGC1,   32, 
        DGP1,   32, 
        DGC2,   32, 
        DGP2,   32, 
        DGC3,   32, 
        DGP3,   32, 
        DGC4,   32, 
        DGP4,   32, 
        DLPM,   8, 
        DSC0,   32, 
        DSC1,   32, 
        DSC2,   32, 
        DSC3,   32, 
        DSC4,   32, 
        DDBG,   8, 
        LPOE,   32, 
        LPPS,   32, 
        LPST,   32, 
        LPPC,   32, 
        LPPF,   32, 
        DPME,   8, 
        BCSL,   8, 
        RSVD,   8, 
        BTHS,   8, 
        TPMA,   32, 
        TPML,   32, 
        PSSD,   8, 
        ITSA,   8, 
        S0IX,   8, 
        SDMD,   8, 
        EMVR,   8, 
        BMBD,   32, 
        FSAS,   8, 
        BDID,   8, 
        FBID,   8, 
        OTGM,   8, 
        STEP,   8, 
        SOCS,   8, 
        AMTE,   8, 
        ABC0,   8, 
        ABC1,   8, 
        ABC2,   8, 
        ABC3,   8, 
        ABC4,   8, 
        ABC5,   8, 
        DPHL,   8, 
        DPLL,   8, 
        DBAT,   8, 
        DTPM,   8, 
        RSV,    8, 
        PSDE,   8, 
        RSD2,   8, 
        MODS,   8, 
        WWEN,   8, 
        WWCR,   32, 
        WWPS,   32, 
        ABS0,   8, 
        ABS1,   8, 
        ABS2,   8, 
        ABS3,   8, 
        ABS4,   8, 
        ABS5,   8, 
        RCAM,   8, 
        ECAM,   8, 
        AUCD,   8, 
        BTHM,   8, 
        PMID,   8, 
        MPNL,   8, 
        VTSP,   16, 
        Offset (0x34E), 
        Offset (0x34F), 
        FMDM,   8, 
        SDVL,   8, 
        MLSD,   8, 
        SCDD,   8, 
        HPME,   8, 
        GPSD,   8, 
        PAVB,   32, 
        PAVL,   32, 
        NUSB,   8, 
        DSFG,   8, 
        DAMT,   8, 
        MODM,   8, 
        HPTE,   8, 
        UBCB,   32, 
        PSSE,   8, 
        ISPE,   8, 
        SKUT,   8, 
        PVTT,   8
    }

    Scope (_SB)
    {
        Name (PR00, Package (0x17)
        {
            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x000AFFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x000BFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0010FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0011FFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                0x03, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                0x03, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR00, Package (0x17)
        {
            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x000AFFFF, 
                Zero, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x000BFFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0010FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0011FFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                Zero, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                0x03, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                0x03, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR04, Package (0x04)
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
        Name (AR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,10,11,12,14,15}
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
            Name (_ADR, Zero)  // _ADR: Address
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

            Device (CHVC)
            {
                Name (_ADR, Zero)  // _ADR: Address
                OperationRegion (HBUS, PCI_Config, Zero, 0xFF)
                Field (HBUS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xD0), 
                    SMCR,   32, 
                    SMDR,   32, 
                    MCRX,   32, 
                    MCXX,   32
                }

                Method (RMBR, 2, Serialized)
                {
                    Local0 = ((Arg0 << 0x10) | (Arg1 << 0x08))
                    SMCR = (0x100000F0 | Local0)
                    Return (SMDR) /* \_SB_.PCI0.CHVC.SMDR */
                }

                Method (WMBR, 3, Serialized)
                {
                    SMDR = Arg2
                    Local0 = ((Arg0 << 0x10) | (Arg1 << 0x08))
                    SMCR = (0x110000F0 | Local0)
                }

                Method (RMBX, 6, Serialized)
                {
                    Local4 = (Arg3 & 0x07)
                    Local4 = (Local4 << 0x08)
                    Local5 = ((Arg4 << 0x03) | Arg5)
                    Local5 &= 0xFF
                    MCXX = (Local4 | Local5)
                    Local3 = (Arg1 & 0xFFFFFF00)
                    MCRX = Local3
                    Local0 = (Arg1 & 0xFF)
                    Local1 = ((Arg2 << 0x18) | (Arg0 << 0x10))
                    Local1 &= 0xFFFF0000
                    Local2 = ((Local0 << 0x08) | 0xF0)
                    Local2 &= 0xFFFF
                    SMCR = (Local1 | Local2)
                    Return (SMDR) /* \_SB_.PCI0.CHVC.SMDR */
                }

                Method (WMBX, 7, Serialized)
                {
                    Local4 = (Arg4 & 0x07)
                    Local4 = (Local4 << 0x08)
                    Local5 = ((Arg5 << 0x03) | Arg6)
                    Local5 &= 0xFF
                    MCXX = (Local4 | Local5)
                    Local3 = (Arg1 & 0xFFFFFF00)
                    MCRX = Local3
                    SMDR = Arg2
                    Local0 = (Arg1 & 0xFF)
                    Local1 = ((Arg3 << 0x18) | (Arg0 << 0x10))
                    Local1 &= 0xFFFF0000
                    Local2 = ((Local0 << 0x08) | 0xF0)
                    Local2 &= 0xFFFF
                    SMCR = (Local1 | Local2)
                }
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (FTSZ, 0x00100000)
                CreateDWordField (RES0, \_SB.PCI0._Y00._MIN, LPMN)  // _MIN: Minimum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y00._MAX, LPMX)  // _MAX: Maximum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y00._LEN, LPLN)  // _LEN: Length
                If (((LPE2 != Zero) && (LPED == Zero)))
                {
                    LPMN = LPE2 /* \LPE2 */
                    LPMX = (LPMN + LPLN) /* \_SB_.PCI0._CRS.LPLN */
                    LPMX -= One
                }
                Else
                {
                    LPMN = Zero
                    LPMX = Zero
                    LPLN = Zero
                }

                CreateDWordField (RES0, \_SB.PCI0._Y01._MIN, ISMN)  // _MIN: Minimum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y01._MAX, ISMX)  // _MAX: Maximum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y01._LEN, ISLN)  // _LEN: Length
                If ((ISPD == One))
                {
                    ISMN = ISPA /* \ISPA */
                    ISMX = (ISMN + ISLN) /* \_SB_.PCI0._CRS.ISLN */
                    ISMX -= One
                }
                Else
                {
                    ISMN = Zero
                    ISMX = Zero
                    ISLN = Zero
                }

                CreateDWordField (RES0, \_SB.PCI0._Y02._MIN, M1MN)  // _MIN: Minimum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y02._MAX, M1MX)  // _MAX: Maximum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y02._LEN, M1LN)  // _LEN: Length
                M1MN = (BMBD & 0xFF000000)
                M1LN = ((M1MX - M1MN) + One)
                CreateDWordField (RES0, \_SB.PCI0._Y03._MIN, GSMN)  // _MIN: Minimum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y03._MAX, GSMX)  // _MAX: Maximum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y03._LEN, GSLN)  // _LEN: Length
                GSMN = ^GFX0.GSTM /* \_SB_.PCI0.GFX0.GSTM */
                GSLN = (^GFX0.GUMA << 0x19)
                GSMX = (GSMN + GSLN) /* \_SB_.PCI0._CRS.GSLN */
                GSMX -= One
                Return (RES0) /* \_SB_.PCI0.RES0 */
            }

            Name (RES0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, )
                IO (Decode16,
                    0x0070,             // Range Minimum
                    0x0077,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x006F,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0070,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0078,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0C80,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0xFFFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0xF300,             // Length
                    ,, , TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x20000000,         // Range Minimum
                    0x201FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00200000,         // Length
                    ,, _Y00, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x7A000000,         // Range Minimum
                    0x7A3FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00400000,         // Length
                    ,, _Y01, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x7C000000,         // Range Minimum
                    0x7FFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x04000000,         // Length
                    ,, _Y03, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x80000000,         // Range Minimum
                    0xDFFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x60000000,         // Length
                    ,, _Y02, AddressRangeMemory, TypeStatic)
            })
            Name (GUID, ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */)
            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Local0 = Arg3
                CreateDWordField (Local0, Zero, CDW1)
                CreateDWordField (Local0, 0x04, CDW2)
                CreateDWordField (Local0, 0x08, CDW3)
                If ((Arg0 == GUID))
                {
                    SUPP = CDW2 /* \_SB_.PCI0._OSC.CDW2 */
                    CTRL = CDW3 /* \_SB_.PCI0._OSC.CDW3 */
                    If (~(CDW1 & One))
                    {
                        If ((CTRL & 0x02))
                        {
                            NHPG ()
                        }

                        If ((CTRL & 0x04))
                        {
                            NPME ()
                        }
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
                    OSCC = CTRL /* \_SB_.PCI0.CTRL */
                    Return (Local0)
                }
                Else
                {
                    CDW1 |= 0x04
                    Return (Local0)
                }
            }

            Device (LPCB)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Scope (\_SB)
                {
                    OperationRegion (ILBR, SystemMemory, IBAS, 0x8C)
                    Field (ILBR, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x08), 
                        PARC,   8, 
                        PBRC,   8, 
                        PCRC,   8, 
                        PDRC,   8, 
                        PERC,   8, 
                        PFRC,   8, 
                        PGRC,   8, 
                        PHRC,   8, 
                        Offset (0x88), 
                            ,   4, 
                        UI4E,   1
                    }

                    Device (LNKA)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PARC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSA) /* \_SB_.PRSA */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLA, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLA, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PARC & 0x0F))
                            Return (RTLA) /* \_SB_.LNKA._CRS.RTLA */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PARC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PARC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKB)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x02)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PBRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSB) /* \_SB_.PRSB */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLB, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLB, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PBRC & 0x0F))
                            Return (RTLB) /* \_SB_.LNKB._CRS.RTLB */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PBRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PBRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKC)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x03)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PCRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSC) /* \_SB_.PRSC */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLC, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLC, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PCRC & 0x0F))
                            Return (RTLC) /* \_SB_.LNKC._CRS.RTLC */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PCRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PCRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKD)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x04)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PDRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSD) /* \_SB_.PRSD */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLD, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLD, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PDRC & 0x0F))
                            Return (RTLD) /* \_SB_.LNKD._CRS.RTLD */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PDRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PDRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKE)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x05)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PERC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSE) /* \_SB_.PRSE */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLE, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLE, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PERC & 0x0F))
                            Return (RTLE) /* \_SB_.LNKE._CRS.RTLE */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PERC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PERC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKF)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x06)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PFRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSF) /* \_SB_.PRSF */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLF, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLF, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PFRC & 0x0F))
                            Return (RTLF) /* \_SB_.LNKF._CRS.RTLF */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PFRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PFRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKG)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x07)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PGRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSG) /* \_SB_.PRSG */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLG, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLG, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PGRC & 0x0F))
                            Return (RTLG) /* \_SB_.LNKG._CRS.RTLG */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PGRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PGRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKH)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x08)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PHRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSH) /* \_SB_.PRSH */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLH, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLH, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PHRC & 0x0F))
                            Return (RTLH) /* \_SB_.LNKH._CRS.RTLH */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PHRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PHRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }
                }

                OperationRegion (LPC0, PCI_Config, Zero, 0xC0)
                Field (LPC0, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    SRID,   8, 
                    Offset (0x80), 
                    C1EN,   1, 
                    Offset (0x84)
                }

                Device (FWHD)
                {
                    Name (_HID, EisaId ("INT0800") /* Intel 82802 Firmware Hub Device */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        Memory32Fixed (ReadOnly,
                            0xFF000000,         // Address Base
                            0x01000000,         // Address Length
                            )
                    })
                }

                Scope (\_SB)
                {
                    Device (RTC)
                    {
                        Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
                        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                        {
                            IO (Decode16,
                                0x0070,             // Range Minimum
                                0x0070,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                        })
                    }

                    Device (HPET)
                    {
                        Name (_HID, EisaId ("PNP0103") /* HPET System Timer */)  // _HID: Hardware ID
                        Name (_UID, Zero)  // _UID: Unique ID
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If ((HPTE == Zero))
                            {
                                Return (Zero)
                            }

                            Return (0x0F)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RBUF, ResourceTemplate ()
                            {
                                Memory32Fixed (ReadWrite,
                                    0xFED00000,         // Address Base
                                    0x00000400,         // Address Length
                                    )
                                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                                {
                                    0x00000008,
                                }
                            })
                            Name (GBUF, ResourceTemplate ()
                            {
                                Memory32Fixed (ReadWrite,
                                    0xFED00000,         // Address Base
                                    0x00000400,         // Address Length
                                    )
                                Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                                {
                                    0x00000008,
                                }
                            })
                            If ((OSID == One))
                            {
                                Return (RBUF) /* \_SB_.HPET._CRS.RBUF */
                            }

                            Return (GBUF) /* \_SB_.HPET._CRS.GBUF */
                        }
                    }
                }

                Device (IPIC)
                {
                    Name (_HID, EisaId ("PNP0000") /* 8259-compatible Programmable Interrupt Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0024,             // Range Minimum
                            0x0024,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0028,             // Range Minimum
                            0x0028,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002C,             // Range Minimum
                            0x002C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0030,             // Range Minimum
                            0x0030,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0034,             // Range Minimum
                            0x0034,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0038,             // Range Minimum
                            0x0038,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x003C,             // Range Minimum
                            0x003C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A4,             // Range Minimum
                            0x00A4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A8,             // Range Minimum
                            0x00A8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00AC,             // Range Minimum
                            0x00AC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B4,             // Range Minimum
                            0x00B4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B8,             // Range Minimum
                            0x00B8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00BC,             // Range Minimum
                            0x00BC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (LDRC)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x004E,             // Range Minimum
                            0x004E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0063,             // Range Minimum
                            0x0063,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0067,             // Range Minimum
                            0x0067,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B2,             // Range Minimum
                            0x00B2,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0680,             // Range Minimum
                            0x0680,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0400,             // Range Minimum
                            0x0400,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0500,             // Range Minimum
                            0x0500,             // Range Maximum
                            0x01,               // Alignment
                            0xFF,               // Length
                            )
                    })
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x10,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                }

                Device (IURT)
                {
                    Name (_HID, EisaId ("PNP0501") /* 16550A-compatible COM Serial Port */)  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If ((USEL == Zero))
                        {
                            UI4E = One
                            C1EN = One
                            Return (0x0F)
                        }

                        Return (Zero)
                    }

                    Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                    {
                        If (((BDID != One) && ((BDID != 0x0A) && 
                            (BDID != 0x09))))
                        {
                            UI4E = Zero
                            C1EN = Zero
                        }
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Name (BUF0, ResourceTemplate ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                        })
                        Return (BUF0) /* \_SB_.PCI0.LPCB.IURT._CRS.BUF0 */
                    }
                }
            }
        }
    }

    Scope (\)
    {
        OperationRegion (PMIO, SystemIO, PMBS, 0x46)
        Field (PMIO, ByteAcc, NoLock, Preserve)
        {
            Offset (0x01), 
            PWBS,   1, 
            Offset (0x20), 
                ,   13, 
            PMEB,   1, 
            Offset (0x30), 
                ,   4, 
            SLPE,   1, 
            Offset (0x34), 
                ,   4, 
            SLPS,   1, 
            Offset (0x35), 
            PM1S,   1, 
            Offset (0x42), 
                ,   1, 
            GPEC,   1
        }

        Field (PMIO, ByteAcc, NoLock, WriteAsZeros)
        {
            Offset (0x20), 
                ,   4, 
            PSCI,   1, 
            SCIS,   1
        }

        OperationRegion (PMCR, SystemMemory, PMCB, 0x0100)
        Field (PMCR, DWordAcc, Lock, Preserve)
        {
            Offset (0x34), 
            L10D,   1, 
            L11D,   1, 
            L12D,   1, 
            L13D,   1, 
            L14D,   1, 
            L15D,   1, 
            L16D,   1, 
            L17D,   1, 
            SD1D,   1, 
            SD2D,   1, 
            SD3D,   1, 
                ,   1, 
                ,   1, 
            LPED,   1, 
            OTGD,   1, 
            Offset (0x36), 
                ,   1, 
                ,   1, 
                ,   1, 
                ,   1, 
            RP1D,   1, 
            RP2D,   1, 
            RP3D,   1, 
            RP4D,   1, 
            L20D,   1, 
            L21D,   1, 
            L22D,   1, 
            L23D,   1, 
            L24D,   1, 
            L25D,   1, 
            L26D,   1, 
            L27D,   1, 
                ,   1, 
                ,   1, 
                ,   1, 
                ,   1, 
            ISHD,   1, 
            Offset (0x3C), 
            Offset (0x60), 
            CKC0,   2, 
            CKF0,   1, 
            Offset (0x64), 
            CKC1,   2, 
            CKF1,   1, 
            Offset (0x68), 
            CKC2,   2, 
            CKF2,   1, 
            Offset (0x6C), 
            CKC3,   2, 
            CKF3,   1, 
            Offset (0x70), 
            CKC4,   2, 
            CKF4,   1, 
            Offset (0x74), 
            CKC5,   2, 
            CKF5,   1, 
            Offset (0x78), 
            Offset (0xA0), 
            PMCD,   32, 
            Offset (0xEC), 
            PMCC,   32
        }

        OperationRegion (PPSC, SystemMemory, PMCP, 0x08)
        Field (PPSC, DWordAcc, Lock, Preserve)
        {
            DM1P,   1, 
            PW1P,   1, 
            PW2P,   1, 
            UR1P,   1, 
            UR2P,   1, 
            SP1P,   1, 
            SP2P,   1, 
            SP3P,   1, 
            EMMP,   1, 
            SDI1,   1, 
            SDI2,   1, 
                ,   2, 
            LPEP,   1, 
                ,   1, 
            Offset (0x02), 
                ,   1, 
            SATP,   1, 
            USBP,   1, 
            SECP,   1, 
            PRP1,   1, 
            PRP2,   1, 
            PRP3,   1, 
            PRP4,   1, 
            DM2P,   1, 
            IC1P,   1, 
            IC2P,   1, 
            IC3P,   1, 
            IC4P,   1, 
            IC5P,   1, 
            IC6P,   1, 
            IC7P,   1, 
                ,   2, 
            ISHP,   1, 
            Offset (0x08)
        }
    }

    Scope (_SB.PCI0)
    {
        Device (XHC1)
        {
            Name (_ADR, 0x00140000)  // _ADR: Address
            Name (_DDN, "Baytrail XHCI controller (CCG core/Host only)")  // _DDN: DOS Device Name
            Name (XHD3, Zero)
            Name (XMOF, Zero)
            Name (XMON, Zero)
            Name (XCD3, Zero)
            Name (_STR, Unicode ("Baytrail XHCI controller (CCG core/Host only)"))  // _STR: Description String
            Name (MSET, Zero)
            Name (DDST, Zero)
            Name (XFLT, Zero)
            Name (WIFI, One)
            Method (MINF, 0, NotSerialized)
            {
                If ((OSID == 0x04))
                {
                    Return (Package (0x03)
                    {
                        PSSE, 
                        0x05, 
                        MODM
                    })
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
            }

            OperationRegion (XHOP, SystemMemory, 0xE00A0000, 0x40)
            Field (XHOP, DWordAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                XBAR,   32
            }

            OperationRegion (XOP1, SystemMemory, XBAR, 0x884C)
            Field (XOP1, DWordAcc, NoLock, Preserve)
            {
                Offset (0x52C), 
                CCS,    1, 
                    ,   4, 
                PLS,    4, 
                PP,     1, 
                Offset (0x869C), 
                    ,   18, 
                D3HE,   1, 
                Offset (0x8808), 
                    ,   30, 
                S1PD,   1, 
                S1PU,   1
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg1 == 0x02))
                {
                    D3HE = Zero
                    WIFI = Zero
                }

                If ((Arg0 == ToUUID ("ac340cb7-e901-45bf-b7e6-2b34ec931e23")))
                {
                    If ((Arg1 == 0x03))
                    {
                        XFLT = Arg1
                    }

                    If ((WIFI == One))
                    {
                        Return (Zero)
                    }

                    If ((Arg1 == 0x05))
                    {
                        If ((PSSE == One))
                        {
                            XCD3 = Zero
                            If ((XHD3 == One))
                            {
                                XHD3 = Zero
                                D3HE = Zero
                                Stall (0xFF)
                                ^^^FLDM.MOFF ()
                                S1PD = Zero
                                S1PU = One
                                S1PD = One
                                Stall (0xFF)
                                ^^^FLDM.MDON ()
                                S1PD = Zero
                                S1PU = Zero
                                S1PD = One
                                Stall (0xFF)
                            }

                            If ((XMOF == One))
                            {
                                XMOF = Zero
                                D3HE = Zero
                                Stall (0xFF)
                                ^^^FLDM.MOFF ()
                                S1PD = Zero
                                S1PU = One
                                S1PD = One
                                Stall (0xFF)
                            }

                            If ((XMON == One))
                            {
                                XMON = Zero
                                D3HE = Zero
                                Stall (0xFF)
                                S1PD = Zero
                                S1PU = One
                                S1PD = One
                                Stall (0xFF)
                                ^^^FLDM.MDON ()
                                S1PD = Zero
                                S1PU = Zero
                                S1PD = One
                                Stall (0xFF)
                            }

                            If ((((CCS == Zero) || (PP == Zero)) || ((
                                PLS >= 0x04) && (PLS <= 0x0F))))
                            {
                                D3HE = Zero
                            }
                            ElseIf ((PLS == 0x03))
                            {
                                D3HE = One
                            }
                            Else
                            {
                                D3HE = Zero
                            }
                        }
                    }

                    If ((Arg1 == 0x06))
                    {
                        If ((PSSE == One))
                        {
                            XCD3 = One
                            If ((((CCS == Zero) || (PP == Zero)) || ((
                                PLS >= 0x04) && (PLS <= 0x0F))))
                            {
                                D3HE = Zero
                            }
                            ElseIf ((PLS == 0x03))
                            {
                                D3HE = One
                            }
                            Else
                            {
                                D3HE = Zero
                            }
                        }
                    }
                }
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If (((OSID == 0x02) || (OSID == 0x04)))
                {
                    Return (0x03)
                }

                If ((XFLT == Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (UBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveHigh, Exclusive, PullDown, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x004E
                        }
                    GpioInt (Edge, ActiveHigh, Exclusive, PullDown, 0x0000,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0007
                        }
                })
                Name (WBUF, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                If (((BDID != One) && ((OSID == 0x02) || (OSID == 
                    0x04))))
                {
                    Return (UBUF) /* \_SB_.PCI0.XHC1._CRS.UBUF */
                }
                Else
                {
                    Return (WBUF) /* \_SB_.PCI0.XHC1._CRS.WBUF */
                }
            }

            OperationRegion (XHCR, PCI_Config, 0x75, One)
            Field (XHCR, ByteAcc, NoLock, WriteAsZeros)
            {
                PMEE,   1, 
                    ,   6, 
                PMES,   1
            }

            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (Zero)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If ((WIFI == Zero))
                {
                    ADBG ("D3HE_Dis_DSW")
                    D3HE = Zero
                }

                PMEE = Arg0
            }

            Name (IPRW, Package (0x02)
            {
                0x0D, 
                0x04
            })
            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                Return (Package (0x01)
                {
                    USBC
                })
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((XHCI != Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            OperationRegion (XPRT, PCI_Config, 0xD0, 0x10)
            Field (XPRT, DWordAcc, NoLock, Preserve)
            {
                PR2,    32, 
                PR2M,   32, 
                PR3,    32, 
                PR3M,   32
            }

            Device (RHUB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (TPLD, 2, Serialized)
                {
                    Name (PCKG, Package (0x01)
                    {
                        Buffer (0x10){}
                    })
                    CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
                    REV = One
                    CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
                    VISI = Arg0
                    CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
                    GPOS = Arg1
                    CreateField (DerefOf (PCKG [Zero]), 0x4A, 0x04, SHAP)
                    SHAP = One
                    CreateField (DerefOf (PCKG [Zero]), 0x20, 0x10, WID)
                    WID = 0x08
                    CreateField (DerefOf (PCKG [Zero]), 0x30, 0x10, HGT)
                    HGT = 0x03
                    Return (PCKG) /* \_SB_.PCI0.XHC1.RHUB.TPLD.PCKG */
                }

                Device (SSP1)
                {
                    Name (_ADR, 0x08)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0x06, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.SSP1._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x4B, 0x19, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,  // K.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.SSP1._PLD.PLDP */
                    }
                }

                Device (HS01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x06, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HS01._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x4B, 0x19, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,  // K.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HS01._PLD.PLDP */
                    }
                }

                Device (SSP2)
                {
                    Name (_ADR, 0x09)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCD, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (UPCR, Package (0x04)
                        {
                            Zero, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        If ((NUSB == One))
                        {
                            Return (UPCD) /* \_SB_.PCI0.XHC1.RHUB.SSP2._UPC.UPCD */
                        }
                        ElseIf ((BDID == 0x02))
                        {
                            Return (UPCR) /* \_SB_.PCI0.XHC1.RHUB.SSP2._UPC.UPCR */
                        }
                        Else
                        {
                            Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.SSP2._UPC.UPCP */
                        }
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x43, 0x08, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,  // C.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Name (PLDR, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x43, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // C.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        If ((BDID == 0x02))
                        {
                            Return (PLDR) /* \_SB_.PCI0.XHC1.RHUB.SSP2._PLD.PLDR */
                        }
                        Else
                        {
                            Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.SSP2._PLD.PLDP */
                        }
                    }
                }

                Device (HS02)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCD, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (UPCR, Package (0x04)
                        {
                            Zero, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        If ((NUSB == One))
                        {
                            Return (UPCD) /* \_SB_.PCI0.XHC1.RHUB.HS02._UPC.UPCD */
                        }
                        ElseIf ((BDID == 0x02))
                        {
                            Return (UPCR) /* \_SB_.PCI0.XHC1.RHUB.HS02._UPC.UPCR */
                        }
                        Else
                        {
                            Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HS02._UPC.UPCP */
                        }
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x43, 0x08, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,  // C.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Name (PLDR, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x43, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // C.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        If ((BDID == 0x02))
                        {
                            Return (PLDR) /* \_SB_.PCI0.XHC1.RHUB.HS02._PLD.PLDR */
                        }
                        Else
                        {
                            Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HS02._PLD.PLDP */
                        }
                    }
                }

                Device (SSP3)
                {
                    Name (_ADR, 0x0A)  // _ADR: Address
                    Name (_S0W, 0x02)  // _S0W: S0 Device Wake State
                    Name (_DEP, Package (0x02)  // _DEP: Dependencies
                    {
                        GPO1, 
                        ^^^I2C7.PMIC
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (Zero)
                    }

                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.SSP3._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x30, 0x08, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,  // 0.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.SSP3._PLD.PLDP */
                    }
                }

                Device (HS13)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Name (_S0W, 0x02)  // _S0W: S0 Device Wake State
                    Name (_DEP, Package (0x02)  // _DEP: Dependencies
                    {
                        GPO1, 
                        ^^^I2C7.PMI5
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((PMID == 0x03))
                        {
                            Return (0x0F)
                        }

                        Return (Zero)
                    }

                    OperationRegion (BADR, SystemMemory, 0xFED8C410, 0x08)
                    Field (BADR, DWordAcc, NoLock, Preserve)
                    {
                        MRB0,   32, 
                        MRB1,   32
                    }

                    OperationRegion (BAD1, SystemMemory, 0xFED8C400, 0x08)
                    Field (BAD1, DWordAcc, NoLock, Preserve)
                    {
                        MRP0,   32, 
                        MRP1,   32
                    }

                    PowerResource (WWPR, 0x00, 0x0000)
                    {
                        Name (_DEP, Package (0x02)  // _DEP: Dependencies
                        {
                            GPO1, 
                            ^^^^I2C7.PMI5
                        })
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (((OSID == One) && (^^^^^I2C7.PMI5.AVBG == One)))
                            {
                                Return (^^^^^I2C7.PMI5.MOXX) /* \_SB_.PCI0.I2C7.PMI5.MOXX */
                            }

                            Return (Zero)
                        }

                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                            If ((FMDM == Zero))
                            {
                                If ((OSID == One))
                                {
                                    If ((^^^^^I2C7.PMI5.AVBG == One))
                                    {
                                        ^^^^^I2C7.PMI5.MOXX = One
                                        Stall (0x0A)
                                    }

                                    If ((\_SB.GPO1.AVBL == One))
                                    {
                                        \_SB.GPO1.MRD3 = One
                                        Stall (0x0A)
                                        \_SB.GPO1.MPD3 = Zero
                                        Stall (0x0A)
                                        \_SB.GPO1.MPD3 = One
                                        Stall (0x5B)
                                        \_SB.GPO1.MPD3 = Zero
                                    }
                                    Else
                                    {
                                        MRB0 &= 0xFFFFFFFD
                                        MRB0 |= 0x02
                                        Stall (0x0A)
                                        MRP0 &= 0xFFFFFFFD
                                        MRP0 |= Zero
                                        Stall (0x0A)
                                        MRP0 &= 0xFFFFFFFD
                                        MRP0 |= 0x02
                                        Stall (0x5B)
                                        MRP0 &= 0xFFFFFFFD
                                        MRP0 |= Zero
                                    }
                                }
                            }
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                        }
                    }

                    Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                    {
                        WWPR
                    })
                    Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                    {
                        WWPR
                    })
                    Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                    {
                        WWPR
                    })
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HS13._UPC.UPCP */
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x30, 0x08, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,  // 0.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HS13._PLD.PLDP */
                    }

                    Device (MDM1)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                        {
                            WWPR
                        })
                        Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                        {
                            WWPR
                        })
                        Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                        {
                            WWPR
                        })
                    }
                }

                Device (SSP4)
                {
                    Name (_ADR, 0x0B)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.SSP4._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x30, 0x08, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,  // 0.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.SSP4._PLD.PLDP */
                    }
                }

                Device (HS04)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HS04._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x30, 0x08, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,  // 0.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HS04._PLD.PLDP */
                    }
                }

                Device (SSC2)
                {
                    Name (_ADR, 0x0D)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.SSC2._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x30, 0x08, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,  // 0.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.SSC2._PLD.PLDP */
                    }
                }

                Device (HSC2)
                {
                    Name (_ADR, 0x07)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HSC2._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x30, 0x08, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,  // 0.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HSC2._PLD.PLDP */
                    }
                }

                Device (SSCW)
                {
                    Name (_ADR, 0x0C)  // _ADR: Address
                    Name (_S0W, 0x02)  // _S0W: S0 Device Wake State
                    Name (_DEP, Package (0x02)  // _DEP: Dependencies
                    {
                        GPO1, 
                        ^^^I2C7.PMI5
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((PMID == 0x03))
                        {
                            If ((SKUT == One))
                            {
                                Return (0x0F)
                            }
                        }

                        Return (Zero)
                    }

                    OperationRegion (BAD0, SystemMemory, 0xFED8C410, 0x08)
                    Field (BAD0, DWordAcc, NoLock, Preserve)
                    {
                        MRB0,   32, 
                        MRB1,   32
                    }

                    OperationRegion (BAD1, SystemMemory, 0xFED8C400, 0x08)
                    Field (BAD1, DWordAcc, NoLock, Preserve)
                    {
                        MRP0,   32, 
                        MRP1,   32
                    }

                    PowerResource (WWPR, 0x00, 0x0000)
                    {
                        Name (_DEP, Package (0x02)  // _DEP: Dependencies
                        {
                            GPO1, 
                            ^^^^I2C7.PMI5
                        })
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If ((^^^^^I2C7.PMI5.AVBG == One))
                            {
                                Return (^^^^^I2C7.PMI5.MOXX) /* \_SB_.PCI0.I2C7.PMI5.MOXX */
                            }

                            Return (Zero)
                        }

                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                            If ((PSSE == One))
                            {
                                If ((((CCS == Zero) || (PP == Zero)) || ((
                                    PLS >= 0x04) && (PLS <= 0x0F))))
                                {
                                    D3HE = Zero
                                }
                            }

                            If ((OSID == 0x04))
                            {
                                If ((^^^^^I2C7.PMI5.AVBG == One))
                                {
                                    If ((\_SB.GPO1.AVBL == One))
                                    {
                                        \_SB.GPO1.MRD3 = Zero
                                        Sleep (One)
                                        ^^^^^I2C7.PMI5.MOXX = Zero
                                        Sleep (One)
                                    }
                                }
                            }
                        }
                    }

                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        ADBG ("_PS0 Sleep13ms")
                        Sleep (0x0D)
                    }

                    Method (_PS2, 0, NotSerialized)  // _PS2: Power State 2
                    {
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                    }

                    Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                    {
                        WWPR
                    })
                    Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                    {
                        WWPR
                    })
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.SSCW._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x30, 0x08, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,  // 0.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.SSCW._PLD.PLDP */
                    }

                    Device (MDM3)
                    {
                        Name (_ADR, 0x0C)  // _ADR: Address
                        Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                        {
                            WWPR
                        })
                        Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                        {
                            WWPR
                        })
                    }
                }

                Device (HSC3)
                {
                    Name (_ADR, 0x06)  // _ADR: Address
                    Name (_S0W, 0x02)  // _S0W: S0 Device Wake State
                    Name (_DEP, Package (0x02)  // _DEP: Dependencies
                    {
                        GPO1, 
                        ^^^I2C7.PMI5
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((PMID == 0x03))
                        {
                            Return (0x0F)
                        }

                        Return (Zero)
                    }

                    OperationRegion (BAD0, SystemMemory, 0xFED8C410, 0x08)
                    Field (BAD0, DWordAcc, NoLock, Preserve)
                    {
                        MRB0,   32, 
                        MRB1,   32
                    }

                    OperationRegion (BAD1, SystemMemory, 0xFED8C400, 0x08)
                    Field (BAD1, DWordAcc, NoLock, Preserve)
                    {
                        MRP0,   32, 
                        MRP1,   32
                    }

                    PowerResource (WWPR, 0x00, 0x0000)
                    {
                        Name (_DEP, Package (0x02)  // _DEP: Dependencies
                        {
                            GPO1, 
                            ^^^^I2C7.PMI5
                        })
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (((OSID == One) && (^^^^^I2C7.PMI5.AVBG == One)))
                            {
                                Return (^^^^^I2C7.PMI5.MOXX) /* \_SB_.PCI0.I2C7.PMI5.MOXX */
                            }

                            Return (Zero)
                        }

                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                            If ((FMDM == Zero))
                            {
                                If ((OSID == One))
                                {
                                    If ((^^^^^I2C7.PMI5.AVBG == One))
                                    {
                                        ^^^^^I2C7.PMI5.MOXX = One
                                        Stall (0x0A)
                                    }

                                    If ((\_SB.GPO1.AVBL == One))
                                    {
                                        \_SB.GPO1.MRD3 = One
                                        Stall (0x0A)
                                        \_SB.GPO1.MPD3 = Zero
                                        Stall (0x0A)
                                        \_SB.GPO1.MPD3 = One
                                        Stall (0x5B)
                                        \_SB.GPO1.MPD3 = Zero
                                    }
                                    Else
                                    {
                                        MRB0 &= 0xFFFFFFFD
                                        MRB0 |= 0x02
                                        Stall (0x0A)
                                        MRP0 &= 0xFFFFFFFD
                                        MRP0 |= Zero
                                        Stall (0x0A)
                                        MRP0 &= 0xFFFFFFFD
                                        MRP0 |= 0x02
                                        Stall (0x5B)
                                        MRP0 &= 0xFFFFFFFD
                                        MRP0 |= Zero
                                    }
                                }
                            }
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                        }
                    }

                    Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                    {
                        WWPR
                    })
                    Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                    {
                        WWPR
                    })
                    Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                    {
                        WWPR
                    })
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HSC3._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x30, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // 0.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HSC3._PLD.PLDP */
                    }

                    Device (MDM4)
                    {
                        Name (_ADR, 0x06)  // _ADR: Address
                        Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                        {
                            WWPR
                        })
                        Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                        {
                            WWPR
                        })
                        Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                        {
                            WWPR
                        })
                    }
                }

                Device (HS05)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HS05._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x00, 0x19, 0x00, 0x04, 0x03, 0x00, 0x00, 0x00,  // ........
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HS05._PLD.PLDP */
                    }
                }
            }
        }

        Device (OTG1)
        {
            Name (_ADR, 0x00160000)  // _ADR: Address
            Name (_DDN, "Baytrail XHCI controller (Synopsys core/OTG)")  // _DDN: DOS Device Name
            Name (_STR, Unicode ("Baytrail XHCI controller (Synopsys core/OTG)"))  // _STR: Description String
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            OperationRegion (PMEB, PCI_Config, 0x84, 0x04)
            Field (PMEB, WordAcc, NoLock, Preserve)
            {
                Offset (0x01), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1
            }

            OperationRegion (GENR, PCI_Config, 0xA0, 0x10)
            Field (GENR, WordAcc, NoLock, Preserve)
            {
                    ,   18, 
                CPME,   1, 
                U2EN,   1, 
                U3EN,   1
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                CPME = One
                U2EN = One
                U3EN = One
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                CPME = Zero
                U2EN = Zero
                U3EN = Zero
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }

            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (Zero)
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                Return (Package (0x01)
                {
                    USBC
                })
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((OTGM != Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (SMBC, 2, NotSerialized)
            {
                Name (BUFF, Buffer (0x03)
                {
                     0x00, 0x01, 0x00                                 // ...
                })
                CreateByteField (BUFF, Zero, BYAT)
                CreateByteField (BUFF, 0x02, DATA)
                If ((Arg0 == Zero))
                {
                    DATA = 0x50
                    ^^I2C1.BC00 = BUFF /* \_SB_.PCI0.OTG1.SMBC.BUFF */
                }
                Else
                {
                    DATA = 0x51
                    ^^I2C1.BC00 = BUFF /* \_SB_.PCI0.OTG1.SMBC.BUFF */
                }

                BUFF = ^^I2C1.BC01 /* \_SB_.PCI0.I2C1.BC01 */
                DATA &= 0xFD
                ^^I2C1.BC01 = BUFF /* \_SB_.PCI0.OTG1.SMBC.BUFF */
                If ((Arg1 == Zero))
                {
                    BUFF = ^^I2C1.BC31 /* \_SB_.PCI0.I2C1.BC31 */
                    DATA &= 0xFB
                    ^^I2C1.BC31 = BUFF /* \_SB_.PCI0.OTG1.SMBC.BUFF */
                }
                Else
                {
                    BUFF = ^^I2C1.BC31 /* \_SB_.PCI0.I2C1.BC31 */
                    DATA |= 0x04
                    ^^I2C1.BC31 = BUFF /* \_SB_.PCI0.OTG1.SMBC.BUFF */
                }
            }

            Method (TIBC, 2, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x25, 0x6B)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x26, 0x02)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x27, 0x42)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x24, One)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x25, 0x6B)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x26, 0x05)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x27, 0x8A)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x24, One)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x25, 0x6B)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x26, Zero)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x27, 0x38)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x24, One)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x25, 0x6B)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x26, One)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x27, 0x3B)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x24, One)
                }
                ElseIf ((Arg0 == One))
                {
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x25, 0x6B)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x26, 0x02)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x27, 0x42)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x24, One)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x25, 0x6B)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x26, 0x05)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x27, 0x8A)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x24, One)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x25, 0x6B)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x26, Zero)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x27, 0x39)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x24, One)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x25, 0x6B)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x26, One)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x27, 0x3B)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x24, One)
                }
                ElseIf ((Arg0 == 0x02))
                {
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x25, 0x6B)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x26, 0x02)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x27, 0x42)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x24, One)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x25, 0x6B)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x26, 0x05)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x27, 0x8A)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x24, One)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x25, 0x6B)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x26, Zero)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x27, 0x3A)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x24, One)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x25, 0x6B)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x26, One)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x27, 0x3B)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x24, One)
                }
                ElseIf ((Arg0 == 0x03))
                {
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x25, 0x6B)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x26, 0x02)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x27, 0x42)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x24, One)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x25, 0x6B)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x26, 0x05)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x27, 0x8A)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x24, One)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x25, 0x6B)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x26, Zero)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x27, 0x3B)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x24, One)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x25, 0x6B)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x26, One)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x27, 0x3B)
                    ^^I2C7.PMI5.SET (One, 0x5E, 0x24, One)
                }
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("eaa3afa9-6469-4015-9041-a83634a7fa2d")))
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Zero)
                    }

                    If ((Arg2 == One))
                    {
                        Return (One)
                    }
                }

                If ((Arg0 == ToUUID ("e2528aa0-8863-48f4-aa40-865e05902449")))
                {
                    If ((BDID == 0x08))
                    {
                        Local0 = ^^I2C7.BATC.PSRC ()
                    }
                    ElseIf (((BDID == 0x09) || (BDID == 0x0A)))
                    {
                        Local0 = ^^I2C7.WIDR.PSRC ()
                    }
                    Else
                    {
                        Local0 = ^^I2C1.BATC.PSRC ()
                    }

                    If ((Arg2 == Zero))
                    {
                        Return (Zero)
                    }

                    If ((Arg2 == One))
                    {
                        If ((Local0 == One))
                        {
                            Return (0x03)
                        }

                        If ((Local0 == 0x02))
                        {
                            Return (Zero)
                        }

                        If ((Local0 == 0x03))
                        {
                            Return (0x02)
                        }

                        If ((Local0 == 0x04))
                        {
                            Return (One)
                        }

                        If ((Local0 == 0x05))
                        {
                            Return (0x04)
                        }

                        If ((Local0 == Zero))
                        {
                            Return (0x05)
                        }
                    }
                }

                If ((Arg0 == ToUUID ("b2090db6-9135-4ef6-bd18-d5590dda90be")))
                {
                    Name (BUFF, Buffer (0x03)
                    {
                         0x00, 0x01, 0x00                                 // ...
                    })
                    CreateByteField (BUFF, Zero, BYAT)
                    CreateByteField (BUFF, 0x02, DATA)
                    If ((Arg2 == Zero))
                    {
                        Return (Zero)
                    }

                    If ((Arg2 == One))
                    {
                        If ((BDID == 0x03))
                        {
                            SMBC (Zero, Zero)
                        }
                        ElseIf (((BDID == 0x08) || ((BDID == 0x09) || (BDID == 
                            0x0A))))
                        {
                            TIBC (Zero, Zero)
                        }
                    }

                    If ((Arg2 == 0x02))
                    {
                        If ((BDID == 0x03))
                        {
                            SMBC (Zero, Zero)
                        }
                        ElseIf (((BDID == 0x08) || ((BDID == 0x09) || (BDID == 
                            0x0A))))
                        {
                            TIBC (0x02, Zero)
                        }
                    }

                    If ((Arg2 == 0x03))
                    {
                        If ((BDID == 0x03))
                        {
                            SMBC (Zero, One)
                        }
                        ElseIf (((BDID == 0x08) || ((BDID == 0x09) || (BDID == 
                            0x0A))))
                        {
                            TIBC (One, One)
                        }
                    }

                    If ((Arg2 == 0x04))
                    {
                        If ((BDID == 0x03))
                        {
                            SMBC (One, One)
                        }
                        ElseIf (((BDID == 0x08) || ((BDID == 0x09) || (BDID == 
                            0x0A))))
                        {
                            TIBC (0x03, One)
                        }
                    }

                    If ((Arg2 == 0x05))
                    {
                        If ((BDID == 0x03))
                        {
                            BUFF = ^^I2C1.BC30 /* \_SB_.PCI0.I2C1.BC30 */
                            Local0 = DATA /* \_SB_.PCI0.OTG1._DSM.DATA */
                            Local1 = (Local0 & 0xFF)
                            DATA = (Local1 | 0x04)
                            ^^I2C1.BC30 = BUFF /* \_SB_.PCI0.OTG1._DSM.BUFF */
                            Return (BYAT) /* \_SB_.PCI0.OTG1._DSM.BYAT */
                        }
                    }
                }
            }
        }

        Device (OTG2)
        {
            Name (_HID, "INT3496")  // _HID: Hardware ID
            Name (_CID, "INT3496")  // _CID: Compatible ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((BDID == One) && (OSID != One)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (ABUF, ResourceTemplate ()
                {
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0003
                        }
                })
                Return (ABUF) /* \_SB_.PCI0.OTG2._CRS.ABUF */
            }
        }

        Device (GPTC)
        {
            Name (_HID, "GPTC0001")  // _HID: Hardware ID
            Name (_CID, "GPTC0001")  // _CID: Compatible ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((OSID != One) && ((BDID == 0x09) || (BDID == 
                    0x0A))))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (ABUF, ResourceTemplate ()
                {
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0000
                        }
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0002
                        }
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0003
                        }
                })
                Return (ABUF) /* \_SB_.PCI0.GPTC._CRS.ABUF */
            }
        }

        Device (PEPD)
        {
            Name (_HID, "INT33A4")  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0D80") /* Windows-compatible System Power Management Controller */)  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (CDMP, Package (0x02){})
            Name (DEVY, Package (0x15)
            {
                Package (0x03)
                {
                    "\\_PR.CPU0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU1", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU2", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU3", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.GFX0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C3", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C4", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C5", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C6", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C7", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.XHC1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SEC0", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.LPEA", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SDHA", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SPI1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SPI2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SPI3", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.URT1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.URT2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }
            })
            Name (DEVL, Package (0x16)
            {
                Package (0x03)
                {
                    "\\_PR.CPU0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU1", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU2", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU3", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.GFX0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C3", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C4", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C5", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C6", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C7", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.XHC1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SEC0", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.LPEA", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SDHA", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SHC1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SPI1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SPI2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SPI3", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.URT1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.URT2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }
            })
            Name (BUF0, Package (0x17)
            {
                Package (0x03)
                {
                    "\\_PR.CPU0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU1", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU2", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU3", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.GFX0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C3", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C4", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C5", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C6", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C7", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.XHC1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SEC0", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.LPEA", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SDHA", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SHC1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SPI1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SPI2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SPI3", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.URT1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.URT2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C2.RTKC", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }
            })
            Name (BUF2, Package (0x16)
            {
                Package (0x03)
                {
                    "\\_PR.CPU0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU1", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU2", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU3", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.GFX0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C3", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C4", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C5", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C6", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C7", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.XHC1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SEC0", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.LPEA", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SDHA", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SHC1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SPI1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SPI2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SPI3", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.URT1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.URT2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }
            })
            Name (DEHY, Package (0x16)
            {
                Package (0x03)
                {
                    "\\_PR.CPU0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU1", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU2", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU3", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.GFX0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C3", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C4", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C5", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C6", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C7", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.XHC1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SEC0", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.LPEA", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SDHA", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SDHC", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SPI1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SPI2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SPI3", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.URT1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.URT2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }
            })
            Name (DEHL, Package (0x16)
            {
                Package (0x03)
                {
                    "\\_PR.CPU0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU1", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU2", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU3", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.GFX0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C3", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C4", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C5", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C6", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C7", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.XHC1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SEC0", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.LPEA", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SDHA", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SHC1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SPI1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SPI2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SPI3", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.URT1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.URT2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }
            })
            Name (BUF1, Package (0x18)
            {
                Package (0x03)
                {
                    "\\_PR.CPU0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU1", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU2", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU3", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.GFX0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C3", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C4", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C5", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C6", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C7", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.XHC1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SEC0", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.LPEA", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SDHA", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SHC1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SPI1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SPI2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SPI3", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.URT1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.URT2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP01.PXSX", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C1.RTEK", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }
            })
            Name (BCCD, Package (0x01)
            {
                Package (0x02)
                {
                    "\\_SB.PCI0.SDHA", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                Zero, 
                                0x20, 
                                Zero, 
                                0x03, 
                                Ones
                            }, 

                            Package (0x03)
                            {
                                0xFFFFFFFC, 
                                Zero, 
                                0x04
                            }, 

                            Zero
                        }
                    }
                }
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("c4eb40a0-6cd2-11e2-bcfd-0800200c9a66")))
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x07                                             // .
                        })
                    }

                    If ((Arg2 == One))
                    {
                        If ((MLSD == One))
                        {
                            If ((((BDID == 0x09) || (BDID == 0x0A)) || (BDID == 0x08)))
                            {
                                If ((OSYS == 0x07DF))
                                {
                                    Return (BUF1) /* \_SB_.PCI0.PEPD.BUF1 */
                                }
                                Else
                                {
                                    Return (DEHL) /* \_SB_.PCI0.PEPD.DEHL */
                                }
                            }
                            ElseIf ((OSYS == 0x07DF))
                            {
                                If ((BDID == One))
                                {
                                    Return (BUF0) /* \_SB_.PCI0.PEPD.BUF0 */
                                }

                                Return (BUF2) /* \_SB_.PCI0.PEPD.BUF2 */
                            }
                            Else
                            {
                                Return (DEVL) /* \_SB_.PCI0.PEPD.DEVL */
                            }
                        }
                        ElseIf ((((BDID == 0x09) || (BDID == 0x0A)) || (BDID == 
                            0x08)))
                        {
                            Return (DEHY) /* \_SB_.PCI0.PEPD.DEHY */
                        }
                        Else
                        {
                            Return (DEVY) /* \_SB_.PCI0.PEPD.DEVY */
                        }
                    }

                    If ((Arg2 == 0x02))
                    {
                        Local0 = EM1A /* \EM1A */
                        Local0 += 0x84
                        DerefOf (DerefOf (DerefOf (DerefOf (BCCD [Zero]
                            ) [One]) [Zero]) [Zero]) [0x04] = Local0
                        Return (BCCD) /* \_SB_.PCI0.PEPD.BCCD */
                    }
                }

                Return (One)
            }
        }

        Device (SDHA)
        {
            Name (_HID, "80860F14" /* Intel Baytrail SDIO/MMC Host Controller */)  // _HID: Hardware ID
            Name (_CID, "PNP0D40" /* SDA Standard Compliant SD Host Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) eMMC Controller - 80862294")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (_HRV, One)  // _HRV: Hardware Revision
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y04)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002D,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.SDHA._Y04._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.SDHA._Y04._LEN, B0LN)  // _LEN: Length
                B0BA = EM0A /* \EM0A */
                B0LN = EM0L /* \EM0L */
                Return (RBUF) /* \_SB_.PCI0.SDHA.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((EM0A == Zero) || (SD1D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If ((EMMP == Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, EM1A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
            }

            Device (EMMD)
            {
                Name (_ADR, 0x08)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }
            }
        }

        Device (PEMC)
        {
            Name (_ADR, 0x00100000)  // _ADR: Address
            OperationRegion (SDIO, PCI_Config, 0x84, 0x04)
            Field (SDIO, WordAcc, NoLock, Preserve)
            {
                Offset (0x01), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((EM0A == Zero) && (SD1D == Zero)))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }

            Device (CARD)
            {
                Name (_ADR, 0x08)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }
            }
        }

        Device (SHC1)
        {
            Name (_HID, "80860F14" /* Intel Baytrail SDIO/MMC Host Controller */)  // _HID: Hardware ID
            Name (_CID, "PNP0D40" /* SDA Standard Compliant SD Host Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) SD Card Controller - 80862296")  // _DDN: DOS Device Name
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_HRV, One)  // _HRV: Hardware Revision
            Name (CDEP, Package (0x02)
            {
                MBID, 
                I2C7
            })
            Name (XDEP, Package (0x03)
            {
                MBID, 
                I2C7, 
                ^I2C7.PMI1
            })
            Name (TDEP, Package (0x03)
            {
                MBID, 
                I2C7, 
                ^I2C7.PMI2
            })
            Name (_DEP, Package (0x03)  // _DEP: Dependencies
            {
                MBID, 
                I2C7, 
                ^I2C7.PMI5
            })
            Name (CPR0, Package (0x01)
            {
                P33X
            })
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                P18W
            })
            Name (WBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y05)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002F,
                }
                GpioInt (Edge, ActiveBoth, SharedAndWake, PullNone, 0x2710,
                    "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0051
                    }
                GpioIo (Shared, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                    "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0051
                    }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (WBUF, \_SB.PCI0.SHC1._Y05._BAS, B01A)  // _BAS: Base Address
                CreateDWordField (WBUF, \_SB.PCI0.SHC1._Y05._LEN, B01N)  // _LEN: Length
                B01A = SD0A /* \SD0A */
                B01N = SD0L /* \SD0L */
                Return (WBUF) /* \_SB_.PCI0.SHC1.WBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((SD0A == Zero) || (SD3D == One)))
                {
                    Return (Zero)
                }

                If ((OSID == 0x04))
                {
                    Return (Zero)
                }

                If ((MLSD == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((SCDD == One))
                {
                    Local0 = (^^^MBID.RMBX (0x63, 0x0600, 0x06, Zero, Zero, Zero) | One)
                    ^^^MBID.WMBX (0x63, 0x0600, Local0, 0x07, Zero, Zero, Zero)
                }

                If ((^^I2C7.AVBL == One))
                {
                    If ((PMID == One))
                    {
                        BUFF = ^^I2C7.DL02 /* \_SB_.PCI0.I2C7.DL02 */
                        DATA &= 0xFE
                        ^^I2C7.DL02 = BUFF /* \_SB_.PCI0.SHC1.BUFF */
                        Sleep (0x0A)
                        BUFF = ^^I2C7.DL03 /* \_SB_.PCI0.I2C7.DL03 */
                        DATA &= 0xFE
                        ^^I2C7.DL03 = BUFF /* \_SB_.PCI0.SHC1.BUFF */
                    }
                    ElseIf ((PMID == 0x02))
                    {
                        BUFF = ^^I2C7.XD31 /* \_SB_.PCI0.I2C7.XD31 */
                        If ((STAT == Zero))
                        {
                            DATA &= 0xEF
                            ^^I2C7.XD31 = BUFF /* \_SB_.PCI0.SHC1.BUFF */
                            Sleep (0x0A)
                            BUFF = ^^I2C7.XD31 /* \_SB_.PCI0.I2C7.XD31 */
                            If ((STAT == Zero))
                            {
                                DATA &= 0xDF
                                ^^I2C7.XD31 = BUFF /* \_SB_.PCI0.SHC1.BUFF */
                            }
                        }
                    }
                    ElseIf ((PMID == 0x03))
                    {
                        ADBG ("PS3")
                        Local0 = ^^I2C7.PMI5.GET (One, 0x6E, 0x67)
                        Sleep (0x0A)
                        Local0 &= 0xF8
                        ^^I2C7.PMI5.SET (One, 0x6E, 0x67, Local0)
                    }
                }

                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((SCDD == One))
                {
                    Local0 = (^^^MBID.RMBX (0x63, 0x0600, 0x06, Zero, Zero, Zero) & 0xFFFFFFFC)
                    ^^^MBID.WMBX (0x63, 0x0600, Local0, 0x07, Zero, Zero, Zero)
                }

                If ((SDVL == Zero))
                {
                    If ((^^I2C7.AVBL == One))
                    {
                        If ((PMID == One))
                        {
                            DATA = 0x1D
                            ^^I2C7.DL03 = BUFF /* \_SB_.PCI0.SHC1.BUFF */
                            Sleep (0x0A)
                            ^^I2C7.DL02 = BUFF /* \_SB_.PCI0.SHC1.BUFF */
                        }
                        ElseIf ((PMID == 0x02))
                        {
                            BUFF = ^^I2C7.XD31 /* \_SB_.PCI0.I2C7.XD31 */
                            If ((STAT == Zero))
                            {
                                DATA |= 0x10
                                ^^I2C7.XD31 = BUFF /* \_SB_.PCI0.SHC1.BUFF */
                            }

                            BUFF = ^^I2C7.XD32 /* \_SB_.PCI0.I2C7.XD32 */
                            If ((STAT == Zero))
                            {
                                DATA |= 0x1A
                                DATA &= 0xFA
                                ^^I2C7.XD32 = BUFF /* \_SB_.PCI0.SHC1.BUFF */
                            }

                            Sleep (0x0A)
                            BUFF = ^^I2C7.XD31 /* \_SB_.PCI0.I2C7.XD31 */
                            If ((STAT == Zero))
                            {
                                DATA |= 0x20
                                ^^I2C7.XD31 = BUFF /* \_SB_.PCI0.SHC1.BUFF */
                            }
                        }
                        ElseIf ((PMID == 0x03))
                        {
                            ADBG ("PS0 3p3")
                            Local0 = ^^I2C7.PMI5.GET (One, 0x6E, 0x67)
                            Sleep (0x0A)
                            Local0 |= One
                            Local0 &= 0xF9
                            ^^I2C7.PMI5.SET (One, 0x6E, 0x67, Local0)
                            Sleep (0x0A)
                            ^^I2C7.PMI5.SET (One, 0x6E, 0xC6, 0x3D)
                            Sleep (0x0A)
                        }
                    }
                }
                ElseIf ((SDVL == One))
                {
                    If ((^^I2C7.AVBL == One))
                    {
                        If ((PMID == One))
                        {
                            DATA = 0x59
                            ^^I2C7.DL03 = BUFF /* \_SB_.PCI0.SHC1.BUFF */
                            Sleep (0x05)
                        }
                        ElseIf ((PMID == 0x02))
                        {
                            BUFF = ^^I2C7.XD31 /* \_SB_.PCI0.I2C7.XD31 */
                            If ((STAT == Zero))
                            {
                                DATA |= 0x10
                                ^^I2C7.XD31 = BUFF /* \_SB_.PCI0.SHC1.BUFF */
                            }

                            BUFF = ^^I2C7.XD32 /* \_SB_.PCI0.I2C7.XD32 */
                            If ((STAT == Zero))
                            {
                                DATA |= 0x0B
                                DATA &= 0xEB
                                ^^I2C7.XD32 = BUFF /* \_SB_.PCI0.SHC1.BUFF */
                            }

                            Sleep (0x0A)
                            BUFF = ^^I2C7.XD31 /* \_SB_.PCI0.I2C7.XD31 */
                            If ((STAT == Zero))
                            {
                                DATA |= 0x20
                                ^^I2C7.XD31 = BUFF /* \_SB_.PCI0.SHC1.BUFF */
                            }
                        }
                        ElseIf ((PMID == 0x03))
                        {
                            ADBG ("PS0 1p8")
                            Local0 = ^^I2C7.PMI5.GET (One, 0x6E, 0x67)
                            Sleep (0x0A)
                            Local0 |= One
                            Local0 &= 0xF9
                            ^^I2C7.PMI5.SET (One, 0x6E, 0x67, Local0)
                            Sleep (0x0A)
                            ^^I2C7.PMI5.SET (One, 0x6E, 0xC6, 0x1F)
                            Sleep (0x0A)
                        }
                    }
                }

                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
                If ((OSID == One))
                {
                    Sleep (0x03E8)
                }
            }

            OperationRegion (KEYS, SystemMemory, SD1A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If ((SDI2 == Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }

            Name (BUFF, Buffer (0x03){})
            CreateByteField (BUFF, Zero, STAT)
            CreateByteField (BUFF, 0x02, DATA)
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((SCDD == One))
                {
                    Local0 = (^^^MBID.RMBX (0x63, 0x0600, 0x06, Zero, Zero, Zero) & 0xFFFFFFFC)
                    ^^^MBID.WMBX (0x63, 0x0600, Local0, 0x07, Zero, Zero, Zero)
                }

                If ((Arg0 == ToUUID ("f6c13ea5-65cd-461f-ab7a-29f7e8d5bd61")))
                {
                    If ((Arg1 == Zero))
                    {
                        If ((Arg2 == Zero))
                        {
                            Return (Buffer (0x04)
                            {
                                 0x1F, 0x01, 0x00, 0x00                           // ....
                            })
                        }

                        If ((Arg2 == 0x08))
                        {
                            Return (Buffer (One)
                            {
                                 0x05                                             // .
                            })
                        }

                        If ((Arg2 == One))
                        {
                            Return (One)
                        }

                        If ((Arg2 == 0x02))
                        {
                            Return (0x02)
                        }

                        If ((Arg2 == 0x03))
                        {
                            ADBG ("DSM 1p8")
                            If ((^^I2C7.AVBL == One))
                            {
                                If ((PMID == One))
                                {
                                    DATA = 0x59
                                    ^^I2C7.DL03 = BUFF /* \_SB_.PCI0.SHC1.BUFF */
                                }
                                ElseIf ((PMID == 0x02))
                                {
                                    BUFF = ^^I2C7.XD31 /* \_SB_.PCI0.I2C7.XD31 */
                                    If ((STAT == Zero))
                                    {
                                        DATA |= 0x10
                                        ^^I2C7.XD31 = BUFF /* \_SB_.PCI0.SHC1.BUFF */
                                    }

                                    BUFF = ^^I2C7.XD32 /* \_SB_.PCI0.I2C7.XD32 */
                                    If ((STAT == Zero))
                                    {
                                        DATA |= 0x0B
                                        DATA &= 0xEB
                                        ^^I2C7.XD32 = BUFF /* \_SB_.PCI0.SHC1.BUFF */
                                    }

                                    Sleep (0x0A)
                                    BUFF = ^^I2C7.XD31 /* \_SB_.PCI0.I2C7.XD31 */
                                    If ((STAT == Zero))
                                    {
                                        DATA |= 0x20
                                        ^^I2C7.XD31 = BUFF /* \_SB_.PCI0.SHC1.BUFF */
                                    }
                                }
                                ElseIf ((PMID == 0x03))
                                {
                                    Local0 = ^^I2C7.PMI5.GET (One, 0x6E, 0x67)
                                    Sleep (0x0A)
                                    Local0 &= 0xF8
                                    ^^I2C7.PMI5.SET (One, 0x6E, 0x67, Local0)
                                    Sleep (0x64)
                                    Local0 = ^^I2C7.PMI5.GET (One, 0x6E, 0x67)
                                    Sleep (0x0A)
                                    Local0 |= One
                                    Local0 &= 0xF9
                                    ^^I2C7.PMI5.SET (One, 0x6E, 0x67, Local0)
                                    Sleep (0x0A)
                                    ^^I2C7.PMI5.SET (One, 0x6E, 0xC6, 0x1F)
                                    Sleep (0x0A)
                                }
                            }

                            SDVL = One
                            Return (0x03)
                        }

                        If ((Arg2 == 0x04))
                        {
                            ADBG ("DSM 3p3")
                            If ((^^I2C7.AVBL == One))
                            {
                                If ((PMID == One))
                                {
                                    BUFF = ^^I2C7.DL02 /* \_SB_.PCI0.I2C7.DL02 */
                                    DATA &= 0xFE
                                    ^^I2C7.DL02 = BUFF /* \_SB_.PCI0.SHC1.BUFF */
                                    Sleep (0x0A)
                                    BUFF = ^^I2C7.DL03 /* \_SB_.PCI0.I2C7.DL03 */
                                    DATA &= 0xFE
                                    ^^I2C7.DL03 = BUFF /* \_SB_.PCI0.SHC1.BUFF */
                                    Sleep (0x32)
                                    DATA = 0x1D
                                    ^^I2C7.DL02 = BUFF /* \_SB_.PCI0.SHC1.BUFF */
                                    Sleep (0x0A)
                                    DATA = 0x1D
                                    ^^I2C7.DL03 = BUFF /* \_SB_.PCI0.SHC1.BUFF */
                                }
                                ElseIf ((PMID == 0x02))
                                {
                                    BUFF = ^^I2C7.XD31 /* \_SB_.PCI0.I2C7.XD31 */
                                    If ((STAT == Zero))
                                    {
                                        DATA &= 0xEF
                                        ^^I2C7.XD31 = BUFF /* \_SB_.PCI0.SHC1.BUFF */
                                    }

                                    Sleep (0x0A)
                                    BUFF = ^^I2C7.XD31 /* \_SB_.PCI0.I2C7.XD31 */
                                    If ((STAT == Zero))
                                    {
                                        DATA &= 0xDF
                                        ^^I2C7.XD31 = BUFF /* \_SB_.PCI0.SHC1.BUFF */
                                    }

                                    Sleep (0x32)
                                    BUFF = ^^I2C7.XD32 /* \_SB_.PCI0.I2C7.XD32 */
                                    If ((STAT == Zero))
                                    {
                                        DATA |= 0x1A
                                        DATA &= 0xFA
                                        ^^I2C7.XD32 = BUFF /* \_SB_.PCI0.SHC1.BUFF */
                                    }

                                    BUFF = ^^I2C7.XD31 /* \_SB_.PCI0.I2C7.XD31 */
                                    If ((STAT == Zero))
                                    {
                                        DATA |= 0x10
                                        ^^I2C7.XD31 = BUFF /* \_SB_.PCI0.SHC1.BUFF */
                                        Sleep (0x05)
                                        DATA |= 0x20
                                        ^^I2C7.XD31 = BUFF /* \_SB_.PCI0.SHC1.BUFF */
                                        Sleep (0x0A)
                                    }
                                }
                                ElseIf ((PMID == 0x03))
                                {
                                    Local0 = ^^I2C7.PMI5.GET (One, 0x6E, 0x5F)
                                    Sleep (0x0A)
                                    Local0 &= 0xF8
                                    ^^I2C7.PMI5.SET (One, 0x6E, 0x5F, Local0)
                                    Sleep (0x0A)
                                    Local0 = ^^I2C7.PMI5.GET (One, 0x6E, 0x67)
                                    Sleep (0x0A)
                                    Local0 &= 0xF8
                                    ^^I2C7.PMI5.SET (One, 0x6E, 0x67, Local0)
                                    Sleep (0x03E8)
                                    Local0 = ^^I2C7.PMI5.GET (One, 0x6E, 0x67)
                                    Sleep (0x0A)
                                    Local0 |= One
                                    Local0 &= 0xF9
                                    ^^I2C7.PMI5.SET (One, 0x6E, 0x67, Local0)
                                    Sleep (0x0A)
                                    ^^I2C7.PMI5.SET (One, 0x6E, 0xC6, 0x3D)
                                    Sleep (0x0A)
                                    Local0 = ^^I2C7.PMI5.GET (One, 0x6E, 0x5F)
                                    Sleep (0x0A)
                                    Local0 |= One
                                    Local0 &= 0xF9
                                    ^^I2C7.PMI5.SET (One, 0x6E, 0x5F, Local0)
                                    Sleep (0x0A)
                                }
                            }

                            Sleep (0x32)
                            SDVL = Zero
                            Return (0x04)
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }

                    Return (Zero)
                }
            }
        }

        Device (GDM1)
        {
            Name (_HID, "INTL9C60" /* Intel Baytrail SOC DMA Controller */)  // _HID: Hardware ID
            Name (_DDN, "Intel(R) DMA Controller #1 - INTL9C60")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y06)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002A,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.GDM1._Y06._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.GDM1._Y06._LEN, B0LN)  // _LEN: Length
                B0BA = D10A /* \D10A */
                B0LN = D10L /* \D10L */
                Return (RBUF) /* \_SB_.PCI0.GDM1.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((D10A == Zero) || (L10D == One)))
                {
                    Return (Zero)
                }

                If ((OSID == One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If ((DM1P == Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }
        }

        Device (GDM2)
        {
            Name (_HID, "80862286")  // _HID: Hardware ID
            Name (_CID, "80862286")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) DMA Controller #1 - 80862286")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y07)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002A,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.GDM2._Y07._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.GDM2._Y07._LEN, B0LN)  // _LEN: Length
                B0BA = D10A /* \D10A */
                B0LN = D10L /* \D10L */
                Return (RBUF) /* \_SB_.PCI0.GDM2.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((D10A == Zero) || (L10D == One)))
                {
                    Return (Zero)
                }

                If ((OSID != One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If ((DM1P == Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }
        }

        Device (GDM3)
        {
            Name (_HID, "INTL9C60" /* Intel Baytrail SOC DMA Controller */)  // _HID: Hardware ID
            Name (_DDN, "Intel(R) DMA Controller #2 - INTL9C60")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y08)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002B,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.GDM3._Y08._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.GDM3._Y08._LEN, B0LN)  // _LEN: Length
                B0BA = D20A /* \D20A */
                B0LN = D20L /* \D20L */
                Return (RBUF) /* \_SB_.PCI0.GDM3.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((D20A == Zero) || (L20D == One)))
                {
                    Return (Zero)
                }

                If ((OSID == One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If ((DM2P == Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }
        }

        Device (GDM4)
        {
            Name (_HID, "808622C0")  // _HID: Hardware ID
            Name (_CID, "808622C0")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) DMA Controller #2 - 808622C0")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y09)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002B,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.GDM4._Y09._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.GDM4._Y09._LEN, B0LN)  // _LEN: Length
                B0BA = D20A /* \D20A */
                B0LN = D20L /* \D20L */
                Return (RBUF) /* \_SB_.PCI0.GDM4.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((D20A == Zero) || (L20D == One)))
                {
                    Return (Zero)
                }

                If ((OSID != One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If ((DM2P == Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }
        }

        Device (PWM1)
        {
            Name (_HID, "80862288")  // _HID: Hardware ID
            Name (_CID, "80862288")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) PWM Controller #1 - 80862288")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y0A)
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.PWM1._Y0A._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.PWM1._Y0A._LEN, B0LN)  // _LEN: Length
                B0BA = P10A /* \P10A */
                B0LN = P10L /* \P10L */
                Return (RBUF) /* \_SB_.PCI0.PWM1.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((P10A == Zero) || (L11D == One)))
                {
                    Return (Zero)
                }

                If ((OSID == One))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, P11A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If ((PW1P == Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }
        }

        Device (PWM2)
        {
            Name (_HID, "80862289")  // _HID: Hardware ID
            Name (_CID, "80862289")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) PWM Controller #2 - 80862289")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y0B)
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.PWM2._Y0B._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.PWM2._Y0B._LEN, B0LN)  // _LEN: Length
                B0BA = P20A /* \P20A */
                B0LN = P20L /* \P20L */
                Return (RBUF) /* \_SB_.PCI0.PWM2.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((P20A == Zero) || (L12D == One)))
                {
                    Return (Zero)
                }

                If ((((BDID == 0x08) || (BDID == 0x0A)) || (OSID == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, P21A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If ((PW2P == Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }
        }

        Device (URT1)
        {
            Name (_HID, "8086228A")  // _HID: Hardware ID
            Name (_CID, "8086228A")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) HS-UART Controller #1 - 8086228A")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y0C)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000027,
                }
                FixedDMA (0x0002, 0x0002, Width32bit, )
                FixedDMA (0x0003, 0x0003, Width32bit, )
            })
            Name (ABUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y0D)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000027,
                }
                FixedDMA (0x0002, 0x0002, Width32bit, )
                FixedDMA (0x0003, 0x0003, Width32bit, )
                GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0010
                    }
                GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0014
                    }
                GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x000F
                    }
                GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0012
                    }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                If ((OSID == One))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.URT1._Y0C._BAS, B0BA)  // _BAS: Base Address
                    CreateDWordField (RBUF, \_SB.PCI0.URT1._Y0C._LEN, B0LN)  // _LEN: Length
                    B0BA = U10A /* \U10A */
                    B0LN = U10L /* \U10L */
                    Return (RBUF) /* \_SB_.PCI0.URT1.RBUF */
                }
                Else
                {
                    CreateDWordField (ABUF, \_SB.PCI0.URT1._Y0D._BAS, ABBA)  // _BAS: Base Address
                    CreateDWordField (ABUF, \_SB.PCI0.URT1._Y0D._LEN, ABLN)  // _LEN: Length
                    ABBA = U10A /* \U10A */
                    ABLN = U10L /* \U10L */
                    Return (ABUF) /* \_SB_.PCI0.URT1.ABUF */
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((U10A == Zero) || (L13D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, U11A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If ((UR1P == Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }

            Device (BTH1)
            {
                Name (_HID, "BCM2E8A")  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (BBUF, ResourceTemplate ()
                    {
                        UartSerialBusV2 (0x0001C200, DataBitsEight, StopBitsOne,
                            0xFC, LittleEndian, ParityTypeNone, FlowControlNone,
                            0x0020, 0x0020, "\\_SB.PCI0.URT1",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullDown, 0x0000,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0005
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0001
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0003
                            }
                    })
                    Return (BBUF) /* \_SB_.PCI0.URT1.BTH1._CRS.BBUF */
                }
            }
        }

        Device (URT2)
        {
            Name (_HID, "8086228A")  // _HID: Hardware ID
            Name (_CID, "8086228A")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) HS-UART Controller #2 - 8086228C")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y0E)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000028,
                }
                FixedDMA (0x0004, 0x0004, Width32bit, )
                FixedDMA (0x0005, 0x0005, Width32bit, )
            })
            Name (ABUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y0F)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000028,
                }
                FixedDMA (0x0004, 0x0004, Width32bit, )
                FixedDMA (0x0005, 0x0005, Width32bit, )
                GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0011
                    }
                GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0015
                    }
                GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0013
                    }
                GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0016
                    }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                If ((OSID == One))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.URT2._Y0E._BAS, B0BA)  // _BAS: Base Address
                    CreateDWordField (RBUF, \_SB.PCI0.URT2._Y0E._LEN, B0LN)  // _LEN: Length
                    B0BA = U20A /* \U20A */
                    B0LN = U20L /* \U20L */
                    Return (RBUF) /* \_SB_.PCI0.URT2.RBUF */
                }
                Else
                {
                    CreateDWordField (ABUF, \_SB.PCI0.URT2._Y0F._BAS, ABBA)  // _BAS: Base Address
                    CreateDWordField (ABUF, \_SB.PCI0.URT2._Y0F._LEN, ABLN)  // _LEN: Length
                    ABBA = U20A /* \U20A */
                    ABLN = U20L /* \U20L */
                    Return (ABUF) /* \_SB_.PCI0.URT2.ABUF */
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((U20A == Zero) || (L14D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
                If ((^^^GPO1.AMMR == One))
                {
                    ^^^GPO1.GPSC = Zero
                    ^^^GPO1.GPSE = Zero
                }
            }

            OperationRegion (KEYS, SystemMemory, U21A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If ((UR2P == Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }

            Device (GPS1)
            {
                Name (_HID, "LNV4752")  // _HID: Hardware ID
                Name (_HRV, 0x1D00)  // _HRV: Hardware Revision
                Name (_STR, Unicode ("Broadcom GNSS 4752"))  // _STR: Description String
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (BBUF, ResourceTemplate ()
                    {
                        UartSerialBusV2 (0x0001C200, DataBitsEight, StopBitsOne,
                            0xFC, LittleEndian, ParityTypeNone, FlowControlHardware,
                            0x0020, 0x0020, "\\_SB.PCI0.URT2",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0018
                            }
                    })
                    Return (BBUF) /* \_SB_.PCI0.URT2.GPS1._CRS.BBUF */
                }
            }
        }

        Device (SPI1)
        {
            Name (_HID, "8086228E")  // _HID: Hardware ID
            Name (_CID, "8086228E")  // _CID: Compatible ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (_DDN, "Intel(R) SPI Controller #1 - 8086228E")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y10)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000029,
                }
                FixedDMA (0x0000, 0x0000, Width32bit, )
                FixedDMA (0x0001, 0x0001, Width32bit, )
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.SPI1._Y10._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.SPI1._Y10._LEN, B0LN)  // _LEN: Length
                B0BA = SP0A /* \SP0A */
                B0LN = SP0L /* \SP0L */
                Return (RBUF) /* \_SB_.PCI0.SPI1.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((SP0A == Zero) || (L15D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, SP1A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If ((SP1P == Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }
        }

        Device (SPI2)
        {
            Name (_HID, "8086228E")  // _HID: Hardware ID
            Name (_CID, "8086228E")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) SPI Controller #2 - 80862290")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y11)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000059,
                }
                FixedDMA (0x0006, 0x0006, Width32bit, )
                FixedDMA (0x0007, 0x0007, Width32bit, )
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.SPI2._Y11._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.SPI2._Y11._LEN, B0LN)  // _LEN: Length
                B0BA = S20A /* \S20A */
                B0LN = S20L /* \S20L */
                Return (RBUF) /* \_SB_.PCI0.SPI2.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((S20A == Zero) || (L16D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, S21A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If ((SP2P == Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }
        }

        Device (SPI3)
        {
            Name (_HID, "8086228E")  // _HID: Hardware ID
            Name (_CID, "8086228E")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) SPI Controller #3 - 808622AC")  // _DDN: DOS Device Name
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y12)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000005A,
                }
                FixedDMA (0x0008, 0x0008, Width32bit, )
                FixedDMA (0x0009, 0x0009, Width32bit, )
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.SPI3._Y12._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.SPI3._Y12._LEN, B0LN)  // _LEN: Length
                B0BA = S30A /* \S30A */
                B0LN = S30L /* \S30L */
                Return (RBUF) /* \_SB_.PCI0.SPI3.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((S30A == Zero) || (L16D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, S31A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If ((SP3P == Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }
        }

        Device (I2C1)
        {
            Name (_HID, "808622C1")  // _HID: Hardware ID
            Name (_CID, "808622C1")  // _CID: Compatible ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (_DDN, "Intel(R) I2C Controller #1 - 808622C1")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y13)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000020,
                }
                FixedDMA (0x0010, 0x0000, Width32bit, )
                FixedDMA (0x0011, 0x0001, Width32bit, )
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.I2C1._Y13._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.I2C1._Y13._LEN, B0LN)  // _LEN: Length
                B0BA = I10A /* \I10A */
                B0LN = I10L /* \I10L */
                Return (RBUF) /* \_SB_.PCI0.I2C1.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((I10A == Zero) || (L21D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, I11A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If ((IC1P == Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }

            PowerResource (CLK3, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (CKC3) /* \CKC3 */
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    CKC3 = One
                    Sleep (0x05)
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    CKC3 = 0x02
                }
            }

            Device (RTEK)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "10EC5677")  // _HID: Hardware ID
                Name (_CID, "10EC5677")  // _CID: Compatible ID
                Name (_DDN, "Realtek IIS Audio Codec")  // _DDN: DOS Device Name
                Name (_SUB, "17AA7005")  // _SUB: Subsystem ID
                Name (_UID, One)  // _UID: Unique ID
                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    CLK3
                })
                Name (CHAN, Package (0x02)
                {
                    One, 
                    0x0124F800
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x002C, ControllerInitiated, 0x000186A0,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C1",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        I2cSerialBusV2 (0x003B, ControllerInitiated, 0x000186A0,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C1",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0019
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0012
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0030
                            }
                        GpioInt (Edge, ActiveLow, Exclusive, PullNone, 0x0000,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x005B
                            }
                        GpioInt (Edge, ActiveLow, Exclusive, PullNone, 0x0000,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004D
                            }
                        SpiSerialBusV2 (0x0001, PolarityLow, FourWireMode, 0x08,
                            ControllerInitiated, 0x003D0900, ClockPolarityHigh,
                            ClockPhaseSecond, "\\_SB.PCI0.SPI1",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (SBUF) /* \_SB_.PCI0.I2C1.RTEK._CRS.SBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                {
                }
            }

            Device (VBR0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "DRV2604")  // _HID: Hardware ID
                Name (_CID, "DRV2604")  // _CID: Compatible ID
                Name (_DDN, "Vibrator Device DRV2604")  // _DDN: DOS Device Name
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    I2C1, 
                    GPO0
                })
                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x005A, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C1",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004F
                            }
                    })
                    Return (RBUF) /* \_SB_.PCI0.I2C1.VBR0._CRS.RBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }
            }
        }

        Device (I2C2)
        {
            Name (_HID, "808622C1")  // _HID: Hardware ID
            Name (_CID, "808622C1")  // _CID: Compatible ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (_DDN, "Intel(R) I2C Controller #2 - 808622C2")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y14)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000021,
                }
                FixedDMA (0x0012, 0x0002, Width32bit, )
                FixedDMA (0x0013, 0x0003, Width32bit, )
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.I2C2._Y14._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.I2C2._Y14._LEN, B0LN)  // _LEN: Length
                B0BA = I20A /* \I20A */
                B0LN = I20L /* \I20L */
                Return (RBUF) /* \_SB_.PCI0.I2C2.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((I20A == Zero) || (L22D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, I21A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If ((IC2P == Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }

            PowerResource (CLK3, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (CKC3) /* \CKC3 */
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    CKC3 = One
                    Sleep (0x05)
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    CKC3 = 0x02
                }
            }

            PowerResource (CLK4, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (CKC4) /* \CKC4 */
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    CKC4 = One
                    Sleep (0x05)
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    CKC4 = 0x02
                }
            }

            Device (TCS1)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "GDIX1001")  // _HID: Hardware ID
                Name (_CID, "GDIX1001")  // _CID: Compatible ID
                Name (_S0W, Zero)  // _S0W: S0 Device Wake State
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    GPO1, 
                    I2C2
                })
                Name (PWMB, Zero)
                OperationRegion (LPS2, SystemMemory, P21A, 0x0100)
                Field (LPS2, DWordAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x10), 
                    BR0P,   32, 
                    Offset (0x84), 
                    PSAT,   32
                }

                OperationRegion (POP1, SystemMemory, BR0P, 0x0810)
                Field (POP1, DWordAcc, NoLock, Preserve)
                {
                    PWMC,   32, 
                    Offset (0x804), 
                    RSTA,   1, 
                    RSTF,   1, 
                    Offset (0x808)
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    PWMB = PWMC /* \_SB_.PCI0.I2C2.TCS1.PWMC */
                    PSAT |= 0x03
                    Local0 = PSAT /* \_SB_.PCI0.I2C2.TCS1.PSAT */
                    ^^^^TOFF.TNOF ()
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    Local0 = PSAT /* \_SB_.PCI0.I2C2.TCS1.PSAT */
                    If (((Local0 & 0x03) == 0x03))
                    {
                        PSAT &= 0xFFFFFFFC
                        Local1 = PSAT /* \_SB_.PCI0.I2C2.TCS1.PSAT */
                        RSTA = Zero
                        RSTF = Zero
                        RSTA = One
                        RSTF = One
                    }
                }

                Method (KBLC, 1, Serialized)
                {
                    Local0 = PSAT /* \_SB_.PCI0.I2C2.TCS1.PSAT */
                    If (((Local0 & 0x03) == Zero))
                    {
                        PWMB = PWMC /* \_SB_.PCI0.I2C2.TCS1.PWMC */
                        PWMB &= 0xFF000000
                        PWMB |= 0xC0001900
                        PWMB |= Arg0
                        If ((Arg0 == 0xFF))
                        {
                            PWMB &= 0x3FFFFFFF
                            PWMC = PWMB /* \_SB_.PCI0.I2C2.TCS1.PWMB */
                            RSTA = Zero
                            RSTF = Zero
                            RSTA = One
                            RSTF = One
                        }
                        Else
                        {
                            PWMC = PWMB /* \_SB_.PCI0.I2C2.TCS1.PWMB */
                        }
                    }
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0014, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C2",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioIo (Shared, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0035
                            }
                        GpioInt (Edge, ActiveLow, Shared, PullDefault, 0x0000,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0038
                            }
                    })
                    Return (RBUF) /* \_SB_.PCI0.I2C2.TCS1._CRS.RBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }
            }

            Device (SAR1)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "STH9310")  // _HID: Hardware ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0028, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C2",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioInt (Edge, ActiveBoth, Exclusive, PullUp, 0x0000,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0010
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0016
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0018
                            }
                    })
                    Return (RBUF) /* \_SB_.PCI0.I2C2.SAR1._CRS.RBUF */
                }
            }
        }

        Device (I2C3)
        {
            Name (_HID, "808622C1")  // _HID: Hardware ID
            Name (_CID, "808622C1")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) I2C Controller #3 - 808622C3")  // _DDN: DOS Device Name
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y15)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000022,
                }
                FixedDMA (0x0014, 0x0004, Width32bit, )
                FixedDMA (0x0015, 0x0005, Width32bit, )
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.I2C3._Y15._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.I2C3._Y15._LEN, B0LN)  // _LEN: Length
                B0BA = I30A /* \I30A */
                B0LN = I30L /* \I30L */
                Return (RBUF) /* \_SB_.PCI0.I2C3.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((I30A == Zero) || (L23D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, I31A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If ((IC3P == Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }

            PowerResource (CLK2, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (CKC2) /* \CKC2 */
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    CKC2 = One
                    Sleep (0x05)
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    CKC2 = 0x02
                }
            }

            PowerResource (CLK0, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (CKC0) /* \CKC0 */
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    CKC0 = One
                    Sleep (0x05)
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    CKC0 = 0x02
                }
            }

            PowerResource (CLK1, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (CKC1) /* \CKC1 */
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    CKC1 = One
                    Sleep (0x05)
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    CKC1 = 0x02
                }
            }

            Device (CA11)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INT3477")  // _HID: Hardware ID
                Name (_CID, "OVTI8858")  // _CID: Compatible ID
                Name (_SUB, "INTL0000")  // _SUB: Subsystem ID
                Name (_DDN, "OV8858")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (CDEP, Package (0x02)
                {
                    I2C7, 
                    ^^I2C7.PMI5
                })
                Name (CPR0, Package (0x03)
                {
                    P28W, 
                    P18W, 
                    CLK0
                })
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    I2C7, 
                    ^^I2C7.PMI5
                })
                Name (_PR0, Package (0x03)  // _PR0: Power Resources for D0
                {
                    P28W, 
                    P18W, 
                    CLK0
                })
                Name (PLDB, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x69, 0x0C, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,  // i.......
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                    }
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (PLDB) /* \_SB_.PCI0.I2C3.CA11.PLDB */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (WBUF, ResourceTemplate ()
                    {
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0034
                            }
                        I2cSerialBusV2 (0x0036, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C3",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        I2cSerialBusV2 (0x000C, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C3",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (WBUF) /* \_SB_.PCI0.I2C3.CA11._CRS.WBUF */
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("dc2f6c4f-045b-4f1d-97b9-882a6860a4be")))
                    {
                        Local0 = Package (0x12)
                            {
                                "CamId", 
                                "ov8858", 
                                "CamType", 
                                "1", 
                                "CsiPort", 
                                "1", 
                                "CsiLanes", 
                                "4", 
                                "CsiFmt", 
                                "15", 
                                "CsiBayer", 
                                "1", 
                                "CamClk", 
                                "0", 
                                "Regulator1p8v", 
                                "0", 
                                "Regulator2p8v", 
                                "0"
                            }
                        Return (Local0)
                    }

                    If ((Arg0 == ToUUID ("377ba76a-f390-4aff-ab38-9b1bf33a3015")))
                    {
                        Return ("INT3477")
                    }

                    If ((Arg0 == ToUUID ("3c62aaaa-d8e0-401a-84c3-fc05656fa28c")))
                    {
                        Return ("OV8858")
                    }

                    If ((Arg0 == ToUUID ("822ace8f-2814-4174-a56b-5f029fe079ee")))
                    {
                        Return ("P8V12F203")
                    }

                    If ((Arg0 == ToUUID ("2959512a-028c-4646-b73d-4d1b5672fad8")))
                    {
                        Return ("CHV_ITL_RVP")
                    }

                    If ((Arg0 == ToUUID ("918ab242-c37c-450a-9d0f-f47ab97c3dea")))
                    {
                        Return (0x0104)
                    }

                    If ((Arg0 == ToUUID ("ea3b7bd8-e09b-4239-ad6e-ed525f3f26ab")))
                    {
                        Return (One)
                    }

                    If ((Arg0 == ToUUID ("b65ac492-9e30-4d60-b5b2-f497c790d9cf")))
                    {
                        Return (One)
                    }

                    If ((Arg0 == ToUUID ("e770ab0f-2644-4bab-8628-d62f1683fb9d")))
                    {
                        Return (0x02)
                    }

                    If ((Arg0 == ToUUID ("1ea54ab2-cd84-48cc-9dd4-7f594ec3b015")))
                    {
                        Return (0x02)
                    }

                    If ((Arg0 == ToUUID ("8dbe2651-70c1-4c6f-ac87-a37cb46e4af6")))
                    {
                        Return (Zero)
                    }

                    If ((Arg0 == ToUUID ("75c9a639-5c8a-4a00-9f48-a9c3b5da789f")))
                    {
                        Return ("WV517S")
                    }

                    If ((Arg0 == ToUUID ("26257549-9271-4ca4-bb43-c4899d5a4881")))
                    {
                        If ((Arg2 == One))
                        {
                            Return (0x02)
                        }

                        If ((Arg2 == 0x02))
                        {
                            Return (0x03003600)
                        }

                        If ((Arg2 == 0x03))
                        {
                            Return (0x03000C01)
                        }
                    }

                    If ((Arg0 == ToUUID ("79234640-9e10-4fea-a5c1-b5aa8b19756f")))
                    {
                        If ((Arg2 == One))
                        {
                            Return (One)
                        }

                        If ((Arg2 == 0x02))
                        {
                            Return (0x01003400)
                        }
                    }

                    If ((Arg0 == ToUUID ("2fa9bb94-9c5d-4aeb-8e6e-27434f81e3d3")))
                    {
                        Return ("CHT")
                    }

                    If ((Arg0 == ToUUID ("647a6ca2-8b29-49ac-8806-d58b3d2d3ef5")))
                    {
                        Return ("FFD")
                    }

                    If ((Arg0 == ToUUID ("a6e922a1-f7b3-4399-b56a-406ae416843b")))
                    {
                        Return ("CHV")
                    }

                    If ((Arg0 == ToUUID ("5960313b-0ab0-4940-8840-2cafa420c015")))
                    {
                        Return ("INTEL")
                    }

                    If ((Arg0 == ToUUID ("f486d39f-d657-484b-84a6-42a565712b92")))
                    {
                        Return (Buffer (0x20)
                        {
                            /* 0000 */  0x01, 0x00, 0x04, 0x00, 0x00, 0x01, 0x01, 0x03,  // ........
                            /* 0008 */  0x02, 0x01, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                        })
                    }

                    Return (Zero)
                }
            }

            Device (CA01)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "OVTI2740")  // _HID: Hardware ID
                Name (_CID, "OVTI2740")  // _CID: Compatible ID
                Name (_SUB, "INTL0000")  // _SUB: Subsystem ID
                Name (_DDN, "OV2740")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    I2C7, 
                    ^^I2C7.PMI5
                })
                Name (_PR0, Package (0x03)  // _PR0: Power Resources for D0
                {
                    P28W, 
                    P18W, 
                    CLK1
                })
                Name (PLDB, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x61, 0x0C, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,  // a.......
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                    }
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (PLDB) /* \_SB_.PCI0.I2C3.CA01.PLDB */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (WBUF, ResourceTemplate ()
                    {
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0032
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0036
                            }
                        I2cSerialBusV2 (0x0010, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C3",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (WBUF) /* \_SB_.PCI0.I2C3.CA01._CRS.WBUF */
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("dc2f6c4f-045b-4f1d-97b9-882a6860a4be")))
                    {
                        Local0 = Package (0x12)
                            {
                                "CamId", 
                                "OV2740", 
                                "CamType", 
                                "1", 
                                "CsiPort", 
                                "0", 
                                "CsiLanes", 
                                "1", 
                                "CsiFmt", 
                                "15", 
                                "CsiBayer", 
                                "0", 
                                "CamClk", 
                                "1", 
                                "Regulator1p8v", 
                                "0", 
                                "Regulator2p8v", 
                                "0"
                            }
                        Return (Local0)
                    }

                    If ((Arg0 == ToUUID ("377ba76a-f390-4aff-ab38-9b1bf33a3015")))
                    {
                        Return ("OVTI2740")
                    }

                    If ((Arg0 == ToUUID ("3c62aaaa-d8e0-401a-84c3-fc05656fa28c")))
                    {
                        Return ("OV2740")
                    }

                    If ((Arg0 == ToUUID ("822ace8f-2814-4174-a56b-5f029fe079ee")))
                    {
                        Return ("CJAE533")
                    }

                    If ((Arg0 == ToUUID ("2959512a-028c-4646-b73d-4d1b5672fad8")))
                    {
                        Return ("CHV_ITL_RVP")
                    }

                    If ((Arg0 == ToUUID ("918ab242-c37c-450a-9d0f-f47ab97c3dea")))
                    {
                        Return (0x0102)
                    }

                    If ((Arg0 == ToUUID ("ea3b7bd8-e09b-4239-ad6e-ed525f3f26ab")))
                    {
                        Return (One)
                    }

                    If ((Arg0 == ToUUID ("b65ac492-9e30-4d60-b5b2-f497c790d9cf")))
                    {
                        Return (Zero)
                    }

                    If ((Arg0 == ToUUID ("e770ab0f-2644-4bab-8628-d62f1683fb9d")))
                    {
                        Return (Zero)
                    }

                    If ((Arg0 == ToUUID ("1ea54ab2-cd84-48cc-9dd4-7f594ec3b015")))
                    {
                        Return (0x02)
                    }

                    If ((Arg0 == ToUUID ("8dbe2651-70c1-4c6f-ac87-a37cb46e4af6")))
                    {
                        Return (One)
                    }

                    If ((Arg0 == ToUUID ("75c9a639-5c8a-4a00-9f48-a9c3b5da789f")))
                    {
                        Return ("default")
                    }

                    If ((Arg0 == ToUUID ("26257549-9271-4ca4-bb43-c4899d5a4881")))
                    {
                        If ((Arg2 == One))
                        {
                            Return (One)
                        }

                        If ((Arg2 == 0x02))
                        {
                            Return (0x03001000)
                        }
                    }

                    If ((Arg0 == ToUUID ("79234640-9e10-4fea-a5c1-b5aa8b19756f")))
                    {
                        If ((Arg2 == One))
                        {
                            Return (0x02)
                        }

                        If ((Arg2 == 0x02))
                        {
                            Return (0x01003200)
                        }

                        If ((Arg2 == 0x03))
                        {
                            Return (0x01003601)
                        }
                    }

                    If ((Arg0 == ToUUID ("2fa9bb94-9c5d-4aeb-8e6e-27434f81e3d3")))
                    {
                        Return ("CHT")
                    }

                    If ((Arg0 == ToUUID ("647a6ca2-8b29-49ac-8806-d58b3d2d3ef5")))
                    {
                        Return ("FFD")
                    }

                    If ((Arg0 == ToUUID ("a6e922a1-f7b3-4399-b56a-406ae416843b")))
                    {
                        Return ("CHV")
                    }

                    If ((Arg0 == ToUUID ("5960313b-0ab0-4940-8840-2cafa420c015")))
                    {
                        Return ("INTEL")
                    }

                    If ((Arg0 == ToUUID ("f486d39f-d657-484b-84a6-42a565712b92")))
                    {
                        Return (Buffer (0x20)
                        {
                            /* 0000 */  0x01, 0x01, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0008 */  0x02, 0x01, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                        })
                    }

                    Return (Zero)
                }
            }

            OperationRegion (TIP1, GenericSerialBus, Zero, 0x0100)
            Field (TIP1, BufferAcc, NoLock, Preserve)
            {
                Connection (
                    I2cSerialBusV2 (0x006B, ControllerInitiated, 0x000F4240,
                        AddressingMode7Bit, "\\_SB.PCI0.I2C3",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                ), 
                Offset (0x01), 
                AccessAs (BufferAcc, AttribByte), 
                RG01,   8, 
                Offset (0x08), 
                AccessAs (BufferAcc, AttribByte), 
                RG08,   8
            }

            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If ((Arg0 == 0x09))
                {
                    AVBL = Arg1
                }
            }
        }

        Device (I2C4)
        {
            Name (_HID, "808622C1")  // _HID: Hardware ID
            Name (_CID, "808622C1")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) I2C Controller #4 - 808622C4")  // _DDN: DOS Device Name
            Name (_UID, 0x04)  // _UID: Unique ID
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                PEPD, 
                GPO0
            })
            Name (FCFG, Zero)
            Name (RCFG, Zero)
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y16)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000023,
                }
                FixedDMA (0x0016, 0x0006, Width32bit, )
                FixedDMA (0x0017, 0x0007, Width32bit, )
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.I2C4._Y16._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.I2C4._Y16._LEN, B0LN)  // _LEN: Length
                B0BA = I40A /* \I40A */
                B0LN = I40L /* \I40L */
                Return (RBUF) /* \_SB_.PCI0.I2C4.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((I40A == Zero) || (L24D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, I41A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            PowerResource (CLK0, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (CKC0) /* \CKC0 */
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    CKC0 = One
                    Sleep (0x05)
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    CKC0 = 0x02
                }
            }

            PowerResource (CLK1, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (CKC1) /* \CKC1 */
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    CKC1 = One
                    Sleep (0x05)
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    CKC1 = 0x02
                }
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If ((IC4P == Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }

            Device (VBR1)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "DRV2604")  // _HID: Hardware ID
                Name (_CID, "DRV2604")  // _CID: Compatible ID
                Name (_DDN, "Vibrator Device DRV2604")  // _DDN: DOS Device Name
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    I2C4, 
                    GPO1
                })
                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x005A, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C4",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002F
                            }
                    })
                    Return (RBUF) /* \_SB_.PCI0.I2C4.VBR1._CRS.RBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }
            }

            Device (TCS2)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "WCOM0019")  // _HID: Hardware ID
                Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
                Name (_S0W, Zero)  // _S0W: S0 Device Wake State
                Name (_DEP, Package (0x03)  // _DEP: Dependencies
                {
                    I2C4, 
                    GPO1, 
                    GPO0
                })
                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    If ((^^^^GPO0.AVBL == One))
                    {
                        ^^^^GPO0.TCD6 = Zero
                    }

                    Sleep (0x78)
                    ^^^^TOFF.TNOF ()
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    If ((^^^^GPO0.AVBL == One))
                    {
                        ^^^^GPO0.TCD6 = One
                    }

                    Sleep (0x96)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0009, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C4",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioInt (Level, ActiveLow, Shared, PullDefault, 0x0000,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0031
                            }
                    })
                    Return (RBUF) /* \_SB_.PCI0.I2C4.TCS2._CRS.RBUF */
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Debug = "Method _DSM begin"
                    If ((Arg0 == ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Switch (ToInteger (Arg1))
                                {
                                    Case (One)
                                    {
                                        Debug = "Method _DSM Function Query"
                                        Return (Buffer (One)
                                        {
                                             0x03                                             // .
                                        })
                                    }
                                    Default
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             // .
                                        })
                                    }

                                }
                            }
                            Case (One)
                            {
                                Debug = "Method _DSM Function HID"
                                Return (One)
                            }
                            Default
                            {
                                Return (Zero)
                            }

                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }
            }
        }

        Device (I2C5)
        {
            Name (_HID, "808622C1")  // _HID: Hardware ID
            Name (_CID, "808622C1")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) I2C Controller #5 - 808622C5")  // _DDN: DOS Device Name
            Name (_UID, 0x05)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y17)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000024,
                }
                FixedDMA (0x0018, 0x0000, Width32bit, )
                FixedDMA (0x0019, 0x0001, Width32bit, )
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.I2C5._Y17._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.I2C5._Y17._LEN, B0LN)  // _LEN: Length
                B0BA = I50A /* \I50A */
                B0LN = I50L /* \I50L */
                Return (RBUF) /* \_SB_.PCI0.I2C5.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((I50A == Zero) || (L25D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, I51A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If ((IC5P == Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }
        }

        OperationRegion (MLRC, SystemIO, 0x72, 0x02)
        Field (MLRC, ByteAcc, Lock, Preserve)
        {
            CMII,   8, 
            CMID,   8
        }

        Method (WRMS, 2, NotSerialized)
        {
            Local0 = (Arg0 & 0xFF)
            CMII = Local0
            Local1 = (Arg1 & 0xFF)
            CMID = Local1
        }

        Method (RDMS, 1, NotSerialized)
        {
            Local3 = Zero
            CMII = Arg0
            Local3 = CMID /* \_SB_.PCI0.CMID */
            Return (Local3)
        }

        Device (I2C6)
        {
            Name (_HID, "808622C1")  // _HID: Hardware ID
            Name (_CID, "808622C1")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) I2C Controller #6 - 808622C6")  // _DDN: DOS Device Name
            Name (_UID, 0x06)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y18)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000025,
                }
                FixedDMA (0x001A, 0x0002, Width32bit, )
                FixedDMA (0x001B, 0x0003, Width32bit, )
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.I2C6._Y18._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.I2C6._Y18._LEN, B0LN)  // _LEN: Length
                B0BA = I60A /* \I60A */
                B0LN = I60L /* \I60L */
                Return (RBUF) /* \_SB_.PCI0.I2C6.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((I60A == Zero) || (L26D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, I61A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If ((IC6P == Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }

            Device (TCS0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "HDP0001")  // _HID: Hardware ID
                Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
                Name (_S0W, Zero)  // _S0W: S0 Device Wake State
                Name (_DEP, Package (0x05)  // _DEP: Dependencies
                {
                    I2C6, 
                    GPO3, 
                    GPO0, 
                    I2C7, 
                    ^^I2C7.PMI5
                })
                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    ^^^^TOFF.TNOF ()
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    If ((^^^^GPO0.AVBL == One))
                    {
                        ^^^^GPO0.TCD5 = Zero
                    }

                    Sleep (0x0A)
                    If ((^^^I2C7.PMI5.AVBL == One))
                    {
                        ^^^I2C7.PMI5.VP4D = One
                        If ((^^^I2C7.PMI5.AVBG == One))
                        {
                            ^^^I2C7.PMI5.GP4D = One
                        }
                    }

                    Sleep (0x1E)
                    If ((^^^^GPO0.AVBL == One))
                    {
                        ^^^^GPO0.TCD5 = One
                    }

                    Sleep (0x78)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x006C, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C6",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioInt (Level, ActiveLow, Shared, PullDefault, 0x0000,
                            "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004D
                            }
                    })
                    Return (RBUF) /* \_SB_.PCI0.I2C6.TCS0._CRS.RBUF */
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Debug = "Method _DSM begin"
                    If ((Arg0 == ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Switch (ToInteger (Arg1))
                                {
                                    Case (One)
                                    {
                                        Debug = "Method _DSM Function Query"
                                        Return (Buffer (One)
                                        {
                                             0x03                                             // .
                                        })
                                    }
                                    Default
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             // .
                                        })
                                    }

                                }
                            }
                            Case (One)
                            {
                                Debug = "Method _DSM Function HID"
                                Return (0x20)
                            }
                            Default
                            {
                                Return (Zero)
                            }

                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }
            }

            Device (TDEV)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "HISP0001")  // _HID: Hardware ID
                Name (_CID, "HISP0001")  // _CID: Compatible ID
                Name (_DDN, "HIDEEP (GPIO) controller")  // _DDN: DOS Device Name
                Name (_UID, Zero)  // _UID: Unique ID
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    I2C6, 
                    GPO3
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x006D, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C6",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioInt (Level, ActiveLow, Shared, PullDefault, 0x0000,
                            "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004D
                            }
                    })
                    Return (RBUF) /* \_SB_.PCI0.I2C6.TDEV._CRS.RBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Local0 = RDMS (0x78)
                    Local1 = RDMS (0x79)
                    If ((Local0 == Local1))
                    {
                        If ((Local0 == 0x77))
                        {
                            Return (0x0F)
                        }
                    }

                    Return (Zero)
                }
            }
        }

        Device (I2C7)
        {
            Name (_HID, "808622C1")  // _HID: Hardware ID
            Name (_CID, "808622C1")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) I2C Controller #7 - 808622C7")  // _DDN: DOS Device Name
            Name (_UID, 0x07)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Method (_SEM, 0, NotSerialized)
            {
                If (((PMID == One) || (PMID == 0x02)))
                {
                    ADBG ("$COVE")
                    Return (One)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y19)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000026,
                }
                FixedDMA (0x001C, 0x0004, Width32bit, )
                FixedDMA (0x001D, 0x0005, Width32bit, )
            })
            Method (_IRC, 0, NotSerialized)  // _IRC: Inrush Current
            {
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.I2C7._Y19._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.I2C7._Y19._LEN, B0LN)  // _LEN: Length
                B0BA = I70A /* \I70A */
                B0LN = I70L /* \I70L */
                Return (RBUF) /* \_SB_.PCI0.I2C7.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((I70A == Zero) || (L27D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If (((PMID == One) || (PMID == 0x02)))
                {
                    Return (Zero)
                }

                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, I71A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            OperationRegion (GPEX, GenericSerialBus, Zero, 0x0100)
            Field (GPEX, BufferAcc, NoLock, Preserve)
            {
                Connection (
                    I2cSerialBusV2 (0x0023, ControllerInitiated, 0x000F4240,
                        AddressingMode7Bit, "\\_SB.PCI0.I2C7",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                ), 
                Offset (0x04), 
                AccessAs (BufferAcc, AttribByte), 
                P0DT,   8, 
                Offset (0x0C), 
                AccessAs (BufferAcc, AttribByte), 
                P0CF,   8
            }

            OperationRegion (GPUS, GenericSerialBus, Zero, 0x0100)
            Field (GPUS, BufferAcc, NoLock, Preserve)
            {
                Connection (
                    I2cSerialBusV2 (0x005E, ControllerInitiated, 0x000F4240,
                        AddressingMode7Bit, "\\_SB.PCI0.I2C7",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                ), 
                Offset (0x03), 
                AccessAs (BufferAcc, AttribByte), 
                SIRQ,   8
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If ((IC7P == Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }
        }

        Device (RP01)
        {
            Name (_ADR, 0x001C0000)  // _ADR: Address
            OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                L0SE,   1, 
                Offset (0x11), 
                Offset (0x12), 
                    ,   13, 
                LASX,   1, 
                Offset (0x1A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x1B), 
                Offset (0x20), 
                Offset (0x22), 
                PSPX,   1, 
                Offset (0x98), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0x9C), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02) // Device Wake
                }
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                Return (Zero)
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR04) /* \_SB_.AR04 */
                }

                Return (PR04) /* \_SB_.PR04 */
            }
        }

        Device (RP02)
        {
            Name (_ADR, 0x001C0001)  // _ADR: Address
            OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                L0SE,   1, 
                Offset (0x11), 
                Offset (0x12), 
                    ,   13, 
                LASX,   1, 
                Offset (0x1A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x1B), 
                Offset (0x20), 
                Offset (0x22), 
                PSPX,   1, 
                Offset (0x98), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0x9C), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("1730e71d-e5dd-4a34-be57-4d76b6a2fe37")))
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x03                                             // .
                                })
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == One))
                        {
                            Switch (DerefOf (Arg3 [Zero]))
                            {
                                Case (Zero)
                                {
                                    ^^^HIDD.HPEM (0x1B)
                                }
                                Case (One)
                                {
                                    ^^^HIDD.HPEM (0x0B)
                                }

                            }

                            Return (Zero)
                        }

                        Return (Zero)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02) // Device Wake
                }
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR05) /* \_SB_.AR05 */
                }

                Return (PR05) /* \_SB_.PR05 */
            }
        }

        Device (RP03)
        {
            Name (_ADR, 0x001C0002)  // _ADR: Address
            OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                L0SE,   1, 
                Offset (0x11), 
                Offset (0x12), 
                    ,   13, 
                LASX,   1, 
                Offset (0x1A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x1B), 
                Offset (0x20), 
                Offset (0x22), 
                PSPX,   1, 
                Offset (0x98), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0x9C), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02) // Device Wake
                }
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR06) /* \_SB_.AR06 */
                }

                Return (PR06) /* \_SB_.PR06 */
            }
        }

        Device (RP04)
        {
            Name (_ADR, 0x001C0003)  // _ADR: Address
            OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                L0SE,   1, 
                Offset (0x11), 
                Offset (0x12), 
                    ,   13, 
                LASX,   1, 
                Offset (0x1A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x1B), 
                Offset (0x20), 
                Offset (0x22), 
                PSPX,   1, 
                Offset (0x98), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0x9C), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02) // Device Wake
                }
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR07) /* \_SB_.AR07 */
                }

                Return (PR07) /* \_SB_.PR07 */
            }
        }

        Scope (\_SB)
        {
            PowerResource (USBC, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                }
            }
        }

        Device (IISH)
        {
            Name (_HID, "808622D8")  // _HID: Hardware ID
            Name (_CID, "808622D8")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) Integrated Sensor Hub - 808622D8")  // _DDN: DOS Device Name
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y1A)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y1B)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000072,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.IISH._Y1A._BAS, B0BA)  // _BAS: Base Address
                B0BA = ISH0 /* \ISH0 */
                CreateDWordField (RBUF, \_SB.PCI0.IISH._Y1B._BAS, B1BA)  // _BAS: Base Address
                B1BA = ISH1 /* \ISH1 */
                Return (RBUF) /* \_SB_.PCI0.IISH.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((ISH0 == Zero) || (ISHD == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, ISH1, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If ((ISHP == Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }
        }

        Device (LPEA)
        {
            Name (_HID, "808622A8")  // _HID: Hardware ID
            Name (_CID, "808622A8")  // _CID: Compatible ID
            Name (_SUB, "17AA7005")  // _SUB: Subsystem ID
            Name (_DDN, "Intel(R) Low Power Audio Controller - 808622A8")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00200000,         // Address Length
                    _Y1C)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y1D)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00200000,         // Address Length
                    _Y1E)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000018,
                }
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000019,
                }
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000001A,
                }
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000001B,
                }
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000001C,
                }
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000001D,
                }
                GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullNone, 0x0000,
                    "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x004F
                    }
            })
            Name (WBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00200000,         // Address Length
                    _Y1F)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y20)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00200000,         // Address Length
                    _Y21)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000018,
                }
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000019,
                }
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000001A,
                }
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000001B,
                }
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000001C,
                }
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000001D,
                }
                GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x005B
                    }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                If (((BDID != 0x09) && (BDID != 0x0A)))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.LPEA._Y1C._BAS, B0BA)  // _BAS: Base Address
                    B0BA = LPE0 /* \LPE0 */
                    CreateDWordField (RBUF, \_SB.PCI0.LPEA._Y1D._BAS, B1BA)  // _BAS: Base Address
                    B1BA = LPE1 /* \LPE1 */
                    CreateDWordField (RBUF, \_SB.PCI0.LPEA._Y1E._BAS, B2BA)  // _BAS: Base Address
                    B2BA = LPE2 /* \LPE2 */
                    Return (RBUF) /* \_SB_.PCI0.LPEA.RBUF */
                }

                CreateDWordField (WBUF, \_SB.PCI0.LPEA._Y1F._BAS, B3BA)  // _BAS: Base Address
                B3BA = LPE0 /* \LPE0 */
                CreateDWordField (WBUF, \_SB.PCI0.LPEA._Y20._BAS, B4BA)  // _BAS: Base Address
                B4BA = LPE1 /* \LPE1 */
                CreateDWordField (WBUF, \_SB.PCI0.LPEA._Y21._BAS, B5BA)  // _BAS: Base Address
                B5BA = LPE2 /* \LPE2 */
                Return (WBUF) /* \_SB_.PCI0.LPEA.WBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((LPE0 != Zero) && (LPED == Zero)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If ((LPEP == Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
                Sleep (0x0A)
            }

            OperationRegion (KEYS, SystemMemory, LPE1, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }
        }

        Scope (\_SB)
        {
            Device (VIBR)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "VIBR22A8")  // _HID: Hardware ID
                Name (_CID, "VIBR22A8")  // _CID: Compatible ID
                Name (_DDN, "Intel(R) Vibra Driver - VIB8601")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0004
                            }
                    })
                    Name (SBUF, ResourceTemplate ()
                    {
                        GpioIo (Exclusive, PullNone, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0001
                            }
                    })
                    If ((BDID == One))
                    {
                        Return (SBUF) /* \_SB_.VIBR._CRS.SBUF */
                    }
                    Else
                    {
                        Return (RBUF) /* \_SB_.VIBR._CRS.RBUF */
                    }
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (((OSID != One) && ((BDID != 0x08) && 
                        (BDID != 0x0A))))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
            }
        }

        Device (HAD0)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "HAD022A8")  // _HID: Hardware ID
            Name (_CID, "HAD022A8")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) HDMI Audio Driver - HAD")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00065800,         // Address Base
                        0x00000140,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.PCI0.HAD0._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((OSID != One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }

        Device (SPRC)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y22)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y23)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y24)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y25)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y26)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y27)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y28)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y29)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y2A)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y2B)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y2C)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y2D)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y2E)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y2F)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y30)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y31)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y32)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y33)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y34)
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y22._BAS, BR01)  // _BAS: Base Address
                BR01 = EM1A /* \EM1A */
                If (((BR01 != Zero) && (BR01 != 0xFFFFF000)))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y22._LEN, LN01)  // _LEN: Length
                    LN01 = EM1L /* \EM1L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y23._BAS, BR02)  // _BAS: Base Address
                BR02 = SI1A /* \SI1A */
                If (((BR02 != Zero) && (BR02 != 0xFFFFF000)))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y23._LEN, LN02)  // _LEN: Length
                    LN02 = SI1L /* \SI1L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y24._BAS, BR03)  // _BAS: Base Address
                BR03 = SD1A /* \SD1A */
                If (((BR03 != Zero) && (BR03 != 0xFFFFF000)))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y24._LEN, LN03)  // _LEN: Length
                    LN03 = SD1L /* \SD1L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y25._BAS, BR04)  // _BAS: Base Address
                BR04 = D11A /* \D11A */
                If (((BR04 != Zero) && (BR04 != 0xFFFFF000)))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y25._LEN, LN04)  // _LEN: Length
                    LN04 = D11L /* \D11L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y26._BAS, BR05)  // _BAS: Base Address
                BR05 = P11A /* \P11A */
                If (((BR05 != Zero) && (BR05 != 0xFFFFF000)))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y26._LEN, LN05)  // _LEN: Length
                    LN05 = P11L /* \P11L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y27._BAS, BR06)  // _BAS: Base Address
                BR06 = P21A /* \P21A */
                If (((BR06 != Zero) && (BR06 != 0xFFFFF000)))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y27._LEN, LN06)  // _LEN: Length
                    LN06 = P21L /* \P21L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y28._BAS, BR07)  // _BAS: Base Address
                BR07 = U11A /* \U11A */
                If (((BR07 != Zero) && (BR07 != 0xFFFFF000)))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y28._LEN, LN07)  // _LEN: Length
                    LN07 = U11L /* \U11L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y29._BAS, BR08)  // _BAS: Base Address
                BR08 = U21A /* \U21A */
                If (((BR08 != Zero) && (BR08 != 0xFFFFF000)))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y29._LEN, LN08)  // _LEN: Length
                    LN08 = U21L /* \U21L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y2A._BAS, BR09)  // _BAS: Base Address
                BR09 = SP1A /* \SP1A */
                If (((BR09 != Zero) && (BR09 != 0xFFFFF000)))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y2A._LEN, LN09)  // _LEN: Length
                    LN09 = SP1L /* \SP1L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y2B._BAS, BR10)  // _BAS: Base Address
                BR10 = S21A /* \S21A */
                If (((BR10 != Zero) && (BR10 != 0xFFFFF000)))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y2B._LEN, LN10)  // _LEN: Length
                    LN10 = S21L /* \S21L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y2C._BAS, BR11)  // _BAS: Base Address
                BR11 = S31A /* \S31A */
                If (((BR11 != Zero) && (BR11 != 0xFFFFF000)))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y2C._LEN, LN11)  // _LEN: Length
                    LN11 = S31L /* \S31L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y2D._BAS, BR12)  // _BAS: Base Address
                BR12 = D21A /* \D21A */
                If (((BR12 != Zero) && (BR12 != 0xFFFFF000)))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y2D._LEN, LN12)  // _LEN: Length
                    LN12 = D21L /* \D21L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y2E._BAS, BR13)  // _BAS: Base Address
                BR13 = I11A /* \I11A */
                If (((BR13 != Zero) && (BR13 != 0xFFFFF000)))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y2E._LEN, LN13)  // _LEN: Length
                    LN13 = I11L /* \I11L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y2F._BAS, BR14)  // _BAS: Base Address
                BR14 = I21A /* \I21A */
                If (((BR14 != Zero) && (BR14 != 0xFFFFF000)))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y2F._LEN, LN14)  // _LEN: Length
                    LN14 = I21L /* \I21L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y30._BAS, BR15)  // _BAS: Base Address
                BR15 = I31A /* \I31A */
                If (((BR15 != Zero) && (BR15 != 0xFFFFF000)))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y30._LEN, LN15)  // _LEN: Length
                    LN15 = I31L /* \I31L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y31._BAS, BR16)  // _BAS: Base Address
                BR16 = I41A /* \I41A */
                If (((BR16 != Zero) && (BR16 != 0xFFFFF000)))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y31._LEN, LN16)  // _LEN: Length
                    LN16 = I41L /* \I41L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y32._BAS, BR17)  // _BAS: Base Address
                BR17 = I51A /* \I51A */
                If (((BR17 != Zero) && (BR17 != 0xFFFFF000)))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y32._LEN, LN17)  // _LEN: Length
                    LN17 = I51L /* \I51L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y33._BAS, BR18)  // _BAS: Base Address
                BR18 = I61A /* \I61A */
                If (((BR18 != Zero) && (BR18 != 0xFFFFF000)))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y33._LEN, LN18)  // _LEN: Length
                    LN18 = I61L /* \I61L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y34._BAS, BR19)  // _BAS: Base Address
                BR19 = I71A /* \I71A */
                If (((BR19 != Zero) && (BR19 != 0xFFFFF000)))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y34._LEN, LN19)  // _LEN: Length
                    LN19 = I71L /* \I71L */
                }

                Return (RBUF) /* \_SB_.PCI0.SPRC.RBUF */
            }
        }

        Device (SEC0)
        {
            Name (AHID, "TXE8086")
            Name (_ADR, 0x001A0000)  // _ADR: Address
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            OperationRegion (PMEB, PCI_Config, 0x84, 0x04)
            Field (PMEB, WordAcc, NoLock, Preserve)
            {
                Offset (0x01), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }

            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y35)
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                If ((((OSYS == 0x07DF) || (OSID == 0x04)) && (PAVL != 
                    Zero)))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SEC0._Y35._BAS, B0BA)  // _BAS: Base Address
                    CreateDWordField (RBUF, \_SB.PCI0.SEC0._Y35._LEN, B0LN)  // _LEN: Length
                    B0BA = PAVB /* \PAVB */
                    B0LN = PAVL /* \PAVL */
                    Return (RBUF) /* \_SB_.PCI0.SEC0.RBUF */
                }

                Return (Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (((Arg0 == ToUUID ("ad27b3f7-13af-4fa3-93c9-eefd1f9d6ac7")) && (PAVP != Zero)))
                {
                    Switch (Arg2)
                    {
                        Case (Zero)
                        {
                            Return (0x03)
                        }
                        Case (One)
                        {
                            Return (PAVB) /* \PAVB */
                        }
                        Default
                        {
                            Return (Zero)
                        }

                    }
                }
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (ISP3)
        {
            Name (_ADR, 0x00030000)  // _ADR: Address
            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                Return (Package (0x01)
                {
                    ID3C
                })
            }

            PowerResource (ID3C, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (((ISPD == 0x02) && (ISPE == One)))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                }
            }
        }

        Device (GFX0)
        {
            Name (_ADR, 0x00020000)  // _ADR: Address
            Name (PWMB, Zero)
            Name (CPR0, Package (0x01)
            {
                P33X
            })
            Name (UPR0, Package (0x01)
            {
                P33W
            })
            Name (_PR0, Package (0x02)  // _PR0: Power Resources for D0
            {
                P18W, 
                P33W
            })
            Name (XPR0, Package (0x01)
            {
                P06X
            })
            Name (TPR0, Package (0x02)
            {
                P12T, 
                P12A
            })
            Name (CDEP, Package (0x03)
            {
                PEPD, 
                I2C7, 
                ^I2C7.PMIC
            })
            Name (XDEP, Package (0x03)
            {
                PEPD, 
                I2C7, 
                ^I2C7.PMI1
            })
            Name (TDEP, Package (0x03)
            {
                PEPD, 
                I2C7, 
                ^I2C7.PMI2
            })
            Name (_DEP, Package (0x03)  // _DEP: Dependencies
            {
                PEPD, 
                I2C7, 
                ^I2C7.PMI5
            })
            Name (PDEP, Package (0x01)
            {
                PEPD
            })
            Name (SBUF, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x002C, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.PCI0.I2C2",
                    0x00, ResourceConsumer, , Exclusive,
                    )
            })
            Name (RBUF, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x002C, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.PCI0.I2C4",
                    0x00, ResourceConsumer, , Exclusive,
                    )
                GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0033
                    }
                GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0041
                    }
            })
            Name (QBUF, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x002C, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.PCI0.I2C4",
                    0x00, ResourceConsumer, , Exclusive,
                    )
                GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x003C
                    }
                GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0041
                    }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                If (((BDID == 0x08) || (BDID == 0x0A)))
                {
                    Return (SBUF) /* \_SB_.PCI0.GFX0.SBUF */
                }
                ElseIf ((PVTT == One))
                {
                    Return (QBUF) /* \_SB_.PCI0.GFX0.QBUF */
                }
                Else
                {
                    Return (RBUF) /* \_SB_.PCI0.GFX0.RBUF */
                }
            }

            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            OperationRegion (LPS2, SystemMemory, P11A, 0x0100)
            Field (LPS2, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x10), 
                BR0P,   32, 
                Offset (0x84), 
                PSAT,   32
            }

            OperationRegion (POP1, SystemMemory, BR0P, 0x0810)
            Field (POP1, DWordAcc, NoLock, Preserve)
            {
                PWMC,   32, 
                Offset (0x804), 
                RSTA,   1, 
                RSTF,   1, 
                Offset (0x808)
            }

            OperationRegion (PMCS, PCI_Config, 0xD4, 0x08)
            Field (PMCS, DWordAcc, NoLock, Preserve)
            {
                PSPS,   32
            }

            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
                Local0 = ^^^MBID.READ (0x04, 0xD5, 0x0F)
                Local0 &= 0xFFFFFFFE
                ^^^MBID.WRIT (0x04, 0xD5, 0x0F, Local0)
                Local0 = ^^^MBID.READ (0x04, 0xD5, 0x0F)
                If ((OSID != 0x04))
                {
                    If (((L11D != One) && (SOCS >= 0x10)))
                    {
                        Local0 = PSAT /* \_SB_.PCI0.GFX0.PSAT */
                        If (((Local0 & 0x03) == 0x03))
                        {
                            PSAT &= 0xFFFFFFFC
                            Local1 = PSAT /* \_SB_.PCI0.GFX0.PSAT */
                            RSTA = Zero
                            RSTF = Zero
                            RSTA = One
                            RSTF = One
                            PWMB |= 0xC0000000
                            PWMC = PWMB /* \_SB_.PCI0.GFX0.PWMB */
                        }
                    }
                }
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
                Local0 = ^^^MBID.READ (0x04, 0xD5, 0x0F)
                Local0 |= One
                ^^^MBID.WRIT (0x04, 0xD5, 0x0F, Local0)
                Local0 = ^^^MBID.READ (0x04, 0xD5, 0x0F)
                Notify (\_PR.CPU0, 0xC0) // Hardware-Specific
                Notify (\_PR.CPU1, 0xC0) // Hardware-Specific
                Notify (\_PR.CPU2, 0xC0) // Hardware-Specific
                Notify (\_PR.CPU3, 0xC0) // Hardware-Specific
                If ((OSID != 0x04))
                {
                    If (((L11D != One) && (SOCS >= 0x10)))
                    {
                        Local2 = PSPS /* \_SB_.PCI0.GFX0.PSPS */
                        Local2 &= 0x03
                        If ((Local2 == 0x03))
                        {
                            PWMB = PWMC /* \_SB_.PCI0.GFX0.PWMC */
                            PSAT |= 0x03
                            Local0 = PSAT /* \_SB_.PCI0.GFX0.PSAT */
                        }
                    }
                }
            }

            Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
            {
                DSEN = (Arg0 & 0x07)
            }

            Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
            {
                If ((ISPE == One))
                {
                    NDID = One
                }
                Else
                {
                    NDID = Zero
                }

                If ((DIDL != Zero))
                {
                    DID1 = SDDL (DIDL)
                }

                If ((DDL2 != Zero))
                {
                    DID2 = SDDL (DDL2)
                }

                If ((DDL3 != Zero))
                {
                    DID3 = SDDL (DDL3)
                }

                If ((DDL4 != Zero))
                {
                    DID4 = SDDL (DDL4)
                }

                If ((DDL5 != Zero))
                {
                    DID5 = SDDL (DDL5)
                }

                If ((NDID == One))
                {
                    Name (TMP1, Package (0x02)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    TMP1 [Zero] = (0x00010000 | DID1)
                    If ((ISPE == One))
                    {
                        TMP1 [One] = 0x000222B8
                    }
                    Else
                    {
                        TMP1 [One] = (0x00010000 | DID2)
                    }

                    Return (TMP1) /* \_SB_.PCI0.GFX0._DOD.TMP1 */
                }

                If ((NDID == 0x02))
                {
                    Name (TMP2, Package (0x03)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    TMP2 [Zero] = (0x00010000 | DID1)
                    TMP2 [One] = (0x00010000 | DID2)
                    If ((ISPE == One))
                    {
                        TMP2 [0x02] = 0x000222B8
                    }
                    Else
                    {
                        TMP2 [0x02] = (0x00010000 | DID3)
                    }

                    Return (TMP2) /* \_SB_.PCI0.GFX0._DOD.TMP2 */
                }

                If ((NDID == 0x03))
                {
                    Name (TMP3, Package (0x04)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    TMP3 [Zero] = (0x00010000 | DID1)
                    TMP3 [One] = (0x00010000 | DID2)
                    TMP3 [0x02] = (0x00010000 | DID3)
                    If ((ISPE == One))
                    {
                        TMP3 [0x03] = 0x000222B8
                    }
                    Else
                    {
                        TMP3 [0x03] = (0x00010000 | DID4)
                    }

                    Return (TMP3) /* \_SB_.PCI0.GFX0._DOD.TMP3 */
                }

                If ((NDID == 0x04))
                {
                    Name (TMP4, Package (0x05)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    TMP4 [Zero] = (0x00010000 | DID1)
                    TMP4 [One] = (0x00010000 | DID2)
                    TMP4 [0x02] = (0x00010000 | DID3)
                    TMP4 [0x03] = (0x00010000 | DID4)
                    If ((ISPE == One))
                    {
                        TMP4 [0x04] = 0x000222B8
                    }
                    Else
                    {
                        TMP4 [0x04] = (0x00010000 | DID5)
                    }

                    Return (TMP4) /* \_SB_.PCI0.GFX0._DOD.TMP4 */
                }

                If ((NDID > 0x04))
                {
                    Name (TMP5, Package (0x06)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    TMP5 [Zero] = (0x00010000 | DID1)
                    TMP5 [One] = (0x00010000 | DID2)
                    TMP5 [0x02] = (0x00010000 | DID3)
                    TMP5 [0x03] = (0x00010000 | DID4)
                    TMP5 [0x04] = (0x00010000 | DID5)
                    If ((ISPE == One))
                    {
                        TMP5 [0x05] = 0x000222B8
                    }
                    Else
                    {
                        TMP5 [0x05] = (0x00010000 | DID6)
                    }

                    Return (TMP5) /* \_SB_.PCI0.GFX0._DOD.TMP5 */
                }

                Return (Package (0x02)
                {
                    0x0400, 
                    0x000222B8
                })
            }

            Device (DD01)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If ((DID1 == Zero))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID1))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    Return (CDDS (DID1))
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID1))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }

                Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                {
                    Return (Package (0x66)
                    {
                        0x50, 
                        0x32, 
                        One, 
                        0x02, 
                        0x03, 
                        0x04, 
                        0x05, 
                        0x06, 
                        0x07, 
                        0x08, 
                        0x09, 
                        0x0A, 
                        0x0B, 
                        0x0C, 
                        0x0D, 
                        0x0E, 
                        0x0F, 
                        0x10, 
                        0x11, 
                        0x12, 
                        0x13, 
                        0x14, 
                        0x15, 
                        0x16, 
                        0x17, 
                        0x18, 
                        0x19, 
                        0x1A, 
                        0x1B, 
                        0x1C, 
                        0x1D, 
                        0x1E, 
                        0x1F, 
                        0x20, 
                        0x21, 
                        0x22, 
                        0x23, 
                        0x24, 
                        0x25, 
                        0x26, 
                        0x27, 
                        0x28, 
                        0x29, 
                        0x2A, 
                        0x2B, 
                        0x2C, 
                        0x2D, 
                        0x2E, 
                        0x2F, 
                        0x30, 
                        0x31, 
                        0x32, 
                        0x33, 
                        0x34, 
                        0x35, 
                        0x36, 
                        0x37, 
                        0x38, 
                        0x39, 
                        0x3A, 
                        0x3B, 
                        0x3C, 
                        0x3D, 
                        0x3E, 
                        0x3F, 
                        0x40, 
                        0x41, 
                        0x42, 
                        0x43, 
                        0x44, 
                        0x45, 
                        0x46, 
                        0x47, 
                        0x48, 
                        0x49, 
                        0x4A, 
                        0x4B, 
                        0x4C, 
                        0x4D, 
                        0x4E, 
                        0x4F, 
                        0x50, 
                        0x51, 
                        0x52, 
                        0x53, 
                        0x54, 
                        0x55, 
                        0x56, 
                        0x57, 
                        0x58, 
                        0x59, 
                        0x5A, 
                        0x5B, 
                        0x5C, 
                        0x5D, 
                        0x5E, 
                        0x5F, 
                        0x60, 
                        0x61, 
                        0x62, 
                        0x63, 
                        0x64
                    })
                }

                Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                {
                    If (((Arg0 >= Zero) && (Arg0 <= 0x64)))
                    {
                        AINT (One, Arg0)
                        BRTL = Arg0
                    }
                }

                Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                {
                    Return (BRTL) /* \BRTL */
                }
            }

            Device (DD02)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If ((DID2 == Zero))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID2))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    Return (CDDS (DID2))
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID2))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }

                Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                {
                    Return (Package (0x66)
                    {
                        0x50, 
                        0x32, 
                        One, 
                        0x02, 
                        0x03, 
                        0x04, 
                        0x05, 
                        0x06, 
                        0x07, 
                        0x08, 
                        0x09, 
                        0x0A, 
                        0x0B, 
                        0x0C, 
                        0x0D, 
                        0x0E, 
                        0x0F, 
                        0x10, 
                        0x11, 
                        0x12, 
                        0x13, 
                        0x14, 
                        0x15, 
                        0x16, 
                        0x17, 
                        0x18, 
                        0x19, 
                        0x1A, 
                        0x1B, 
                        0x1C, 
                        0x1D, 
                        0x1E, 
                        0x1F, 
                        0x20, 
                        0x21, 
                        0x22, 
                        0x23, 
                        0x24, 
                        0x25, 
                        0x26, 
                        0x27, 
                        0x28, 
                        0x29, 
                        0x2A, 
                        0x2B, 
                        0x2C, 
                        0x2D, 
                        0x2E, 
                        0x2F, 
                        0x30, 
                        0x31, 
                        0x32, 
                        0x33, 
                        0x34, 
                        0x35, 
                        0x36, 
                        0x37, 
                        0x38, 
                        0x39, 
                        0x3A, 
                        0x3B, 
                        0x3C, 
                        0x3D, 
                        0x3E, 
                        0x3F, 
                        0x40, 
                        0x41, 
                        0x42, 
                        0x43, 
                        0x44, 
                        0x45, 
                        0x46, 
                        0x47, 
                        0x48, 
                        0x49, 
                        0x4A, 
                        0x4B, 
                        0x4C, 
                        0x4D, 
                        0x4E, 
                        0x4F, 
                        0x50, 
                        0x51, 
                        0x52, 
                        0x53, 
                        0x54, 
                        0x55, 
                        0x56, 
                        0x57, 
                        0x58, 
                        0x59, 
                        0x5A, 
                        0x5B, 
                        0x5C, 
                        0x5D, 
                        0x5E, 
                        0x5F, 
                        0x60, 
                        0x61, 
                        0x62, 
                        0x63, 
                        0x64
                    })
                }

                Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                {
                    If (((Arg0 >= Zero) && (Arg0 <= 0x64)))
                    {
                        AINT (One, Arg0)
                        BRTL = Arg0
                    }
                }

                Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                {
                    Return (BRTL) /* \BRTL */
                }
            }

            Device (DD03)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If ((DID3 == Zero))
                    {
                        Return (0x03)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID3))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DID3 == Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID3))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID3))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }

                Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                {
                    Return (Package (0x66)
                    {
                        0x50, 
                        0x32, 
                        One, 
                        0x02, 
                        0x03, 
                        0x04, 
                        0x05, 
                        0x06, 
                        0x07, 
                        0x08, 
                        0x09, 
                        0x0A, 
                        0x0B, 
                        0x0C, 
                        0x0D, 
                        0x0E, 
                        0x0F, 
                        0x10, 
                        0x11, 
                        0x12, 
                        0x13, 
                        0x14, 
                        0x15, 
                        0x16, 
                        0x17, 
                        0x18, 
                        0x19, 
                        0x1A, 
                        0x1B, 
                        0x1C, 
                        0x1D, 
                        0x1E, 
                        0x1F, 
                        0x20, 
                        0x21, 
                        0x22, 
                        0x23, 
                        0x24, 
                        0x25, 
                        0x26, 
                        0x27, 
                        0x28, 
                        0x29, 
                        0x2A, 
                        0x2B, 
                        0x2C, 
                        0x2D, 
                        0x2E, 
                        0x2F, 
                        0x30, 
                        0x31, 
                        0x32, 
                        0x33, 
                        0x34, 
                        0x35, 
                        0x36, 
                        0x37, 
                        0x38, 
                        0x39, 
                        0x3A, 
                        0x3B, 
                        0x3C, 
                        0x3D, 
                        0x3E, 
                        0x3F, 
                        0x40, 
                        0x41, 
                        0x42, 
                        0x43, 
                        0x44, 
                        0x45, 
                        0x46, 
                        0x47, 
                        0x48, 
                        0x49, 
                        0x4A, 
                        0x4B, 
                        0x4C, 
                        0x4D, 
                        0x4E, 
                        0x4F, 
                        0x50, 
                        0x51, 
                        0x52, 
                        0x53, 
                        0x54, 
                        0x55, 
                        0x56, 
                        0x57, 
                        0x58, 
                        0x59, 
                        0x5A, 
                        0x5B, 
                        0x5C, 
                        0x5D, 
                        0x5E, 
                        0x5F, 
                        0x60, 
                        0x61, 
                        0x62, 
                        0x63, 
                        0x64
                    })
                }

                Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                {
                    If (((Arg0 >= Zero) && (Arg0 <= 0x64)))
                    {
                        AINT (One, Arg0)
                        BRTL = Arg0
                    }
                }

                Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                {
                    Return (BRTL) /* \BRTL */
                }
            }

            Device (DD04)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If ((DID4 == Zero))
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID4))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DID4 == Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID4))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID4))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }

                Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                {
                    Return (Package (0x66)
                    {
                        0x50, 
                        0x32, 
                        One, 
                        0x02, 
                        0x03, 
                        0x04, 
                        0x05, 
                        0x06, 
                        0x07, 
                        0x08, 
                        0x09, 
                        0x0A, 
                        0x0B, 
                        0x0C, 
                        0x0D, 
                        0x0E, 
                        0x0F, 
                        0x10, 
                        0x11, 
                        0x12, 
                        0x13, 
                        0x14, 
                        0x15, 
                        0x16, 
                        0x17, 
                        0x18, 
                        0x19, 
                        0x1A, 
                        0x1B, 
                        0x1C, 
                        0x1D, 
                        0x1E, 
                        0x1F, 
                        0x20, 
                        0x21, 
                        0x22, 
                        0x23, 
                        0x24, 
                        0x25, 
                        0x26, 
                        0x27, 
                        0x28, 
                        0x29, 
                        0x2A, 
                        0x2B, 
                        0x2C, 
                        0x2D, 
                        0x2E, 
                        0x2F, 
                        0x30, 
                        0x31, 
                        0x32, 
                        0x33, 
                        0x34, 
                        0x35, 
                        0x36, 
                        0x37, 
                        0x38, 
                        0x39, 
                        0x3A, 
                        0x3B, 
                        0x3C, 
                        0x3D, 
                        0x3E, 
                        0x3F, 
                        0x40, 
                        0x41, 
                        0x42, 
                        0x43, 
                        0x44, 
                        0x45, 
                        0x46, 
                        0x47, 
                        0x48, 
                        0x49, 
                        0x4A, 
                        0x4B, 
                        0x4C, 
                        0x4D, 
                        0x4E, 
                        0x4F, 
                        0x50, 
                        0x51, 
                        0x52, 
                        0x53, 
                        0x54, 
                        0x55, 
                        0x56, 
                        0x57, 
                        0x58, 
                        0x59, 
                        0x5A, 
                        0x5B, 
                        0x5C, 
                        0x5D, 
                        0x5E, 
                        0x5F, 
                        0x60, 
                        0x61, 
                        0x62, 
                        0x63, 
                        0x64
                    })
                }

                Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                {
                    If (((Arg0 >= Zero) && (Arg0 <= 0x64)))
                    {
                        AINT (One, Arg0)
                        BRTL = Arg0
                    }
                }

                Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                {
                    Return (BRTL) /* \BRTL */
                }
            }

            Device (DD05)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If ((DID5 == Zero))
                    {
                        Return (0x05)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID5))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DID5 == Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID5))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID5))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }

                Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                {
                    Return (Package (0x66)
                    {
                        0x50, 
                        0x32, 
                        One, 
                        0x02, 
                        0x03, 
                        0x04, 
                        0x05, 
                        0x06, 
                        0x07, 
                        0x08, 
                        0x09, 
                        0x0A, 
                        0x0B, 
                        0x0C, 
                        0x0D, 
                        0x0E, 
                        0x0F, 
                        0x10, 
                        0x11, 
                        0x12, 
                        0x13, 
                        0x14, 
                        0x15, 
                        0x16, 
                        0x17, 
                        0x18, 
                        0x19, 
                        0x1A, 
                        0x1B, 
                        0x1C, 
                        0x1D, 
                        0x1E, 
                        0x1F, 
                        0x20, 
                        0x21, 
                        0x22, 
                        0x23, 
                        0x24, 
                        0x25, 
                        0x26, 
                        0x27, 
                        0x28, 
                        0x29, 
                        0x2A, 
                        0x2B, 
                        0x2C, 
                        0x2D, 
                        0x2E, 
                        0x2F, 
                        0x30, 
                        0x31, 
                        0x32, 
                        0x33, 
                        0x34, 
                        0x35, 
                        0x36, 
                        0x37, 
                        0x38, 
                        0x39, 
                        0x3A, 
                        0x3B, 
                        0x3C, 
                        0x3D, 
                        0x3E, 
                        0x3F, 
                        0x40, 
                        0x41, 
                        0x42, 
                        0x43, 
                        0x44, 
                        0x45, 
                        0x46, 
                        0x47, 
                        0x48, 
                        0x49, 
                        0x4A, 
                        0x4B, 
                        0x4C, 
                        0x4D, 
                        0x4E, 
                        0x4F, 
                        0x50, 
                        0x51, 
                        0x52, 
                        0x53, 
                        0x54, 
                        0x55, 
                        0x56, 
                        0x57, 
                        0x58, 
                        0x59, 
                        0x5A, 
                        0x5B, 
                        0x5C, 
                        0x5D, 
                        0x5E, 
                        0x5F, 
                        0x60, 
                        0x61, 
                        0x62, 
                        0x63, 
                        0x64
                    })
                }

                Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                {
                    If (((Arg0 >= Zero) && (Arg0 <= 0x64)))
                    {
                        AINT (One, Arg0)
                        BRTL = Arg0
                    }
                }

                Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                {
                    Return (BRTL) /* \BRTL */
                }
            }

            Device (DD06)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If ((DID6 == Zero))
                    {
                        Return (0x06)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID6))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DID6 == Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID6))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID6))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }

                Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                {
                    Return (Package (0x66)
                    {
                        0x50, 
                        0x32, 
                        One, 
                        0x02, 
                        0x03, 
                        0x04, 
                        0x05, 
                        0x06, 
                        0x07, 
                        0x08, 
                        0x09, 
                        0x0A, 
                        0x0B, 
                        0x0C, 
                        0x0D, 
                        0x0E, 
                        0x0F, 
                        0x10, 
                        0x11, 
                        0x12, 
                        0x13, 
                        0x14, 
                        0x15, 
                        0x16, 
                        0x17, 
                        0x18, 
                        0x19, 
                        0x1A, 
                        0x1B, 
                        0x1C, 
                        0x1D, 
                        0x1E, 
                        0x1F, 
                        0x20, 
                        0x21, 
                        0x22, 
                        0x23, 
                        0x24, 
                        0x25, 
                        0x26, 
                        0x27, 
                        0x28, 
                        0x29, 
                        0x2A, 
                        0x2B, 
                        0x2C, 
                        0x2D, 
                        0x2E, 
                        0x2F, 
                        0x30, 
                        0x31, 
                        0x32, 
                        0x33, 
                        0x34, 
                        0x35, 
                        0x36, 
                        0x37, 
                        0x38, 
                        0x39, 
                        0x3A, 
                        0x3B, 
                        0x3C, 
                        0x3D, 
                        0x3E, 
                        0x3F, 
                        0x40, 
                        0x41, 
                        0x42, 
                        0x43, 
                        0x44, 
                        0x45, 
                        0x46, 
                        0x47, 
                        0x48, 
                        0x49, 
                        0x4A, 
                        0x4B, 
                        0x4C, 
                        0x4D, 
                        0x4E, 
                        0x4F, 
                        0x50, 
                        0x51, 
                        0x52, 
                        0x53, 
                        0x54, 
                        0x55, 
                        0x56, 
                        0x57, 
                        0x58, 
                        0x59, 
                        0x5A, 
                        0x5B, 
                        0x5C, 
                        0x5D, 
                        0x5E, 
                        0x5F, 
                        0x60, 
                        0x61, 
                        0x62, 
                        0x63, 
                        0x64
                    })
                }

                Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                {
                    If (((Arg0 >= Zero) && (Arg0 <= 0x64)))
                    {
                        AINT (One, Arg0)
                        BRTL = Arg0
                    }
                }

                Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                {
                    Return (BRTL) /* \BRTL */
                }
            }

            Device (DD07)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If ((DID7 == Zero))
                    {
                        Return (0x07)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID7))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DID7 == Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID7))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID7))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }

                Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                {
                    Return (Package (0x66)
                    {
                        0x50, 
                        0x32, 
                        One, 
                        0x02, 
                        0x03, 
                        0x04, 
                        0x05, 
                        0x06, 
                        0x07, 
                        0x08, 
                        0x09, 
                        0x0A, 
                        0x0B, 
                        0x0C, 
                        0x0D, 
                        0x0E, 
                        0x0F, 
                        0x10, 
                        0x11, 
                        0x12, 
                        0x13, 
                        0x14, 
                        0x15, 
                        0x16, 
                        0x17, 
                        0x18, 
                        0x19, 
                        0x1A, 
                        0x1B, 
                        0x1C, 
                        0x1D, 
                        0x1E, 
                        0x1F, 
                        0x20, 
                        0x21, 
                        0x22, 
                        0x23, 
                        0x24, 
                        0x25, 
                        0x26, 
                        0x27, 
                        0x28, 
                        0x29, 
                        0x2A, 
                        0x2B, 
                        0x2C, 
                        0x2D, 
                        0x2E, 
                        0x2F, 
                        0x30, 
                        0x31, 
                        0x32, 
                        0x33, 
                        0x34, 
                        0x35, 
                        0x36, 
                        0x37, 
                        0x38, 
                        0x39, 
                        0x3A, 
                        0x3B, 
                        0x3C, 
                        0x3D, 
                        0x3E, 
                        0x3F, 
                        0x40, 
                        0x41, 
                        0x42, 
                        0x43, 
                        0x44, 
                        0x45, 
                        0x46, 
                        0x47, 
                        0x48, 
                        0x49, 
                        0x4A, 
                        0x4B, 
                        0x4C, 
                        0x4D, 
                        0x4E, 
                        0x4F, 
                        0x50, 
                        0x51, 
                        0x52, 
                        0x53, 
                        0x54, 
                        0x55, 
                        0x56, 
                        0x57, 
                        0x58, 
                        0x59, 
                        0x5A, 
                        0x5B, 
                        0x5C, 
                        0x5D, 
                        0x5E, 
                        0x5F, 
                        0x60, 
                        0x61, 
                        0x62, 
                        0x63, 
                        0x64
                    })
                }

                Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                {
                    If (((Arg0 >= Zero) && (Arg0 <= 0x64)))
                    {
                        AINT (One, Arg0)
                        BRTL = Arg0
                    }
                }

                Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                {
                    Return (BRTL) /* \BRTL */
                }
            }

            Device (DD08)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If ((DID8 == Zero))
                    {
                        Return (0x08)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID8))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If ((DID8 == Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID8))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID8))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (((Arg0 & 0xC0000000) == 0xC0000000))
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }

                Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                {
                    Return (Package (0x66)
                    {
                        0x50, 
                        0x32, 
                        One, 
                        0x02, 
                        0x03, 
                        0x04, 
                        0x05, 
                        0x06, 
                        0x07, 
                        0x08, 
                        0x09, 
                        0x0A, 
                        0x0B, 
                        0x0C, 
                        0x0D, 
                        0x0E, 
                        0x0F, 
                        0x10, 
                        0x11, 
                        0x12, 
                        0x13, 
                        0x14, 
                        0x15, 
                        0x16, 
                        0x17, 
                        0x18, 
                        0x19, 
                        0x1A, 
                        0x1B, 
                        0x1C, 
                        0x1D, 
                        0x1E, 
                        0x1F, 
                        0x20, 
                        0x21, 
                        0x22, 
                        0x23, 
                        0x24, 
                        0x25, 
                        0x26, 
                        0x27, 
                        0x28, 
                        0x29, 
                        0x2A, 
                        0x2B, 
                        0x2C, 
                        0x2D, 
                        0x2E, 
                        0x2F, 
                        0x30, 
                        0x31, 
                        0x32, 
                        0x33, 
                        0x34, 
                        0x35, 
                        0x36, 
                        0x37, 
                        0x38, 
                        0x39, 
                        0x3A, 
                        0x3B, 
                        0x3C, 
                        0x3D, 
                        0x3E, 
                        0x3F, 
                        0x40, 
                        0x41, 
                        0x42, 
                        0x43, 
                        0x44, 
                        0x45, 
                        0x46, 
                        0x47, 
                        0x48, 
                        0x49, 
                        0x4A, 
                        0x4B, 
                        0x4C, 
                        0x4D, 
                        0x4E, 
                        0x4F, 
                        0x50, 
                        0x51, 
                        0x52, 
                        0x53, 
                        0x54, 
                        0x55, 
                        0x56, 
                        0x57, 
                        0x58, 
                        0x59, 
                        0x5A, 
                        0x5B, 
                        0x5C, 
                        0x5D, 
                        0x5E, 
                        0x5F, 
                        0x60, 
                        0x61, 
                        0x62, 
                        0x63, 
                        0x64
                    })
                }

                Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                {
                    If (((Arg0 >= Zero) && (Arg0 <= 0x64)))
                    {
                        AINT (One, Arg0)
                        BRTL = Arg0
                    }
                }

                Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                {
                    Return (BRTL) /* \BRTL */
                }
            }

            Method (SDDL, 1, NotSerialized)
            {
                NDID++
                Local0 = (Arg0 & 0x0F0F)
                Local1 = (0x80000000 | Local0)
                If ((DIDL == Local0))
                {
                    Return (Local1)
                }

                If ((DDL2 == Local0))
                {
                    Return (Local1)
                }

                If ((DDL3 == Local0))
                {
                    Return (Local1)
                }

                If ((DDL4 == Local0))
                {
                    Return (Local1)
                }

                If ((DDL5 == Local0))
                {
                    Return (Local1)
                }

                If ((DDL6 == Local0))
                {
                    Return (Local1)
                }

                If ((DDL7 == Local0))
                {
                    Return (Local1)
                }

                If ((DDL8 == Local0))
                {
                    Return (Local1)
                }

                Return (Zero)
            }

            Method (CDDS, 1, NotSerialized)
            {
                Local0 = (Arg0 & 0x0F0F)
                If ((Zero == Local0))
                {
                    Return (0x1D)
                }

                If ((CADL == Local0))
                {
                    Return (0x1F)
                }

                If ((CAL2 == Local0))
                {
                    Return (0x1F)
                }

                If ((CAL3 == Local0))
                {
                    Return (0x1F)
                }

                If ((CAL4 == Local0))
                {
                    Return (0x1F)
                }

                If ((CAL5 == Local0))
                {
                    Return (0x1F)
                }

                If ((CAL6 == Local0))
                {
                    Return (0x1F)
                }

                If ((CAL7 == Local0))
                {
                    Return (0x1F)
                }

                If ((CAL8 == Local0))
                {
                    Return (0x1F)
                }

                Return (0x1D)
            }

            Method (NDDS, 1, NotSerialized)
            {
                Local0 = (Arg0 & 0x0F0F)
                If ((Zero == Local0))
                {
                    Return (Zero)
                }

                If ((NADL == Local0))
                {
                    Return (One)
                }

                If ((NDL2 == Local0))
                {
                    Return (One)
                }

                If ((NDL3 == Local0))
                {
                    Return (One)
                }

                If ((NDL4 == Local0))
                {
                    Return (One)
                }

                If ((NDL5 == Local0))
                {
                    Return (One)
                }

                If ((NDL6 == Local0))
                {
                    Return (One)
                }

                If ((NDL7 == Local0))
                {
                    Return (One)
                }

                If ((NDL8 == Local0))
                {
                    Return (One)
                }

                Return (Zero)
            }

            OperationRegion (IGDP, PCI_Config, Zero, 0x0100)
            Field (IGDP, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                MADR,   32, 
                Offset (0x50), 
                    ,   1, 
                GIVD,   1, 
                    ,   1, 
                GUMA,   5, 
                Offset (0x52), 
                Offset (0x54), 
                    ,   4, 
                GMFN,   1, 
                Offset (0x58), 
                Offset (0x5C), 
                GSTM,   32, 
                Offset (0xE0), 
                GSSE,   1, 
                GSSB,   14, 
                GSES,   1, 
                Offset (0xE4), 
                ASLE,   8, 
                Offset (0xE8), 
                Offset (0xFC), 
                ASLS,   32
            }

            OperationRegion (IGMM, SystemMemory, MADR, 0x3000)
            Field (IGMM, AnyAcc, NoLock, Preserve)
            {
                Offset (0x20C8), 
                    ,   4, 
                DCFE,   4
            }

            OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)
            Field (IGDM, AnyAcc, NoLock, Preserve)
            {
                SIGN,   128, 
                SIZE,   32, 
                OVER,   32, 
                SVER,   256, 
                VVER,   128, 
                GVER,   128, 
                MBOX,   32, 
                DMOD,   32, 
                Offset (0x100), 
                DRDY,   32, 
                CSTS,   32, 
                CEVT,   32, 
                Offset (0x120), 
                DIDL,   32, 
                DDL2,   32, 
                DDL3,   32, 
                DDL4,   32, 
                DDL5,   32, 
                DDL6,   32, 
                DDL7,   32, 
                DDL8,   32, 
                CPDL,   32, 
                CPL2,   32, 
                CPL3,   32, 
                CPL4,   32, 
                CPL5,   32, 
                CPL6,   32, 
                CPL7,   32, 
                CPL8,   32, 
                CAD1,   32, 
                CAL2,   32, 
                CAL3,   32, 
                CAL4,   32, 
                CAL5,   32, 
                CAL6,   32, 
                CAL7,   32, 
                CAL8,   32, 
                NADL,   32, 
                NDL2,   32, 
                NDL3,   32, 
                NDL4,   32, 
                NDL5,   32, 
                NDL6,   32, 
                NDL7,   32, 
                NDL8,   32, 
                ASLP,   32, 
                TIDX,   32, 
                CHPD,   32, 
                CLID,   32, 
                CDCK,   32, 
                SXSW,   32, 
                EVTS,   32, 
                CNOT,   32, 
                NRDY,   32, 
                Offset (0x200), 
                SCIE,   1, 
                GEFC,   4, 
                GXFC,   3, 
                GESF,   8, 
                Offset (0x204), 
                PARM,   32, 
                DSLP,   32, 
                Offset (0x300), 
                ARDY,   32, 
                ASLC,   32, 
                TCHE,   32, 
                ALSI,   32, 
                BCLP,   32, 
                PFIT,   32, 
                CBLV,   32, 
                BCLM,   320, 
                CPFM,   32, 
                EPFM,   32, 
                PLUT,   592, 
                PFMB,   32, 
                CCDV,   32, 
                PCFT,   32, 
                Offset (0x400), 
                GVD1,   49152, 
                PHED,   32, 
                BDDC,   2048
            }

            Name (DBTB, Package (0x15)
            {
                Zero, 
                0x07, 
                0x38, 
                0x01C0, 
                0x0E00, 
                0x3F, 
                0x01C7, 
                0x0E07, 
                0x01F8, 
                0x0E38, 
                0x0FC0, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x7000, 
                0x7007, 
                0x7038, 
                0x71C0, 
                0x7E00
            })
            Name (CDCT, Package (0x06)
            {
                Package (0x01)
                {
                    0xA0
                }, 

                Package (0x01)
                {
                    0xC8
                }, 

                Package (0x01)
                {
                    0x010B
                }, 

                Package (0x01)
                {
                    0x0140
                }, 

                Package (0x01)
                {
                    0x0164
                }, 

                Package (0x01)
                {
                    0x0190
                }
            })
            Name (SUCC, One)
            Name (NVLD, 0x02)
            Name (CRIT, 0x04)
            Name (NCRT, 0x06)
            Method (GSCI, 0, Serialized)
            {
                Method (GBDA, 0, Serialized)
                {
                    If ((GESF == Zero))
                    {
                        PARM = 0x0279
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == One))
                    {
                        PARM = 0x0240
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x04))
                    {
                        PARM &= 0xEFFF0000
                        PARM &= (DerefOf (DBTB [IBTT]) << 0x10)
                        PARM |= IBTT /* \_SB_.PCI0.GFX0.PARM */
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x05))
                    {
                        PARM = IPSC /* \IPSC */
                        PARM |= (IPAT << 0x08)
                        PARM += 0x0100
                        PARM |= (LIDS << 0x10)
                        PARM += 0x00010000
                        PARM |= (IBLC << 0x12)
                        PARM |= (IBIA << 0x14)
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x06))
                    {
                        PARM = ITVF /* \ITVF */
                        PARM |= (ITVM << 0x04)
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x07))
                    {
                        PARM = GIVD /* \_SB_.PCI0.GFX0.GIVD */
                        PARM ^= One
                        PARM |= (GMFN << One)
                        PARM |= 0x1800
                        PARM |= (IDMS << 0x11)
                        PARM |= (DerefOf (CDCT [DCFE]) << 0x15) /* \_SB_.PCI0.GFX0.PARM */
                        GESF = One
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x0A))
                    {
                        PARM = Zero
                        If (ISSC)
                        {
                            PARM |= 0x03
                        }

                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    GESF = Zero
                    Return (CRIT) /* \_SB_.PCI0.GFX0.CRIT */
                }

                Method (SBCB, 0, Serialized)
                {
                    If ((GESF == Zero))
                    {
                        PARM = Zero
                        If ((PFLV == FMBL))
                        {
                            PARM = 0x000F87FD
                        }

                        If ((PFLV == FDTP))
                        {
                            PARM = 0x000F87BD
                        }

                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == One))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x03))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x04))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x05))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x06))
                    {
                        ITVF = (PARM & 0x0F)
                        ITVM = ((PARM & 0xF0) >> 0x04)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x07))
                    {
                        If ((PARM == Zero))
                        {
                            Local0 = CLID /* \_SB_.PCI0.GFX0.CLID */
                            If ((0x80000000 & Local0))
                            {
                                CLID &= 0x0F
                                GLID (CLID)
                            }
                        }

                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x08))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x09))
                    {
                        IBTT = (PARM & 0xFF)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x0A))
                    {
                        IPSC = (PARM & 0xFF)
                        If (((PARM >> 0x08) & 0xFF))
                        {
                            IPAT = ((PARM >> 0x08) & 0xFF)
                            IPAT--
                        }

                        IBLC = ((PARM >> 0x12) & 0x03)
                        IBIA = ((PARM >> 0x14) & 0x07)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x0B))
                    {
                        IF1E = ((PARM >> One) & One)
                        IDMS = ((PARM >> 0x11) & 0x0F)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x10))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x11))
                    {
                        PARM = (LIDS << 0x08)
                        PARM += 0x0100
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x12))
                    {
                        If ((PARM & One))
                        {
                            If (((PARM >> One) == One))
                            {
                                ISSC = One
                            }
                            Else
                            {
                                GESF = Zero
                                Return (CRIT) /* \_SB_.PCI0.GFX0.CRIT */
                            }
                        }
                        Else
                        {
                            ISSC = Zero
                        }

                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x13))
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GESF == 0x14))
                    {
                        PAVP = (PARM & 0x0F)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    GESF = Zero
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                If ((GEFC == 0x04))
                {
                    GXFC = GBDA ()
                }

                If ((GEFC == 0x06))
                {
                    GXFC = SBCB ()
                }

                GEFC = Zero
                SCIS = One
                GSSE = Zero
                SCIE = Zero
                Return (Zero)
            }

            Method (PDRD, 0, NotSerialized)
            {
                If (!DRDY)
                {
                    Sleep (ASLP)
                }

                Return (!DRDY)
            }

            Method (PSTS, 0, NotSerialized)
            {
                If ((CSTS > 0x02))
                {
                    Sleep (ASLP)
                }

                Return ((CSTS == 0x03))
            }

            Method (GNOT, 2, NotSerialized)
            {
                If (PDRD ())
                {
                    Return (One)
                }

                CEVT = Arg0
                CSTS = 0x03
                If (((CHPD == Zero) && (Arg1 == Zero)))
                {
                    If (((OSYS > 0x07D0) || (OSYS < 0x07D6)))
                    {
                        Notify (PCI0, Arg1)
                    }
                    Else
                    {
                        Notify (GFX0, Arg1)
                    }
                }

                Notify (GFX0, 0x80) // Status Change
                Return (Zero)
            }

            Method (GHDS, 1, NotSerialized)
            {
                TIDX = Arg0
                Return (GNOT (One, Zero))
            }

            Method (GLID, 1, NotSerialized)
            {
                CLID = Arg0
                Return (GNOT (0x02, Zero))
            }

            Method (GDCK, 1, NotSerialized)
            {
                CDCK = Arg0
                Return (GNOT (0x04, Zero))
            }

            Method (PARD, 0, NotSerialized)
            {
                If (!ARDY)
                {
                    Sleep (ASLP)
                }

                Return (!ARDY)
            }

            Method (AINT, 2, NotSerialized)
            {
                If (!(TCHE & (One << Arg0)))
                {
                    Return (One)
                }

                If (PARD ())
                {
                    Return (One)
                }

                If ((Arg0 == 0x02))
                {
                    If (CPFM)
                    {
                        Local0 = (CPFM & 0x0F)
                        Local1 = (EPFM & 0x0F)
                        If ((Local0 == One))
                        {
                            If ((Local1 & 0x06))
                            {
                                PFIT = 0x06
                            }
                            ElseIf ((Local1 & 0x08))
                            {
                                PFIT = 0x08
                            }
                            Else
                            {
                                PFIT = One
                            }
                        }

                        If ((Local0 == 0x06))
                        {
                            If ((Local1 & 0x08))
                            {
                                PFIT = 0x08
                            }
                            ElseIf ((Local1 & One))
                            {
                                PFIT = One
                            }
                            Else
                            {
                                PFIT = 0x06
                            }
                        }

                        If ((Local0 == 0x08))
                        {
                            If ((Local1 & One))
                            {
                                PFIT = One
                            }
                            ElseIf ((Local1 & 0x06))
                            {
                                PFIT = 0x06
                            }
                            Else
                            {
                                PFIT = 0x08
                            }
                        }
                    }
                    Else
                    {
                        PFIT ^= 0x07
                    }

                    PFIT |= 0x80000000
                    ASLC = 0x04
                }
                ElseIf ((Arg0 == One))
                {
                    BCLP = ((Arg1 * 0xFF) / 0x64)
                    BCLP |= 0x80000000
                    ASLC = 0x02
                }
                ElseIf ((Arg0 == Zero))
                {
                    ALSI = Arg1
                    ASLC = One
                }
                Else
                {
                    Return (One)
                }

                ASLE = One
                Return (Zero)
            }

            Method (SCIP, 0, NotSerialized)
            {
                If ((OVER != Zero))
                {
                    Return (!GSMI)
                }

                Return (Zero)
            }

            Device (ISP0)
            {
                Name (_ADR, 0x22B8)  // _ADR: Address
                Name (_DDN, "CHV ISP - 808622B8")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (((ISPA != Zero) && (ISPD == One)))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Name (SBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00400000,         // Address Length
                        _Y36)
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    CreateDWordField (SBUF, \_SB.PCI0.GFX0.ISP0._Y36._BAS, B0BA)  // _BAS: Base Address
                    B0BA = ISPA /* \ISPA */
                    Return (SBUF) /* \_SB_.PCI0.GFX0.ISP0.SBUF */
                }

                Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                {
                }

                Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                {
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == One))
                    {
                        Return (One)
                    }
                    ElseIf ((Arg0 == 0x02))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }

        Device (HIDD)
        {
            Name (_HID, "INT33D5")  // _HID: Hardware ID
            Name (_CID, "INT33D5")  // _CID: Compatible ID
            Name (HBSY, Zero)
            Name (HIDX, Zero)
            Name (HMDE, Zero)
            Name (HRDY, Zero)
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (HDDM, 0, Serialized)
            {
                Name (DPKG, Package (0x04)
                {
                    0x11111111, 
                    0x22222222, 
                    0x33333333, 
                    0x44444444
                })
                Return (DPKG) /* \_SB_.PCI0.HIDD.HDDM.DPKG */
            }

            Method (HDEM, 0, Serialized)
            {
                HBSY = Zero
                If ((HMDE == Zero))
                {
                    Return (HIDX) /* \_SB_.PCI0.HIDD.HIDX */
                }

                Return (HMDE) /* \_SB_.PCI0.HIDD.HMDE */
            }

            Method (HDMM, 0, Serialized)
            {
                Return (HMDE) /* \_SB_.PCI0.HIDD.HMDE */
            }

            Method (HDSM, 1, Serialized)
            {
                HRDY = Arg0
            }

            Method (HPEM, 1, Serialized)
            {
                HBSY = One
                If ((HMDE == Zero))
                {
                    HIDX = Arg0
                }
                Else
                {
                    HIDX = Arg0
                }

                Notify (HIDD, 0xC0) // Hardware-Specific
                Local0 = Zero
                While (((Local0 < 0xFA) && HBSY))
                {
                    Sleep (0x04)
                    Local0++
                }

                If ((HBSY == One))
                {
                    HBSY = Zero
                    HIDX = Zero
                    Return (One)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (PISH)
        {
            Name (_ADR, 0x000A0000)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("1730e71d-e5dd-4a34-be57-4d76b6a2fe37")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Switch (DerefOf (Arg3 [Zero]))
                        {
                            Case (Zero)
                            {
                                ^^HIDD.HPEM (0x1B)
                            }
                            Case (One)
                            {
                            }
                            Case (0x02)
                            {
                            }
                            Case (0x03)
                            {
                            }

                        }

                        Return (Zero)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
        }
    }

    Scope (_PR)
    {
        Processor (CPU0, 0x01, 0x00000000, 0x00){}
        Processor (CPU1, 0x02, 0x00000000, 0x00){}
        Processor (CPU2, 0x03, 0x00000000, 0x00){}
        Processor (CPU3, 0x04, 0x00000000, 0x00){}
    }

    Name (PICM, Zero)
    Mutex (MUTX, 0x00)
    OperationRegion (PRT0, SystemIO, 0x80, 0x04)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P80H,   32
    }

    Method (P8XH, 2, Serialized)
    {
        If ((Arg0 == Zero))
        {
            P80D = ((P80D & 0xFFFFFF00) | Arg1)
        }

        If ((Arg0 == One))
        {
            P80D = ((P80D & 0xFFFF00FF) | (Arg1 << 0x08))
        }

        If ((Arg0 == 0x02))
        {
            P80D = ((P80D & 0xFF00FFFF) | (Arg1 << 0x10))
        }

        If ((Arg0 == 0x03))
        {
            P80D = ((P80D & 0x00FFFFFF) | (Arg1 << 0x18))
        }

        P80H = P80D /* \P80D */
    }

    OperationRegion (SPRT, SystemIO, 0xB2, 0x02)
    Field (SPRT, ByteAcc, Lock, Preserve)
    {
        SSMP,   8
    }

    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        GPIC = Arg0
        PICM = Arg0
    }

    OperationRegion (SWC0, SystemIO, 0x0610, 0x0F)
    Field (SWC0, ByteAcc, NoLock, Preserve)
    {
        G1S,    8, 
        Offset (0x04), 
        G1E,    8, 
        Offset (0x0A), 
        G1S2,   8, 
        G1S3,   8
    }

    OperationRegion (SWC1, SystemIO, PMBS, 0x2C)
    Field (SWC1, DWordAcc, NoLock, Preserve)
    {
        Offset (0x20), 
        G0S,    32, 
        Offset (0x28), 
        G0EN,   32
    }

    OperationRegion (MLRD, SystemIO, 0x72, 0x02)
    Field (MLRD, ByteAcc, Lock, Preserve)
    {
        CMIF,   8, 
        CMIE,   8
    }

    Method (WRCM, 2, NotSerialized)
    {
        Local0 = (Arg0 & 0xFF)
        CMIF = Local0
        Local1 = (Arg1 & 0xFF)
        CMIE = Local1
    }

    Method (RDCM, 1, NotSerialized)
    {
        Local3 = Zero
        CMIF = Arg0
        Local3 = CMIE /* \CMIE */
        Return (Local3)
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        P80D = Zero
        P8XH (Zero, Arg0)
        G1S3 = Ones
        G1S2 = Ones
        G1S = One
        G1E = One
        G0S = Ones
        If (((Arg0 == 0x04) || (Arg0 == 0x05)))
        {
            G0EN = Zero
            PWBS = One
            PM1S = One
        }

        If (CondRefOf (\_SB.TPM.PTS))
        {
            \_SB.TPM.PTS (Arg0)
        }
    }

    Method (_WAK, 1, Serialized)  // _WAK: Wake
    {
        P8XH (One, 0xAB)
        If (NEXP)
        {
            If ((OSCC & 0x02))
            {
                \_SB.PCI0.NHPG ()
            }

            If ((OSCC & 0x04))
            {
                \_SB.PCI0.NPME ()
            }
        }

        If (((Arg0 == 0x03) || (Arg0 == 0x04)))
        {
            \_SB.TOFF.ISPO = Zero
            \_SB.TOFF.RUNI = Zero
            If ((PFLV == FMBL))
            {
                If ((Arg0 == 0x04))
                {
                    PNOT ()
                }
            }

            If ((CFGD & 0x01000000)){}
            If ((OSYS == 0x07D2))
            {
                If ((CFGD & One))
                {
                    If ((\_PR.CPU0._PPC > Zero))
                    {
                        \_PR.CPU0._PPC -= One
                        PNOT ()
                        \_PR.CPU0._PPC += One
                        PNOT ()
                    }
                    Else
                    {
                        \_PR.CPU0._PPC += One
                        PNOT ()
                        \_PR.CPU0._PPC -= One
                        PNOT ()
                    }
                }
            }
        }

        Return (Package (0x02)
        {
            Zero, 
            Zero
        })
    }

    Method (PNOT, 0, Serialized)
    {
        If (MPEN)
        {
            If ((PDC0 & 0x08))
            {
                Notify (\_PR.CPU0, 0x80) // Performance Capability Change
                If ((PDC0 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU0, 0x81) // C-State Change
                }
            }

            If ((PDC1 & 0x08))
            {
                Notify (\_PR.CPU1, 0x80) // Performance Capability Change
                If ((PDC1 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU1, 0x81) // C-State Change
                }
            }

            If ((PDC2 & 0x08))
            {
                Notify (\_PR.CPU2, 0x80) // Performance Capability Change
                If ((PDC2 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU2, 0x81) // C-State Change
                }
            }

            If ((PDC3 & 0x08))
            {
                Notify (\_PR.CPU3, 0x80) // Performance Capability Change
                If ((PDC3 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU3, 0x81) // C-State Change
                }
            }
        }
        Else
        {
            Notify (\_PR.CPU0, 0x80) // Performance Capability Change
            Sleep (0x64)
            Notify (\_PR.CPU0, 0x81) // C-State Change
        }
    }

    Scope (_SB)
    {
        Name (CRTT, 0x6E)
        Name (ACTT, 0x55)
        Name (SCR0, 0x0102)
        Name (SCR1, 0x0102)
        Name (SCR2, 0x0102)
        Name (SCR3, 0x0102)
        Name (GCR0, 0x46)
        Name (GCR1, 0x46)
        Name (GCR2, 0x46)
        Name (GCR3, 0x46)
        Name (GCR4, 0x46)
        Name (PST0, 0x3C)
        Name (PST1, 0x3C)
        Name (PST2, 0x3C)
        Name (PST3, 0x3C)
        Name (PST4, 0x3C)
        Name (WCR0, 0x4B)
        Name (WPPT, 0x28)
        Name (LPMV, 0x03)
        Name (PDBG, Zero)
        Name (PDPM, One)
        Name (PDBP, One)
        Name (DLPO, Package (0x06)
        {
            One, 
            One, 
            One, 
            0x19, 
            One, 
            One
        })
        Name (BRQD, Zero)
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            CRTT = DPCT /* \DPCT */
            ACTT = DPPT /* \DPPT */
            GCR0 = DGC0 /* \DGC0 */
            GCR1 = DGC1 /* \DGC1 */
            GCR2 = DGC2 /* \DGC2 */
            GCR3 = DGC3 /* \DGC3 */
            GCR4 = DGC4 /* \DGC4 */
            PST0 = DGP0 /* \DGP0 */
            PST1 = DGP1 /* \DGP1 */
            PST2 = DGP2 /* \DGP2 */
            PST3 = DGP3 /* \DGP3 */
            PST4 = DGP4 /* \DGP4 */
            SCR0 = DSC0 /* \DSC0 */
            SCR1 = DSC1 /* \DSC1 */
            SCR2 = DSC2 /* \DSC2 */
            SCR3 = DSC3 /* \DSC3 */
            WCR0 = WWCR /* \WWCR */
            WPPT = WWPS /* \WWPS */
            LPMV = DLPM /* \DLPM */
            PDBG = DDBG /* \DDBG */
            DLPO [One] = LPOE /* \LPOE */
            DLPO [0x02] = LPPS /* \LPPS */
            DLPO [0x03] = LPST /* \LPST */
            DLPO [0x04] = LPPC /* \LPPC */
            DLPO [0x05] = LPPF /* \LPPF */
            PDPM = DPME /* \DPME */
        }

        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C") /* Power Button Device */)  // _HID: Hardware ID
        }

        Device (DMWA)
        {
            Name (_ADR, 0x05)  // _ADR: Address
            Name (_HID, "SSP0001")  // _HID: Hardware ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (WBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullDown, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x004E
                        }
                })
                Return (WBUF) /* \_SB_.DMWA._CRS.WBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((SKUT == One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (Zero)
            }

            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
        }

        Device (SHPM)
        {
            Name (_HID, "PNP0C14" /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                ^PCI0.I2C7, 
                ^PCI0.I2C7.PMI5
            })
            Name (_WDG, Buffer (0x28)
            {
                /* 0000 */  0xA4, 0x58, 0xEC, 0x54, 0xFE, 0x9A, 0x53, 0x48,  // .X.T..SH
                /* 0008 */  0xB3, 0xCC, 0xFA, 0x6A, 0xA0, 0x17, 0x01, 0x4D,  // ...j...M
                /* 0010 */  0x45, 0x45, 0x01, 0x02, 0x21, 0x12, 0x90, 0x05,  // EE..!...
                /* 0018 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,  // f.......
                /* 0020 */  0xC9, 0x06, 0x29, 0x10, 0x44, 0x44, 0x01, 0x00   // ..).DD..
            })
            Method (WMEE, 3, Serialized)
            {
                ^^PCI0.I2C7.PMI5.SET (One, 0x5E, 0x25, 0x6B)
                ^^PCI0.I2C7.PMI5.SET (One, 0x5E, 0x26, 0x07)
                ^^PCI0.I2C7.PMI5.SET (One, 0x5E, 0x24, 0x02)
                Local1 = ^^PCI0.I2C7.PMI5.GET (One, 0x5E, 0x28)
                Local1 &= 0xCF
                ^^PCI0.I2C7.PMI5.SET (One, 0x5E, 0x25, 0x6B)
                ^^PCI0.I2C7.PMI5.SET (One, 0x5E, 0x26, 0x07)
                ^^PCI0.I2C7.PMI5.SET (One, 0x5E, 0x27, Local1)
                ^^PCI0.I2C7.PMI5.SET (One, 0x5E, 0x24, One)
                Sleep (0x64)
                ^^PCI0.I2C7.PMI5.SET (One, 0x5E, 0x25, 0x6B)
                ^^PCI0.I2C7.PMI5.SET (One, 0x5E, 0x26, Zero)
                ^^PCI0.I2C7.PMI5.SET (One, 0x5E, 0x24, 0x02)
                Local1 = ^^PCI0.I2C7.PMI5.GET (One, 0x5E, 0x28)
                Local1 |= 0x80
                ^^PCI0.I2C7.PMI5.SET (One, 0x5E, 0x25, 0x6B)
                ^^PCI0.I2C7.PMI5.SET (One, 0x5E, 0x26, Zero)
                ^^PCI0.I2C7.PMI5.SET (One, 0x5E, 0x27, Local1)
                ^^PCI0.I2C7.PMI5.SET (One, 0x5E, 0x24, One)
                Sleep (0x64)
                ^^PCI0.I2C7.PMI5.SET (One, 0x5E, 0x25, 0x6B)
                ^^PCI0.I2C7.PMI5.SET (One, 0x5E, 0x26, 0x09)
                ^^PCI0.I2C7.PMI5.SET (One, 0x5E, 0x24, 0x02)
                Local1 = ^^PCI0.I2C7.PMI5.GET (One, 0x5E, 0x28)
                Local1 &= 0xF7
                Local1 |= 0x20
                ^^PCI0.I2C7.PMI5.SET (One, 0x5E, 0x25, 0x6B)
                ^^PCI0.I2C7.PMI5.SET (One, 0x5E, 0x26, 0x09)
                ^^PCI0.I2C7.PMI5.SET (One, 0x5E, 0x27, Local1)
                ^^PCI0.I2C7.PMI5.SET (One, 0x5E, 0x24, One)
                Sleep (0x64)
            }

            Name (WQDD, Buffer (0x021F)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                /* 0008 */  0x0F, 0x02, 0x00, 0x00, 0x3C, 0x04, 0x00, 0x00,  // ....<...
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                /* 0018 */  0x28, 0x46, 0x82, 0x00, 0x01, 0x06, 0x18, 0x42,  // (F.....B
                /* 0020 */  0x20, 0x24, 0x00, 0x89, 0xC0, 0xE2, 0x69, 0x24,  //  $....i$
                /* 0028 */  0xCD, 0x01, 0x0C, 0x46, 0x03, 0x88, 0xE4, 0x40,  // ...F...@
                /* 0030 */  0xC8, 0x05, 0x13, 0x13, 0x20, 0x02, 0x42, 0x5E,  // .... .B^
                /* 0038 */  0x05, 0xD8, 0x14, 0x60, 0x12, 0x44, 0xFD, 0xFB,  // ...`.D..
                /* 0040 */  0x43, 0x94, 0x04, 0x87, 0x12, 0x02, 0x21, 0x89,  // C.....!.
                /* 0048 */  0x02, 0xCC, 0x0B, 0xD0, 0x2D, 0xC0, 0xB0, 0x00,  // ....-...
                /* 0050 */  0xDB, 0x02, 0x4C, 0x0B, 0x70, 0x0C, 0x49, 0xA5,  // ..L.p.I.
                /* 0058 */  0x81, 0x53, 0x02, 0x4B, 0x81, 0x90, 0x50, 0x01,  // .S.K..P.
                /* 0060 */  0xCA, 0x05, 0xF8, 0x16, 0xA0, 0x1D, 0x51, 0x92,  // ......Q.
                /* 0068 */  0x05, 0x58, 0x86, 0x11, 0x81, 0x47, 0x11, 0xD9,  // .X...G..
                /* 0070 */  0x68, 0x1C, 0x1A, 0x3B, 0x0C, 0xCB, 0x04, 0xD3,  // h..;....
                /* 0078 */  0x20, 0x0E, 0xA3, 0x6C, 0x64, 0x11, 0x78, 0x42,  //  ..ld.xB
                /* 0080 */  0x9D, 0x0A, 0x90, 0x2B, 0x40, 0xD8, 0xC8, 0xA2,  // ...+@...
                /* 0088 */  0x0A, 0xA3, 0x39, 0x28, 0x02, 0x14, 0x1A, 0x23,  // ..9(...#
                /* 0090 */  0x66, 0x4C, 0x04, 0xB6, 0x73, 0x6C, 0x8D, 0xE2,  // fL..sl..
                /* 0098 */  0x34, 0x0A, 0x17, 0x20, 0x1D, 0x43, 0x23, 0x38,  // 4.. .C#8
                /* 00A0 */  0xAE, 0x04, 0x61, 0x82, 0x05, 0x29, 0x48, 0x80,  // ..a..)H.
                /* 00A8 */  0x62, 0x01, 0xD6, 0xB1, 0x84, 0x10, 0xCB, 0x38,  // b......8
                /* 00B0 */  0x41, 0x83, 0x18, 0xE7, 0x84, 0x3C, 0x93, 0x40,  // A....<.@
                /* 00B8 */  0xC6, 0x38, 0x98, 0x03, 0x88, 0x90, 0xC0, 0x30,  // .8.....0
                /* 00C0 */  0xC7, 0x81, 0x91, 0x01, 0x21, 0xCF, 0xF0, 0x1A,  // ....!...
                /* 00C8 */  0xA0, 0x09, 0xEC, 0x5E, 0x80, 0xB5, 0x19, 0xC9,  // ...^....
                /* 00D0 */  0xA2, 0x00, 0x87, 0x20, 0x12, 0x27, 0xC0, 0x20,  // ... .'. 
                /* 00D8 */  0x8C, 0x6C, 0x4D, 0x4A, 0x20, 0x35, 0x42, 0x09,  // .lMJ 5B.
                /* 00E0 */  0x25, 0x4E, 0xA8, 0x60, 0x9D, 0xA1, 0x48, 0x21,  // %N.`..H!
                /* 00E8 */  0x86, 0x20, 0x23, 0x44, 0x89, 0x16, 0xAF, 0x36,  // . #D...6
                /* 00F0 */  0x08, 0x21, 0x1C, 0x5F, 0x63, 0x02, 0xBC, 0x61,  // .!._c..a
                /* 00F8 */  0x10, 0xD0, 0x83, 0x6B, 0x7F, 0x10, 0x24, 0xDE,  // ...k..$.
                /* 0100 */  0x71, 0x40, 0x7F, 0x02, 0x47, 0x1A, 0x0D, 0xEA,  // q@..G...
                /* 0108 */  0x08, 0x90, 0xE0, 0x91, 0xC0, 0xC7, 0x81, 0x23,  // .......#
                /* 0110 */  0x3B, 0xA9, 0x33, 0x3B, 0xAD, 0x20, 0x27, 0x76,  // ;.3;. 'v
                /* 0118 */  0x88, 0x75, 0x9E, 0x05, 0xC8, 0xA8, 0x19, 0x56,  // .u.....V
                /* 0120 */  0x82, 0xDF, 0x03, 0x1F, 0x0E, 0xF0, 0xAE, 0x01,  // ........
                /* 0128 */  0x75, 0x2B, 0x78, 0x26, 0x60, 0xC3, 0x4C, 0xF0,  // u+x&`.L.
                /* 0130 */  0xFF, 0x0F, 0xC7, 0x87, 0xE8, 0xB9, 0x86, 0x3B,  // .......;
                /* 0138 */  0x81, 0x43, 0x64, 0x80, 0x9E, 0xD2, 0xE3, 0x00,  // .Cd.....
                /* 0140 */  0x76, 0x6E, 0x27, 0xF3, 0x2C, 0x50, 0xAA, 0x00,  // vn'.,P..
                /* 0148 */  0xB3, 0xE7, 0x02, 0xCD, 0x31, 0xC1, 0xF1, 0xF8,  // ....1...
                /* 0150 */  0x10, 0xE0, 0xF9, 0x9C, 0x70, 0x02, 0xCB, 0x1F,  // ....p...
                /* 0158 */  0x04, 0x6A, 0x64, 0x86, 0xF6, 0x2C, 0x4F, 0xEB,  // .jd..,O.
                /* 0160 */  0x5D, 0xC0, 0x47, 0x84, 0xC3, 0x62, 0x62, 0x21,  // ].G..bb!
                /* 0168 */  0xA4, 0x00, 0x42, 0xE3, 0x01, 0xFF, 0xE1, 0xE0,  // ..B.....
                /* 0170 */  0xB5, 0xE0, 0xB9, 0xC0, 0xD8, 0x3E, 0x22, 0xF8,  // .....>".
                /* 0178 */  0xD4, 0x10, 0x18, 0x3B, 0x20, 0xFB, 0x15, 0x80,  // ...; ...
                /* 0180 */  0x10, 0x3C, 0xDA, 0x11, 0x3D, 0x38, 0x44, 0x08,  // .<..=8D.
                /* 0188 */  0xE9, 0xB3, 0x82, 0x4F, 0x11, 0x86, 0x88, 0x16,  // ...O....
                /* 0190 */  0xA9, 0xE8, 0x33, 0x03, 0x19, 0x20, 0x1B, 0x47,  // ..3.. .G
                /* 0198 */  0xA8, 0x17, 0x0A, 0x13, 0x58, 0xE4, 0xF9, 0x01,  // ....X...
                /* 01A0 */  0x3D, 0x06, 0x7E, 0x10, 0x38, 0x85, 0xA0, 0xE7,  // =.~.8...
                /* 01A8 */  0x13, 0xFD, 0x88, 0xA2, 0x9C, 0xC6, 0x21, 0xF9,  // ......!.
                /* 01B0 */  0xE2, 0x60, 0x84, 0x13, 0x7D, 0x98, 0x88, 0x6F,  // .`..}..o
                /* 01B8 */  0xCD, 0x73, 0xD2, 0x99, 0xE1, 0xAC, 0xDE, 0x07,  // .s......
                /* 01C0 */  0x7C, 0x3E, 0xD0, 0x21, 0x84, 0x46, 0x1B, 0x03,  // |>.!.F..
                /* 01C8 */  0x1D, 0x36, 0x1F, 0xAF, 0x7D, 0x5E, 0x27, 0xE8,  // .6..}^'.
                /* 01D0 */  0x8C, 0xE0, 0x05, 0x38, 0x20, 0x50, 0x59, 0x20,  // ...8 PY 
                /* 01D8 */  0x74, 0x4C, 0xFC, 0xDC, 0xC1, 0x40, 0x43, 0x1E,  // tL...@C.
                /* 01E0 */  0x49, 0xF4, 0xB8, 0x1E, 0xF6, 0xD9, 0x7B, 0x28,  // I.....{(
                /* 01E8 */  0x86, 0xF5, 0x29, 0x80, 0xC3, 0x1A, 0x2D, 0xEC,  // ..)...-.
                /* 01F0 */  0x69, 0x1C, 0xB9, 0x6F, 0x0D, 0x3E, 0x64, 0x18,  // i..o.>d.
                /* 01F8 */  0x23, 0xAC, 0xCF, 0x0B, 0xB8, 0xFF, 0xFF, 0x81,  // #.......
                /* 0200 */  0x00, 0x9E, 0x42, 0x9B, 0x3E, 0x35, 0x1A, 0xB5,  // ..B.>5..
                /* 0208 */  0x6A, 0x50, 0xA6, 0x46, 0x99, 0x06, 0xB5, 0xFA,  // jP.F....
                /* 0210 */  0x54, 0x6A, 0xCC, 0xD8, 0xE9, 0xC0, 0x72, 0x28,  // Tj....r(
                /* 0218 */  0x34, 0x26, 0x87, 0x01, 0xA1, 0xFF, 0x7F         // 4&.....
            })
        }

        Device (LEDC)
        {
            Name (_HID, "PNP0C14" /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                ^PCI0.I2C7, 
                ^PCI0.I2C7.PMI5
            })
            Name (_WDG, Buffer (0x28)
            {
                /* 0000 */  0xAB, 0xCF, 0x1D, 0x19, 0x7C, 0xE7, 0x36, 0x47,  // ....|.6G
                /* 0008 */  0x97, 0x41, 0xE6, 0xB3, 0x6D, 0xA7, 0xD5, 0x49,  // .A..m..I
                /* 0010 */  0x43, 0x43, 0x01, 0x02, 0x21, 0x12, 0x90, 0x05,  // CC..!...
                /* 0018 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,  // f.......
                /* 0020 */  0xC9, 0x06, 0x29, 0x10, 0x44, 0x44, 0x01, 0x00   // ..).DD..
            })
            Method (WMCC, 3, Serialized)
            {
                If ((Arg1 == One))
                {
                    If ((PMID == 0x03))
                    {
                        Local0 = ^^PCI0.I2C7.PMI5.GET (One, 0x4F, 0xE0)
                        Sleep (0x0A)
                        Local0 &= 0xF9
                        Local0 |= 0x02
                        ^^PCI0.I2C7.PMI5.SET (One, 0x4F, 0xE0, Local0)
                        Sleep (0x32)
                        Local0 = ^^PCI0.I2C7.PMI5.GET (One, 0x4F, 0xDF)
                        Sleep (0x0A)
                        Local0 |= One
                        ^^PCI0.I2C7.PMI5.SET (One, 0x4F, 0xDF, Local0)
                        Sleep (0x32)
                    }

                    Sleep (0x0A)
                }
                ElseIf ((Arg1 == 0x02))
                {
                    If ((PMID == 0x03))
                    {
                        Local0 = ^^PCI0.I2C7.PMI5.GET (One, 0x4F, 0xE0)
                        Sleep (0x0A)
                        Local0 &= 0xF9
                        Local0 |= 0x06
                        ^^PCI0.I2C7.PMI5.SET (One, 0x4F, 0xE0, Local0)
                        Sleep (0x32)
                        Local0 = ^^PCI0.I2C7.PMI5.GET (One, 0x4F, 0xDF)
                        Sleep (0x0A)
                        Local0 &= 0xCF
                        Local0 |= 0x11
                        ^^PCI0.I2C7.PMI5.SET (One, 0x4F, 0xDF, Local0)
                        Sleep (0x32)
                    }
                }
                ElseIf ((Arg1 == 0x03))
                {
                    If ((PMID == 0x03))
                    {
                        Local0 = ^^PCI0.I2C7.PMI5.GET (One, 0x4F, 0xE0)
                        Sleep (0x0A)
                        Local0 &= 0xF9
                        Local0 |= 0x04
                        ^^PCI0.I2C7.PMI5.SET (One, 0x4F, 0xE0, Local0)
                        Sleep (0x32)
                        Local0 = ^^PCI0.I2C7.PMI5.GET (One, 0x4F, 0xDF)
                        Sleep (0x0A)
                        Local0 &= 0xCF
                        Local0 |= 0x31
                        ^^PCI0.I2C7.PMI5.SET (One, 0x4F, 0xDF, Local0)
                        Sleep (0x32)
                    }
                }
            }

            Name (WQDD, Buffer (0x025F)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                /* 0008 */  0x4F, 0x02, 0x00, 0x00, 0xCC, 0x05, 0x00, 0x00,  // O.......
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                /* 0018 */  0x18, 0xCA, 0x82, 0x00, 0x01, 0x06, 0x18, 0x42,  // .......B
                /* 0020 */  0x20, 0xA2, 0x00, 0x89, 0xC0, 0xE2, 0x69, 0x24,  //  .....i$
                /* 0028 */  0xCE, 0x01, 0x0C, 0x46, 0x03, 0x88, 0xE4, 0x40,  // ...F...@
                /* 0030 */  0xC8, 0x05, 0x13, 0x13, 0x20, 0x02, 0x42, 0x5E,  // .... .B^
                /* 0038 */  0x05, 0xD8, 0x14, 0x60, 0x12, 0x44, 0xFD, 0xFB,  // ...`.D..
                /* 0040 */  0x43, 0x94, 0x04, 0x87, 0x12, 0x02, 0x21, 0x89,  // C.....!.
                /* 0048 */  0x02, 0xCC, 0x0B, 0xD0, 0x2D, 0xC0, 0xB0, 0x00,  // ....-...
                /* 0050 */  0xDB, 0x02, 0x4C, 0x0B, 0x70, 0x0C, 0x49, 0xA5,  // ..L.p.I.
                /* 0058 */  0x81, 0x53, 0x02, 0x4B, 0x81, 0x90, 0x50, 0x01,  // .S.K..P.
                /* 0060 */  0xCA, 0x05, 0xF8, 0x16, 0xA0, 0x1D, 0x51, 0x92,  // ......Q.
                /* 0068 */  0x05, 0x58, 0x86, 0x11, 0x81, 0x47, 0x11, 0xD9,  // .X...G..
                /* 0070 */  0x68, 0x1C, 0x1A, 0x3B, 0x0C, 0xCB, 0x04, 0xD3,  // h..;....
                /* 0078 */  0x20, 0x0E, 0xA3, 0x6C, 0x64, 0x11, 0x78, 0x42,  //  ..ld.xB
                /* 0080 */  0x9D, 0x0A, 0x90, 0x2B, 0x40, 0xD8, 0xC8, 0xA2,  // ...+@...
                /* 0088 */  0x0A, 0xA3, 0x39, 0x28, 0x02, 0x14, 0x1A, 0x23,  // ..9(...#
                /* 0090 */  0x66, 0x4C, 0x04, 0xB6, 0x73, 0x6C, 0x8D, 0xE2,  // fL..sl..
                /* 0098 */  0x34, 0x0A, 0x17, 0x20, 0x1D, 0x43, 0x23, 0x38,  // 4.. .C#8
                /* 00A0 */  0xAE, 0x04, 0x61, 0x82, 0x05, 0x29, 0x48, 0x80,  // ..a..)H.
                /* 00A8 */  0x62, 0x01, 0xD6, 0xB1, 0x84, 0x10, 0xCB, 0x38,  // b......8
                /* 00B0 */  0x41, 0x83, 0x18, 0xE7, 0x84, 0x3C, 0x93, 0x40,  // A....<.@
                /* 00B8 */  0xC6, 0x38, 0x98, 0x03, 0x88, 0x90, 0xC0, 0x30,  // .8.....0
                /* 00C0 */  0xC7, 0x81, 0x91, 0x01, 0x21, 0xCF, 0xF0, 0x1A,  // ....!...
                /* 00C8 */  0xA0, 0x09, 0xEC, 0x5E, 0x80, 0xB1, 0x09, 0x09,  // ...^....
                /* 00D0 */  0xE2, 0x60, 0x3A, 0x14, 0xA0, 0x51, 0x80, 0x41,  // .`:..Q.A
                /* 00D8 */  0x01, 0x0A, 0x05, 0xD8, 0x12, 0x60, 0x51, 0x80,  // .....`Q.
                /* 00E0 */  0x37, 0x04, 0x01, 0x45, 0x39, 0xB0, 0x20, 0x9D,  // 7..E9. .
                /* 00E8 */  0x09, 0xD0, 0x86, 0x22, 0xC8, 0x28, 0x71, 0x82,  // ...".(q.
                /* 00F0 */  0xC6, 0x33, 0x50, 0xCC, 0x58, 0x86, 0x0E, 0x1C,  // .3P.X...
                /* 00F8 */  0x2B, 0x46, 0x6B, 0x68, 0x02, 0x6C, 0x7F, 0x10,  // +Fkh.l..
                /* 0100 */  0x24, 0xE0, 0x71, 0x40, 0x12, 0x40, 0x14, 0x69,  // $.q@.@.i
                /* 0108 */  0x34, 0xA8, 0x23, 0x40, 0x82, 0x47, 0x02, 0x1F,  // 4.#@.G..
                /* 0110 */  0x07, 0x8E, 0xEC, 0xA4, 0xCE, 0xEC, 0xB4, 0x82,  // ........
                /* 0118 */  0x9C, 0xD8, 0x21, 0xD6, 0x79, 0x16, 0x20, 0xA3,  // ..!.y. .
                /* 0120 */  0x66, 0x58, 0x09, 0x7E, 0x0F, 0x7C, 0x38, 0xC0,  // fX.~.|8.
                /* 0128 */  0xBB, 0x06, 0xD4, 0xAD, 0xE0, 0x99, 0x80, 0x0D,  // ........
                /* 0130 */  0x33, 0xC1, 0xFF, 0x3F, 0x1C, 0x1F, 0xA2, 0xE7,  // 3..?....
                /* 0138 */  0x1A, 0xEE, 0x04, 0x0E, 0x91, 0x01, 0xFA, 0x0C,  // ........
                /* 0140 */  0xF0, 0x38, 0x80, 0x9D, 0xE0, 0xC9, 0x3C, 0x0B,  // .8....<.
                /* 0148 */  0x94, 0x2A, 0xC0, 0xEC, 0xB9, 0x40, 0xB3, 0x4B,  // .*...@.K
                /* 0150 */  0x70, 0x3C, 0x3E, 0x04, 0x78, 0x3E, 0x27, 0x9C,  // p<>.x>'.
                /* 0158 */  0xC0, 0xF2, 0x07, 0x81, 0x1A, 0x99, 0xA1, 0x3D,  // .......=
                /* 0160 */  0xC9, 0xD3, 0x7A, 0x17, 0xF0, 0x11, 0xE1, 0xB0,  // ..z.....
                /* 0168 */  0x98, 0x58, 0x08, 0x29, 0x80, 0xD0, 0x78, 0xC0,  // .X.)..x.
                /* 0170 */  0x7F, 0x38, 0x78, 0x2D, 0x78, 0x2E, 0x30, 0xB6,  // .8x-x.0.
                /* 0178 */  0x8F, 0x08, 0xC6, 0x0A, 0x8C, 0x1D, 0x90, 0xFD,  // ........
                /* 0180 */  0x0A, 0x40, 0x08, 0xFE, 0xEE, 0x70, 0x44, 0x0F,  // .@...pD.
                /* 0188 */  0x0E, 0x11, 0x1E, 0x1F, 0x7C, 0x56, 0xF0, 0x29,  // ....|V.)
                /* 0190 */  0xC2, 0x10, 0xD1, 0x22, 0xC7, 0xF1, 0x75, 0xE0,  // ..."..u.
                /* 0198 */  0xBC, 0x82, 0x1D, 0xD8, 0x09, 0x16, 0x8D, 0x22,  // ......."
                /* 01A0 */  0xDC, 0x93, 0xF4, 0x41, 0xC1, 0x22, 0x0F, 0x10,  // ...A."..
                /* 01A8 */  0xE8, 0x41, 0xF0, 0x93, 0xC0, 0x39, 0x1C, 0xD2,  // .A...9..
                /* 01B0 */  0x09, 0x1D, 0xC4, 0x01, 0x44, 0x09, 0x7C, 0x4C,  // ....D.|L
                /* 01B8 */  0xBE, 0x39, 0x18, 0x21, 0xFA, 0xD3, 0xC4, 0x13,  // .9.!....
                /* 01C0 */  0x86, 0x35, 0x4F, 0x4A, 0x87, 0x86, 0x23, 0x78,  // .5OJ..#x
                /* 01C8 */  0x21, 0xF0, 0x10, 0xB4, 0x56, 0x1D, 0x09, 0x1C,  // !...V...
                /* 01D0 */  0x6F, 0x0C, 0x74, 0xDC, 0x5C, 0x14, 0x88, 0x46,  // o.t.\..F
                /* 01D8 */  0x10, 0x37, 0xE6, 0x21, 0xF1, 0x03, 0x05, 0x66,  // .7.!...f
                /* 01E0 */  0x50, 0x18, 0xA8, 0x07, 0x8B, 0x04, 0x03, 0x9C,  // P.......
                /* 01E8 */  0x11, 0xA8, 0x2C, 0x10, 0x3A, 0x2A, 0x7E, 0xF4,  // ..,.:*~.
                /* 01F0 */  0x60, 0x73, 0x3A, 0x03, 0xE3, 0x46, 0x3F, 0x9F,  // `s:..F?.
                /* 01F8 */  0x23, 0x7F, 0x01, 0xF0, 0x09, 0xC5, 0xB0, 0x3E,  // #......>
                /* 0200 */  0x08, 0x70, 0x58, 0xA3, 0x85, 0x3D, 0x86, 0x83,  // .pX..=..
                /* 0208 */  0xF7, 0xC5, 0xC1, 0xE7, 0x0C, 0x63, 0x84, 0xF5,  // .....c..
                /* 0210 */  0xFF, 0xFF, 0xC8, 0x00, 0x8E, 0xF1, 0x81, 0xEB,  // ........
                /* 0218 */  0x62, 0xD0, 0xFB, 0xA5, 0x81, 0x1C, 0x25, 0xDE,  // b.....%.
                /* 0220 */  0x4B, 0xD8, 0xF8, 0xC0, 0x77, 0x6E, 0xF0, 0xF8,  // K...wn..
                /* 0228 */  0x80, 0x4B, 0xC8, 0xF1, 0xA1, 0xCF, 0x30, 0x1E,  // .K....0.
                /* 0230 */  0x1F, 0x3C, 0xA3, 0x47, 0x14, 0x72, 0xB8, 0x38,  // .<.G.r.8
                /* 0238 */  0xBE, 0x33, 0xC4, 0x0F, 0x11, 0x8C, 0xB0, 0x7C,  // .3.....|
                /* 0240 */  0x88, 0xC0, 0x43, 0xA1, 0x4D, 0x9F, 0x1A, 0x8D,  // ..C.M...
                /* 0248 */  0x5A, 0x35, 0x28, 0x53, 0xA3, 0x4C, 0x83, 0x5A,  // Z5(S.L.Z
                /* 0250 */  0x7D, 0x2A, 0x35, 0x66, 0x6C, 0xE8, 0x96, 0x73,  // }*5fl..s
                /* 0258 */  0x8E, 0xA0, 0x61, 0x40, 0xE8, 0xFF, 0x1F         // ..a@...
            })
        }

        Device (TOFF)
        {
            Name (_HID, "PNP0C14" /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (ISPO, Zero)
            Name (RUNI, Zero)
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                ^PCI0.I2C7, 
                ^PCI0.I2C7.PMI5
            })
            Name (_WDG, Buffer (0x28)
            {
                /* 0000 */  0x45, 0x16, 0xDC, 0x76, 0x68, 0xA9, 0xD4, 0x42,  // E..vh..B
                /* 0008 */  0x9B, 0xB2, 0x98, 0x2F, 0x2A, 0x6F, 0x73, 0x3F,  // .../*os?
                /* 0010 */  0x41, 0x41, 0x01, 0x02, 0x21, 0x12, 0x90, 0x05,  // AA..!...
                /* 0018 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,  // f.......
                /* 0020 */  0xC9, 0x06, 0x29, 0x10, 0x44, 0x44, 0x01, 0x00   // ..).DD..
            })
            Method (WMAA, 3, Serialized)
            {
                ISPO = 0x08
                If ((PMID == 0x03))
                {
                    Local0 = ^^PCI0.I2C7.PMI5.GET (One, 0x4F, 0xE0)
                    Sleep (0x0A)
                    Local0 &= 0xF9
                    Local0 |= 0x02
                    ^^PCI0.I2C7.PMI5.SET (One, 0x4F, 0xE0, Local0)
                    Sleep (0x32)
                    Local0 = ^^PCI0.I2C7.PMI5.GET (One, 0x4F, 0xDF)
                    Sleep (0x0A)
                    Local0 |= One
                    ^^PCI0.I2C7.PMI5.SET (One, 0x4F, 0xDF, Local0)
                    Sleep (0x32)
                }

                Sleep (0x0A)
            }

            Method (TNOF, 0, Serialized)
            {
                Local2 = ISPO /* \_SB_.TOFF.ISPO */
                If ((Local2 == 0x08))
                {
                    Local1 = RUNI /* \_SB_.TOFF.RUNI */
                    If ((Local1 != 0x06))
                    {
                        RUNI = 0x06
                        If ((^^PCI0.I2C7.PMI5.AVBL == One))
                        {
                            ^^PCI0.I2C7.PMI5.VP5A = Zero
                            If ((^^PCI0.I2C7.PMI5.AVBG == One))
                            {
                                ^^PCI0.I2C7.PMI5.GP5A = One
                                Sleep (0x1E)
                            }
                        }

                        If ((^^PCI0.I2C7.PMI5.AVBL == One))
                        {
                            ^^PCI0.I2C7.PMI5.VP4D = Zero
                            If ((^^PCI0.I2C7.PMI5.AVBG == One))
                            {
                                ^^PCI0.I2C7.PMI5.GP4D = One
                                Sleep (0x1E)
                            }
                        }

                        If ((^^PCI0.I2C7.PMI5.AVBL == One))
                        {
                            ^^PCI0.I2C7.PMI5.VP6A = Zero
                            If ((^^PCI0.I2C7.PMI5.AVBG == One))
                            {
                                ^^PCI0.I2C7.PMI5.GP6A = One
                                Sleep (0x1E)
                            }
                        }

                        If ((^^PCI0.I2C7.PMI5.AVBL == One))
                        {
                            ^^PCI0.I2C7.PMI5.VP5B = Zero
                            If ((^^PCI0.I2C7.PMI5.AVBG == One))
                            {
                                ^^PCI0.I2C7.PMI5.GP5B = One
                                Sleep (0x1E)
                            }
                        }

                        If ((^^PCI0.I2C7.PMI5.AVBL == One))
                        {
                            ^^PCI0.I2C7.PMI5.VP3B = Zero
                            If ((^^PCI0.I2C7.PMI5.AVBG == One))
                            {
                                ^^PCI0.I2C7.PMI5.GP3B = One
                                Sleep (0x1E)
                            }
                        }

                        If ((PMID == 0x03))
                        {
                            Local0 = ^^PCI0.I2C7.PMI5.GET (One, 0x4F, 0xE0)
                            Sleep (0x0A)
                            Local0 &= 0xF9
                            Local0 |= 0x02
                            ^^PCI0.I2C7.PMI5.SET (One, 0x4F, 0xE0, Local0)
                            Sleep (0x32)
                            Local0 = ^^PCI0.I2C7.PMI5.GET (One, 0x4F, 0xDF)
                            Sleep (0x0A)
                            Local0 |= One
                            ^^PCI0.I2C7.PMI5.SET (One, 0x4F, 0xDF, Local0)
                            Sleep (0x32)
                        }
                    }
                }
            }

            Name (WQDD, Buffer (0x0207)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                /* 0008 */  0xF7, 0x01, 0x00, 0x00, 0x08, 0x04, 0x00, 0x00,  // ........
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                /* 0018 */  0x18, 0xD9, 0x81, 0x00, 0x01, 0x06, 0x18, 0x42,  // .......B
                /* 0020 */  0x20, 0x82, 0x02, 0x89, 0xC0, 0xA2, 0x69, 0x24,  //  .....i$
                /* 0028 */  0x05, 0x06, 0xA5, 0x01, 0x44, 0x72, 0x20, 0xE4,  // ....Dr .
                /* 0030 */  0x82, 0x89, 0x09, 0x10, 0x01, 0x21, 0xAF, 0x02,  // .....!..
                /* 0038 */  0x6C, 0x0A, 0x30, 0x09, 0xA2, 0xFE, 0xFD, 0x21,  // l.0....!
                /* 0040 */  0x4A, 0x82, 0x43, 0x09, 0x81, 0x90, 0x44, 0x01,  // J.C...D.
                /* 0048 */  0xE6, 0x05, 0xE8, 0x16, 0x60, 0x58, 0x80, 0x6D,  // ....`X.m
                /* 0050 */  0x01, 0xA6, 0x05, 0x38, 0x86, 0xA4, 0xD2, 0xC0,  // ...8....
                /* 0058 */  0x29, 0x81, 0xA5, 0x40, 0x48, 0xA8, 0x00, 0xE5,  // )..@H...
                /* 0060 */  0x02, 0x7C, 0x0B, 0xD0, 0x8E, 0x28, 0xC9, 0x02,  // .|...(..
                /* 0068 */  0x2C, 0xC3, 0x88, 0xC0, 0xA3, 0x88, 0x6C, 0x34,  // ,.....l4
                /* 0070 */  0x0E, 0x8D, 0x1D, 0x86, 0x65, 0x82, 0x69, 0x10,  // ....e.i.
                /* 0078 */  0x87, 0x51, 0x36, 0xB2, 0x08, 0x3C, 0xA1, 0x4E,  // .Q6..<.N
                /* 0080 */  0x05, 0xC8, 0x15, 0x20, 0x4C, 0x80, 0x78, 0x54,  // ... L.xT
                /* 0088 */  0x61, 0x34, 0x07, 0x45, 0x20, 0x43, 0x63, 0xC4,  // a4.E Cc.
                /* 0090 */  0x8C, 0x89, 0xC0, 0x76, 0x8E, 0xAD, 0x51, 0x9C,  // ...v..Q.
                /* 0098 */  0x46, 0xE1, 0x02, 0xA4, 0x63, 0x68, 0x04, 0xC7,  // F...ch..
                /* 00A0 */  0x15, 0xD4, 0x60, 0x41, 0x0E, 0xC5, 0x10, 0x05,  // ..`A....
                /* 00A8 */  0x09, 0x90, 0x8A, 0x21, 0xCD, 0x08, 0x42, 0x89,  // ...!..B.
                /* 00B0 */  0x7A, 0x1E, 0x27, 0x12, 0x39, 0x42, 0x82, 0x28,  // z.'.9B.(
                /* 00B8 */  0xC7, 0x80, 0x91, 0x01, 0x21, 0xCF, 0x02, 0xAC,  // ....!...
                /* 00C0 */  0x0F, 0x8E, 0x10, 0xD8, 0xBD, 0x00, 0x6F, 0x02,  // ......o.
                /* 00C8 */  0xB4, 0xCD, 0x43, 0x0E, 0x05, 0x18, 0x03, 0xD1,  // ..C.....
                /* 00D0 */  0x80, 0x5A, 0x13, 0x60, 0x4B, 0x80, 0xC1, 0x11,  // .Z.`K...
                /* 00D8 */  0x09, 0xA6, 0x38, 0x14, 0x01, 0x55, 0x06, 0x27,  // ..8..U.'
                /* 00E0 */  0x8C, 0x28, 0x91, 0x2A, 0x44, 0x10, 0x4E, 0x14,  // .(.*D.N.
                /* 00E8 */  0xA3, 0x05, 0xA9, 0x11, 0x42, 0xA0, 0x31, 0x83,  // ....B.1.
                /* 00F0 */  0x1C, 0x40, 0x67, 0x08, 0x02, 0x69, 0x7F, 0x10,  // .@g..i..
                /* 00F8 */  0x24, 0xD6, 0x51, 0x40, 0x12, 0x40, 0x14, 0x69,  // $.Q@.@.i
                /* 0100 */  0x34, 0xA8, 0xE1, 0x27, 0x78, 0x1C, 0xF0, 0x51,  // 4..'x..Q
                /* 0108 */  0xE0, 0xD4, 0x0E, 0xEA, 0xF8, 0x0E, 0x2B, 0xC8,  // ......+.
                /* 0110 */  0x81, 0x1D, 0x5E, 0x9D, 0xE7, 0x00, 0x32, 0x62,  // ..^...2b
                /* 0118 */  0x86, 0x95, 0xE0, 0xD7, 0xC0, 0x07, 0x03, 0xBC,  // ........
                /* 0120 */  0x6B, 0x40, 0xDD, 0x08, 0x9E, 0x07, 0xD8, 0x2C,  // k@.....,
                /* 0128 */  0xC3, 0x61, 0x86, 0xE8, 0x31, 0x87, 0xFB, 0xFF,  // .a..1...
                /* 0130 */  0x9F, 0xC0, 0x21, 0x32, 0x40, 0x8F, 0xFF, 0x51,  // ..!2@..Q
                /* 0138 */  0x00, 0x3B, 0xCA, 0x93, 0x79, 0x0E, 0x38, 0xEA,  // .;..y.8.
                /* 0140 */  0x66, 0xCF, 0x04, 0xB2, 0x08, 0xA4, 0xF1, 0xF8,  // f.......
                /* 0148 */  0x00, 0xE0, 0xF9, 0x9C, 0x70, 0x02, 0xCB, 0x1F,  // ....p...
                /* 0150 */  0x04, 0x6A, 0x64, 0x86, 0xF6, 0x28, 0x4F, 0xEB,  // .jd..(O.
                /* 0158 */  0x3D, 0xC0, 0x87, 0x80, 0xC3, 0x62, 0x62, 0x21,  // =....bb!
                /* 0160 */  0xA4, 0x00, 0x42, 0xE3, 0x01, 0xBF, 0xE2, 0x6B,  // ..B....k
                /* 0168 */  0x81, 0x10, 0x5E, 0x16, 0x3C, 0x5F, 0x13, 0x94,  // ..^.<_..
                /* 0170 */  0x07, 0x8C, 0x1E, 0x90, 0xFD, 0x0A, 0x40, 0x08,  // ......@.
                /* 0178 */  0xFE, 0x92, 0x70, 0x44, 0x0F, 0x0D, 0x11, 0x9E,  // ..pD....
                /* 0180 */  0x13, 0xB0, 0x68, 0xCF, 0x09, 0x9C, 0xA0, 0xC8,  // ..h.....
                /* 0188 */  0x73, 0x03, 0x1A, 0x9E, 0x1F, 0x02, 0xA2, 0x1F,  // s.......
                /* 0190 */  0xCD, 0xB9, 0x84, 0x3F, 0x9A, 0x28, 0xA7, 0x70,  // ...?.(.p
                /* 0198 */  0x38, 0x3E, 0x51, 0x18, 0xE1, 0x24, 0x1F, 0x24,  // 8>Q..$.$
                /* 01A0 */  0x1E, 0x2C, 0x8C, 0x7F, 0x3E, 0xCF, 0x0B, 0x67,  // .,..>..g
                /* 01A8 */  0xF4, 0x2E, 0x60, 0x82, 0xA1, 0x0E, 0x1F, 0x34,  // ..`....4
                /* 01B0 */  0xD0, 0x18, 0xE8, 0x90, 0xF9, 0x40, 0x3D, 0x17,  // .....@=.
                /* 01B8 */  0x0C, 0xC1, 0x00, 0xE7, 0x02, 0x2A, 0x0B, 0x84,  // .....*..
                /* 01C0 */  0x0E, 0x87, 0x1F, 0x35, 0xD8, 0x64, 0x0E, 0xE3,  // ...5.d..
                /* 01C8 */  0x20, 0x8A, 0x06, 0xD6, 0x44, 0x8E, 0xF6, 0xA4,  //  ...D...
                /* 01D0 */  0x3D, 0x0A, 0xC3, 0x7A, 0xF0, 0x1C, 0xD6, 0x68,  // =..z...h
                /* 01D8 */  0x61, 0x1F, 0x2F, 0x0E, 0xD8, 0x97, 0x05, 0xCF,  // a./.....
                /* 01E0 */  0x32, 0x72, 0x8C, 0xB0, 0x3E, 0x26, 0x80, 0x43,  // 2r..>&.C
                /* 01E8 */  0xA1, 0x4D, 0x9F, 0x1A, 0x8D, 0x5A, 0x35, 0x28,  // .M...Z5(
                /* 01F0 */  0x53, 0xA3, 0x4C, 0x83, 0x5A, 0x7D, 0x2A, 0x35,  // S.L.Z}*5
                /* 01F8 */  0x66, 0xEC, 0x50, 0x60, 0x19, 0x14, 0x1A, 0x93,  // f.P`....
                /* 0200 */  0xFF, 0xFF, 0x21, 0x40, 0xE8, 0xFF, 0x1F         // ..!@...
            })
        }

        Device (MBTN)
        {
            Name (_HID, "PNP0C14" /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_DEP, Package (0x03)  // _DEP: Dependencies
            {
                GPO0, 
                ^PCI0.I2C7, 
                ^PCI0.I2C7.PMI5
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
            }

            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
            }

            Name (_WDG, Buffer (0x3C)
            {
                /* 0000 */  0xA1, 0x0C, 0x2B, 0x74, 0x20, 0x0B, 0x4B, 0x40,  // ..+t .K@
                /* 0008 */  0x9C, 0xAA, 0xAE, 0xFC, 0xAB, 0xF3, 0x0C, 0xE0,  // ........
                /* 0010 */  0x42, 0x42, 0x01, 0x02, 0x1D, 0xEC, 0x3F, 0x24,  // BB....?$
                /* 0018 */  0x63, 0x19, 0xC1, 0x41, 0x81, 0x00, 0x06, 0xA9,  // c..A....
                /* 0020 */  0xD8, 0x2A, 0x94, 0xB4, 0x88, 0x00, 0x01, 0x08,  // .*......
                /* 0028 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,  // !...f...
                /* 0030 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,  // ......).
                /* 0038 */  0x44, 0x44, 0x01, 0x00                           // DD..
            })
            Method (WMBB, 3, Serialized)
            {
                If ((Arg1 == 0x02))
                {
                    Local0 = ^^TOFF.ISPO /* \_SB_.TOFF.ISPO */
                    If ((Local0 == 0x08))
                    {
                        WRCM (0x70, 0x08)
                        ^^TOFF.ISPO = 0x08
                    }
                    ElseIf ((PMID == 0x03))
                    {
                        Local0 = ^^PCI0.I2C7.PMI5.GET (One, 0x4F, 0xDF)
                        Sleep (0x0A)
                        Local0 &= 0xFE
                        ^^PCI0.I2C7.PMI5.SET (One, 0x4F, 0xDF, Local0)
                        Sleep (0x32)
                    }

                    If ((^^GPO0.AVBL == One))
                    {
                        ^^GPO0.TCD6 = Zero
                    }

                    Sleep (0x78)
                }
                ElseIf ((Arg1 == One))
                {
                    If ((PMID == 0x03))
                    {
                        Local0 = ^^PCI0.I2C7.PMI5.GET (One, 0x4F, 0xE0)
                        Sleep (0x0A)
                        Local0 &= 0xF9
                        Local0 |= 0x02
                        ^^PCI0.I2C7.PMI5.SET (One, 0x4F, 0xE0, Local0)
                        Sleep (0x32)
                        Local0 = ^^PCI0.I2C7.PMI5.GET (One, 0x4F, 0xDF)
                        Sleep (0x0A)
                        Local0 |= One
                        ^^PCI0.I2C7.PMI5.SET (One, 0x4F, 0xDF, Local0)
                        Sleep (0x32)
                    }

                    If ((^^GPO0.AVBL == One))
                    {
                        ^^GPO0.TCD6 = One
                    }

                    Sleep (0x78)
                }
                ElseIf ((Arg1 == 0x03))
                {
                    If ((PMID == 0x03))
                    {
                        Local0 = ^^PCI0.I2C7.PMI5.GET (One, 0x4F, 0xE0)
                        Sleep (0x0A)
                        Local0 &= 0xF9
                        Local0 |= 0x02
                        ^^PCI0.I2C7.PMI5.SET (One, 0x4F, 0xE0, Local0)
                        Sleep (0x32)
                        Local0 = ^^PCI0.I2C7.PMI5.GET (One, 0x4F, 0xDF)
                        Sleep (0x0A)
                        Local0 &= 0xCF
                        Local0 |= One
                        ^^PCI0.I2C7.PMI5.SET (One, 0x4F, 0xDF, Local0)
                        Sleep (0x32)
                    }
                }
            }

            Method (WE88, 1, NotSerialized)
            {
                Return (One)
            }

            Name (WQDD, Buffer (0x0382)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                /* 0008 */  0x72, 0x03, 0x00, 0x00, 0x54, 0x0B, 0x00, 0x00,  // r...T...
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                /* 0018 */  0x28, 0xC6, 0x85, 0x00, 0x01, 0x06, 0x18, 0x42,  // (......B
                /* 0020 */  0x10, 0x07, 0x10, 0x22, 0x21, 0x04, 0x12, 0x01,  // ..."!...
                /* 0028 */  0xA1, 0xC8, 0x2C, 0x0C, 0x86, 0x10, 0x38, 0x2E,  // ..,...8.
                /* 0030 */  0x24, 0x15, 0x07, 0x85, 0x12, 0x02, 0xA1, 0xFE,  // $.......
                /* 0038 */  0x04, 0xF2, 0x2B, 0x00, 0xA1, 0x43, 0x01, 0x32,  // ..+..C.2
                /* 0040 */  0x05, 0x18, 0x14, 0xE0, 0x14, 0x41, 0x04, 0xBD,  // .....A..
                /* 0048 */  0x0A, 0xB0, 0x29, 0xC0, 0xA4, 0x00, 0x8B, 0x02,  // ..).....
                /* 0050 */  0xB4, 0x0B, 0xB0, 0x2C, 0x40, 0xB7, 0x00, 0xE9,  // ...,@...
                /* 0058 */  0xB0, 0x44, 0x24, 0x38, 0x4A, 0x0C, 0x38, 0x4A,  // .D$8J.8J
                /* 0060 */  0x27, 0xB6, 0x70, 0xC3, 0x06, 0x2F, 0x14, 0x45,  // '.p../.E
                /* 0068 */  0x33, 0x88, 0x92, 0xA0, 0x72, 0x01, 0xBE, 0x11,  // 3...r...
                /* 0070 */  0x04, 0x5E, 0xAE, 0x00, 0xC9, 0x13, 0x90, 0x66,  // .^.....f
                /* 0078 */  0x01, 0x86, 0x05, 0x58, 0x17, 0x20, 0x7B, 0x08,  // ...X. {.
                /* 0080 */  0x54, 0xEA, 0x10, 0x50, 0x72, 0x86, 0x80, 0x1A,  // T..Pr...
                /* 0088 */  0x40, 0xAB, 0x13, 0x10, 0x7E, 0xA5, 0x53, 0x42,  // @...~.SB
                /* 0090 */  0x12, 0x84, 0x33, 0x56, 0xF1, 0xF8, 0x9A, 0x45,  // ..3V...E
                /* 0098 */  0xD3, 0x73, 0x92, 0x73, 0x0C, 0x39, 0x1E, 0x17,  // .s.s.9..
                /* 00A0 */  0x7A, 0x10, 0x5C, 0xB8, 0x05, 0x10, 0x26, 0x7D,  // z.\...&}
                /* 00A8 */  0xC8, 0x12, 0xB6, 0x68, 0x02, 0xC3, 0x34, 0x8C,  // ...h..4.
                /* 00B0 */  0x85, 0xEE, 0x5D, 0xC0, 0x88, 0x91, 0xB2, 0x01,  // ..].....
                /* 00B8 */  0x19, 0xA2, 0x24, 0x38, 0xD4, 0xA8, 0x2D, 0x51,  // ..$8..-Q
                /* 00C0 */  0x80, 0xF9, 0x71, 0x68, 0x76, 0x6D, 0x8F, 0x85,  // ..qhvm..
                /* 00C8 */  0x40, 0x32, 0x69, 0x43, 0x41, 0x49, 0x81, 0xD0,  // @2iCAI..
                /* 00D0 */  0xD8, 0xCE, 0xD4, 0x33, 0x8A, 0x78, 0xA4, 0x86,  // ...3.x..
                /* 00D8 */  0x49, 0xE0, 0x51, 0x44, 0x36, 0x1A, 0x87, 0xC6,  // I.QD6...
                /* 00E0 */  0x0E, 0xC3, 0xC3, 0x0C, 0x76, 0x10, 0x87, 0x71,  // ....v..q
                /* 00E8 */  0xCC, 0x91, 0x13, 0x78, 0x42, 0x47, 0x7A, 0xE4,  // ...xBGz.
                /* 00F0 */  0x85, 0xCD, 0x53, 0xA8, 0x31, 0x9A, 0x83, 0x22,  // ..S.1.."
                /* 00F8 */  0x62, 0x8F, 0x02, 0xE8, 0x31, 0x85, 0x3D, 0xDA,  // b...1.=.
                /* 0100 */  0xD8, 0xE7, 0x6B, 0xE1, 0x83, 0x15, 0xC6, 0x11,  // ..k.....
                /* 0108 */  0x1C, 0x57, 0x82, 0xFF, 0x7F, 0xF4, 0x63, 0x39,  // .W....c9
                /* 0110 */  0x85, 0x58, 0x91, 0x62, 0x05, 0x39, 0xA2, 0x82,  // .X.b.9..
                /* 0118 */  0x20, 0x85, 0xE6, 0xA1, 0x1B, 0xE4, 0x44, 0x02,  //  .....D.
                /* 0120 */  0x19, 0x23, 0x5A, 0xF8, 0x08, 0x09, 0x0C, 0x73,  // .#Z....s
                /* 0128 */  0x18, 0x18, 0x19, 0x10, 0xF2, 0x7C, 0x2A, 0xD0,  // .....|*.
                /* 0130 */  0xF8, 0x4C, 0x60, 0xF7, 0x02, 0xBC, 0x4D, 0x48,  // .L`...MH
                /* 0138 */  0xCA, 0x04, 0x28, 0x9C, 0x91, 0xEE, 0x03, 0xCF,  // ..(.....
                /* 0140 */  0x03, 0x8D, 0x09, 0xB0, 0x85, 0x22, 0x9C, 0x48,  // .....".H
                /* 0148 */  0x31, 0xA2, 0x1C, 0x97, 0x21, 0xE2, 0x44, 0x39,  // 1...!.D9
                /* 0150 */  0xB1, 0x78, 0x46, 0x88, 0x12, 0xE2, 0x85, 0xA0,  // .xF.....
                /* 0158 */  0x46, 0x1C, 0x02, 0x16, 0xA4, 0x33, 0x70, 0x82,  // F....3p.
                /* 0160 */  0x14, 0xA3, 0xFD, 0x41, 0x90, 0x78, 0xA7, 0x01,  // ...A.x..
                /* 0168 */  0x49, 0x00, 0x51, 0xA4, 0xD1, 0xA0, 0x8E, 0x0A,  // I.Q.....
                /* 0170 */  0x3E, 0x11, 0xF8, 0x34, 0xF0, 0x84, 0xE0, 0x99,  // >..4....
                /* 0178 */  0x9D, 0x56, 0x90, 0x13, 0x3B, 0xCE, 0x07, 0x88,  // .V..;...
                /* 0180 */  0x47, 0x01, 0x0F, 0x9A, 0xDD, 0x11, 0xFC, 0x3B,  // G......;
                /* 0188 */  0xF0, 0xD9, 0x00, 0xEF, 0x1A, 0x50, 0x97, 0x82,  // .....P..
                /* 0190 */  0x47, 0x02, 0x36, 0xCC, 0x70, 0x98, 0x21, 0x7A,  // G.6.p.!z
                /* 0198 */  0xAE, 0xE1, 0x0E, 0xD8, 0x23, 0x61, 0xC7, 0x05,  // ....#a..
                /* 01A0 */  0x9D, 0x06, 0xD0, 0xC3, 0x3A, 0x99, 0x47, 0x81,  // ....:.G.
                /* 01A8 */  0xB7, 0x89, 0x66, 0xEF, 0x11, 0x84, 0xE0, 0x78,  // ..f....x
                /* 01B0 */  0x7C, 0x85, 0x60, 0x13, 0x4E, 0x60, 0xF9, 0x83,  // |.`.N`..
                /* 01B8 */  0x40, 0x8D, 0xCC, 0xD0, 0x9E, 0xE5, 0x69, 0xBD,  // @.....i.
                /* 01C0 */  0x0A, 0xF8, 0x24, 0xE1, 0x53, 0x01, 0x57, 0x00,  // ..$.S.W.
                /* 01C8 */  0xA1, 0xF1, 0x80, 0x5F, 0xF1, 0xB1, 0x83, 0xDC,  // ..._....
                /* 01D0 */  0x17, 0x3C, 0x5F, 0x1F, 0x1A, 0x7C, 0x26, 0x01,  // .<_..|&.
                /* 01D8 */  0x03, 0xCA, 0xA3, 0x86, 0x0F, 0x11, 0x86, 0x78,  // .......x
                /* 01E0 */  0xF3, 0xF0, 0x6D, 0x81, 0xFF, 0xFF, 0x6F, 0x0B,  // ..m...o.
                /* 01E8 */  0x0C, 0xF5, 0x1C, 0x7D, 0x4E, 0xF0, 0xC1, 0x04,  // ...}N...
                /* 01F0 */  0x78, 0xC8, 0x5A, 0xAA, 0x4E, 0x04, 0x0E, 0x37,  // x.Z.N..7
                /* 01F8 */  0x06, 0x3A, 0x6C, 0x7E, 0xF2, 0xF0, 0x08, 0xE2,  // .:l~....
                /* 0200 */  0xC6, 0x3C, 0x22, 0xCC, 0x24, 0x8E, 0xC8, 0x93,  // .<".$...
                /* 0208 */  0x78, 0xF6, 0xF0, 0x38, 0xDF, 0x32, 0x58, 0x80,  // x..8.2X.
                /* 0210 */  0x13, 0x02, 0x95, 0x75, 0xAA, 0xE1, 0x83, 0xA2,  // ...u....
                /* 0218 */  0xE7, 0x0E, 0x36, 0xA5, 0x13, 0xB0, 0xE8, 0xF9,  // ..6.....
                /* 0220 */  0x08, 0xFC, 0xB8, 0x4F, 0xDF, 0x9F, 0x1B, 0xC3,  // ...O....
                /* 0228 */  0xFA, 0x18, 0xC0, 0x61, 0x8D, 0x16, 0xF6, 0x40,  // ...a...@
                /* 0230 */  0x0F, 0xC2, 0xD7, 0x06, 0x9F, 0x32, 0x8C, 0x11,  // .....2..
                /* 0238 */  0xD6, 0x07, 0x06, 0x70, 0xC4, 0x1B, 0x1E, 0x5A,  // ...p...Z
                /* 0240 */  0xD4, 0xF0, 0x20, 0x5E, 0x43, 0x0E, 0xEA, 0x9D,  // .. ^C...
                /* 0248 */  0xE1, 0xF4, 0x30, 0xE3, 0x03, 0xE3, 0xA9, 0xC1,  // ..0.....
                /* 0250 */  0xE3, 0x03, 0x2E, 0xC1, 0xC6, 0x87, 0x3E, 0x72,  // ......>r
                /* 0258 */  0xF8, 0xC0, 0x70, 0x3A, 0xAF, 0x16, 0x67, 0x73,  // ..p:..gs
                /* 0260 */  0x08, 0x4F, 0x06, 0x87, 0x71, 0x7A, 0x47, 0xE1,  // .O..qzG.
                /* 0268 */  0xD3, 0x48, 0x9C, 0xFF, 0xFF, 0x03, 0x84, 0x07,  // .H......
                /* 0270 */  0x07, 0x3E, 0x58, 0x3E, 0x38, 0xE0, 0x11, 0xE5,  // .>X>8...
                /* 0278 */  0xA5, 0x62, 0x02, 0x89, 0x7F, 0x21, 0x48, 0x3C,  // .b...!H<
                /* 0280 */  0x0C, 0xEA, 0x30, 0x04, 0x4C, 0x47, 0xE1, 0xC3,  // ..0.LG..
                /* 0288 */  0x10, 0xCC, 0x59, 0x3E, 0x0C, 0x81, 0x01, 0xE8,  // ..Y>....
                /* 0290 */  0x61, 0x08, 0x2C, 0xD7, 0x01, 0x36, 0xE9, 0x77,  // a.,..6.w
                /* 0298 */  0x87, 0x47, 0x82, 0x58, 0x11, 0x62, 0x19, 0x27,  // .G.X.b.'
                /* 02A0 */  0xE2, 0x51, 0xFB, 0x24, 0xE4, 0xD9, 0x1B, 0xE8,  // .Q.$....
                /* 02A8 */  0xB1, 0x0A, 0x7B, 0x1A, 0x82, 0x7D, 0x0F, 0x3A,  // ..{..}.:
                /* 02B0 */  0xA3, 0xD7, 0x9F, 0xF7, 0x9F, 0xD0, 0x6F, 0x25,  // ......o%
                /* 02B8 */  0x2F, 0x43, 0x87, 0xF3, 0x16, 0x14, 0xE3, 0xA8,  // /C......
                /* 02C0 */  0x6A, 0x83, 0xD2, 0x69, 0xC8, 0x30, 0xB1, 0x8C,  // j..i.0..
                /* 02C8 */  0xF2, 0x70, 0x16, 0xE3, 0xD8, 0x1E, 0x89, 0x0C,  // .p......
                /* 02D0 */  0x11, 0xEE, 0x05, 0x25, 0x62, 0xD4, 0x50, 0xE1,  // ...%b.P.
                /* 02D8 */  0xFF, 0xFF, 0x51, 0x7C, 0x2B, 0x32, 0xC4, 0xD3,  // ..Q|+2..
                /* 02E0 */  0x10, 0x7B, 0x27, 0xF8, 0x38, 0xE0, 0xD3, 0x10,  // .{'.8...
                /* 02E8 */  0xC0, 0x87, 0x89, 0x3F, 0x0D, 0x61, 0x1F, 0x33,  // ...?.a.3
                /* 02F0 */  0x76, 0x32, 0x1E, 0xD4, 0x28, 0x7C, 0x9D, 0x7B,  // v2..(|.{
                /* 02F8 */  0x2D, 0xF3, 0xBC, 0x58, 0x60, 0x08, 0xFD, 0xE0,  // -..X`...
                /* 0300 */  0x7C, 0x7C, 0xF1, 0x29, 0x84, 0x1F, 0x28, 0x7C,  // ||.)..(|
                /* 0308 */  0x0A, 0x61, 0xE7, 0x81, 0x33, 0x78, 0x04, 0xF0,  // .a..3x..
                /* 0310 */  0xF9, 0x06, 0x33, 0x30, 0xF8, 0x80, 0x78, 0xEF,  // ..30..x.
                /* 0318 */  0x53, 0x26, 0x37, 0x11, 0x03, 0x32, 0x81, 0x07,  // S&7..2..
                /* 0320 */  0x0A, 0xD0, 0x8C, 0x0C, 0x33, 0x89, 0x33, 0xF2,  // ....3.3.
                /* 0328 */  0xFF, 0x7F, 0x46, 0x26, 0xF0, 0x80, 0xE1, 0x5F,  // ..F&..._
                /* 0330 */  0x26, 0x7C, 0xA8, 0xF0, 0x2D, 0xE2, 0xE9, 0x21,  // &|..-..!
                /* 0338 */  0x81, 0x4F, 0x53, 0x60, 0x3A, 0xCB, 0xF0, 0xC3,  // .OS`:...
                /* 0340 */  0x06, 0x66, 0x38, 0x31, 0x0E, 0x30, 0xC8, 0x9B,  // .f81.0..
                /* 0348 */  0x86, 0x8F, 0x0F, 0x3E, 0x4D, 0x01, 0x8F, 0x61,  // ...>M..a
                /* 0350 */  0x3C, 0x35, 0x82, 0xED, 0x60, 0x09, 0x67, 0x00,  // <5..`.g.
                /* 0358 */  0x5C, 0xA1, 0x4D, 0x9F, 0x1A, 0x8D, 0x5A, 0x35,  // \.M...Z5
                /* 0360 */  0x28, 0x53, 0xA3, 0x4C, 0x83, 0x5A, 0x7D, 0x2A,  // (S.L.Z}*
                /* 0368 */  0x35, 0x66, 0xEC, 0x8C, 0x60, 0x31, 0x4F, 0x04,  // 5f..`1O.
                /* 0370 */  0x9D, 0x11, 0x1C, 0x05, 0x84, 0xC6, 0xA0, 0x15,  // ........
                /* 0378 */  0x88, 0x45, 0x98, 0x00, 0xA1, 0x2A, 0x40, 0xD8,  // .E...*@.
                /* 0380 */  0xFF, 0x1F                                       // ..
            })
        }

        Scope (PCI0)
        {
            OperationRegion (XHBA, SystemMemory, 0xE00A0000, 0x40)
            Field (XHBA, DWordAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                BR0X,   32
            }

            OperationRegion (XOP1, SystemMemory, BR0X, 0x80F8)
            Field (XOP1, DWordAcc, NoLock, Preserve)
            {
                Offset (0x80D4), 
                    ,   11, 
                BT11,   1, 
                    ,   8, 
                BT20,   1, 
                BT21,   1, 
                Offset (0x80D7), 
                BT24,   1
            }

            Method (CDRH, 1, Serialized)
            {
                If ((DAMT == Zero))
                {
                    BT20 = Zero
                    If ((Arg0 == Zero))
                    {
                        BT24 = Zero
                    }
                    Else
                    {
                        BT24 = One
                    }

                    BT11 = One
                    BT21 = One
                }
                Else
                {
                    Local1 = (^^MBID.RMBX (0x5A, 0x04, 0x04, Zero, 0x14, Zero) | 0x02)
                    ^^MBID.WMBX (0x5A, 0x04, Local1, 0x05, Zero, 0x14, Zero)
                    Local0 = ^^MBID.RMBX (0x5A, 0x80D8, Zero, Zero, Zero, Zero)
                    ADBG ("Value@offset: 0x80d8, Before Write @HostMode")
                    ADBG (Local0)
                    Local0 &= 0xFFEFFFFF
                    Local0 |= 0x00200800
                    If ((Arg0 == One))
                    {
                        Local0 |= 0x01000000
                    }
                    Else
                    {
                        Local0 &= 0xFEFFFFFF
                    }

                    Local1 = (^^MBID.RMBX (0x5A, 0x04, 0x04, Zero, 0x14, Zero) | 0x02)
                    ^^MBID.WMBX (0x5A, 0x04, Local1, 0x05, Zero, 0x14, Zero)
                    ^^MBID.WMBX (0x5A, 0x80D8, Local0, One, Zero, Zero, Zero)
                }
            }

            Method (CDRD, 1, Serialized)
            {
                If ((DAMT == Zero))
                {
                    BT11 = One
                    BT20 = One
                    BT21 = One
                    If ((Arg0 == Zero))
                    {
                        BT24 = Zero
                    }
                    Else
                    {
                        BT24 = One
                    }
                }
                Else
                {
                    Local1 = (^^MBID.RMBX (0x5A, 0x04, 0x04, Zero, 0x14, Zero) | 0x02)
                    ^^MBID.WMBX (0x5A, 0x04, Local1, 0x05, Zero, 0x14, Zero)
                    Local0 = ^^MBID.RMBX (0x5A, 0x80D8, Zero, Zero, Zero, Zero)
                    ADBG ("Value@offset: 0x80d8, Before Write@devicemode")
                    ADBG (Local0)
                    Local0 |= 0x00300800
                    If ((Arg0 == One))
                    {
                        Local0 |= 0x01000000
                    }
                    Else
                    {
                        Local0 &= 0xFEFFFFFF
                    }

                    Local1 = (^^MBID.RMBX (0x5A, 0x04, 0x04, Zero, 0x14, Zero) | 0x02)
                    ^^MBID.WMBX (0x5A, 0x04, Local1, 0x05, Zero, 0x14, Zero)
                    ^^MBID.WMBX (0x5A, 0x80D8, Local0, One, Zero, Zero, Zero)
                }
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                OSYS = 0x07D0
                If (CondRefOf (\_OSI, Local0))
                {
                    If (_OSI ("Windows 2001"))
                    {
                        OSYS = 0x07D1
                    }

                    If (_OSI ("Windows 2001 SP1"))
                    {
                        OSYS = 0x07D1
                    }

                    If (_OSI ("Windows 2001 SP2"))
                    {
                        OSYS = 0x07D2
                    }

                    If (_OSI ("Windows 2006"))
                    {
                        OSYS = 0x07D6
                    }

                    If (_OSI ("Windows 2009"))
                    {
                        OSYS = 0x07D9
                    }

                    If (_OSI ("Windows 2012"))
                    {
                        OSYS = 0x07DC
                    }

                    If (_OSI ("Windows 2013"))
                    {
                        OSYS = 0x07DD
                    }

                    If (_OSI ("Windows 2015"))
                    {
                        OSYS = 0x07DF
                    }
                }
            }

            Method (NHPG, 0, Serialized)
            {
            }

            Method (NPME, 0, Serialized)
            {
            }
        }

        Device (GPED)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT0002" /* Virtual GPIO Controller */)  // _HID: Hardware ID
            Name (_CID, "INT0002" /* Virtual GPIO Controller */)  // _CID: Compatible ID
            Name (_DDN, "Virtual GPIO controller")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (INST, One)
            Name (XTMP, Zero)
            OperationRegion (SCIS, SystemMemory, 0xFED030C0, 0x04)
            Field (SCIS, DWordAcc, NoLock, Preserve)
            {
                    ,   1, 
                LHAD,   1, 
                LATA,   1, 
                LDIO,   1, 
                LARD,   1, 
                LIO1,   1, 
                LCEP,   1, 
                LANB,   1, 
                LHCI,   1, 
                LOTG,   1, 
                LECI,   1, 
                LHSI,   1
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("8b38b469-6f95-4b08-9b02-2defcc2d2c35")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == One))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Return ((PMBS + 0x20))
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                    {
                        0x00000009,
                    }
                })
                Return (RBUF) /* \_SB_.GPED._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((SOCS <= 0x04))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_AEI, 0, NotSerialized)  // _AEI: ACPI Event Interrupts
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Level, ActiveHigh, ExclusiveAndWake, PullDown, 0x0000,
                        "\\_SB.GPED", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0002
                        }
                })
                Return (RBUF) /* \_SB_.GPED._AEI.RBUF */
            }

            Method (_L02, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                If ((XHCI == Zero)){}
                ElseIf ((^^PCI0.XHC1.PMES == One))
                {
                    ^^PCI0.XHC1.PMES = One
                    Notify (^^PCI0.XHC1, 0x02) // Device Wake
                }

                If ((OTGM != Zero))
                {
                    If ((^^PCI0.OTG1.PMES == One))
                    {
                        ADBG ("OTG wake")
                        ^^PCI0.OTG1.PMEE = Zero
                        ^^PCI0.OTG1.CPME = Zero
                        ^^PCI0.OTG1.U2EN = Zero
                        ^^PCI0.OTG1.U3EN = Zero
                        Notify (^^PCI0.OTG1, 0x02) // Device Wake
                    }
                }

                If ((^^PCI0.SEC0.PMES == One))
                {
                    ^^PCI0.SEC0.PMEE = Zero
                    Local0 = ^^PCI0.SEC0.PMEE /* \_SB_.PCI0.SEC0.PMEE */
                    Notify (^^PCI0.SEC0, 0x02) // Device Wake
                }
            }
        }

        Device (GPO0)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT33FF")  // _HID: Hardware ID
            Name (_CID, "INT33FF")  // _CID: Compatible ID
            Name (_DDN, "General Purpose Input/Output (GPIO) controller - SOUTHWEST")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFED80000,         // Address Base
                        0x00008000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                    {
                        0x00000031,
                    }
                })
                Return (RBUF) /* \_SB_.GPO0._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_AEI, 0, NotSerialized)  // _AEI: ACPI Event Interrupts
            {
                Name (WBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveLow, Exclusive, PullNone, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x005F
                        }
                })
                Return (WBUF) /* \_SB_.GPO0._AEI.WBUF */
            }

            Method (_E5F, 0, Serialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Notify (MBTN, 0x88) // Device-Specific
            }

            OperationRegion (XCFG, SystemMemory, 0xE00A0000, 0x40)
            Field (XCFG, DWordAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                XBAD,   32
            }

            OperationRegion (BADR, SystemMemory, XBAD, 0x04E0)
            Field (BADR, DWordAcc, NoLock, Preserve)
            {
                Offset (0x4CC), 
                STTD,   32
            }

            Name (AVBL, Zero)
            Name (AMMR, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If ((Arg0 == 0x08))
                {
                    AVBL = Arg1
                }
                ElseIf ((Arg0 == 0x91))
                {
                    AMMR = Arg1
                }
            }

            OperationRegion (GPOP, GeneralPurposeIo, Zero, 0x0C)
            Field (GPOP, ByteAcc, NoLock, Preserve)
            {
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0035
                        }
                ), 
                BTD3,   1, 
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x003A
                        }
                ), 
                SUSB,   1, 
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x003B
                        }
                ), 
                SHD3,   1, 
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0007
                        }
                ), 
                TCD5,   1, 
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0052
                        }
                ), 
                TCD6,   1
            }

            OperationRegion (GMMR, 0x91, Zero, 0x8000)
            Field (GMMR, DWordAcc, NoLock, Preserve)
            {
                Offset (0x5420), 
                Offset (0x5421), 
                I4AF,   3, 
                    ,   4, 
                I4AE,   1, 
                    ,   4, 
                I4AD,   4, 
                Offset (0x5438), 
                Offset (0x5439), 
                I4CF,   3, 
                    ,   4, 
                I4CE,   1, 
                    ,   4, 
                I4CD,   4, 
                Offset (0x5C28), 
                I95S,   1
            }
        }

        Device (GPO1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT33FF")  // _HID: Hardware ID
            Name (_CID, "INT33FF")  // _CID: Compatible ID
            Name (_DDN, "General Purpose Input/Output (GPIO) controller - NORTH")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                MBID
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFED88000,         // Address Base
                        0x00008000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                    {
                        0x00000030,
                    }
                })
                Return (RBUF) /* \_SB_.GPO1._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Name (BUFF, Buffer (0x03){})
            CreateByteField (BUFF, Zero, STAT)
            CreateByteField (BUFF, 0x02, DATA)
            Name (CHTY, Zero)
            Method (FICH, 0, NotSerialized)
            {
                ADBG ("FICH")
                If ((^^PCI0.I2C3.AVBL == One))
                {
                    BUFF = ^^PCI0.I2C3.RG08 /* \_SB_.PCI0.I2C3.RG08 */
                    DATA >>= 0x06
                    DATA &= 0x03
                    CHTY = DATA /* \_SB_.GPO1.DATA */
                }
            }

            Method (OTCF, 1, NotSerialized)
            {
                If ((^^PCI0.I2C3.AVBL == One))
                {
                    BUFF = ^^PCI0.I2C3.RG01 /* \_SB_.PCI0.I2C3.RG01 */
                    If ((ToInteger (Arg0) == One))
                    {
                        ADBG ("Enable VBUS")
                        If ((^^PCI0.I2C7.AVBL == One))
                        {
                            BUFF = ^^PCI0.I2C7.P0DT /* \_SB_.PCI0.I2C7.P0DT */
                            DATA |= 0x20
                            ^^PCI0.I2C7.P0DT = BUFF /* \_SB_.GPO1.BUFF */
                        }
                    }
                    Else
                    {
                        DATA &= 0xDF
                    }

                    ^^PCI0.I2C3.RG01 = BUFF /* \_SB_.GPO1.BUFF */
                }
            }

            Name (AVBL, Zero)
            Name (AMMR, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If ((Arg0 == 0x08))
                {
                    AVBL = Arg1
                }
                ElseIf ((Arg0 == 0x92))
                {
                    AMMR = Arg1
                }
            }

            OperationRegion (GPOP, GeneralPurposeIo, Zero, 0x11)
            Field (GPOP, ByteAcc, NoLock, Preserve)
            {
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0000
                        }
                ), 
                MPD3,   1, 
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0002
                        }
                ), 
                MRD3,   1, 
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0014
                        }
                ), 
                TCD3,   1, 
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0037
                        }
                ), 
                CRST,   1, 
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0017
                        }
                ), 
                WLD3,   1, 
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0019
                        }
                ), 
                TCTL,   1, 
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0041
                        }
                ), 
                GN65,   1, 
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0042
                        }
                ), 
                GN66,   1
            }

            OperationRegion (GMMR, 0x92, Zero, 0x8000)
            Field (GMMR, DWordAcc, NoLock, Preserve)
            {
                Offset (0x4418), 
                USBI,   1, 
                Offset (0x4818), 
                Offset (0x4819), 
                GPSC,   3, 
                    ,   4, 
                GPSE,   1, 
                Offset (0x5460), 
                COPM,   1
            }
        }

        Device (GPO2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT33FF")  // _HID: Hardware ID
            Name (_CID, "INT33FF")  // _CID: Compatible ID
            Name (_DDN, "General Purpose Input/Output (GPIO) controller - EAST")  // _DDN: DOS Device Name
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFED90000,         // Address Base
                        0x00008000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                    {
                        0x00000032,
                    }
                })
                Return (RBUF) /* \_SB_.GPO2._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            OperationRegion (LSTA, SystemMemory, 0xFED94820, 0x08)
            Field (LSTA, DWordAcc, NoLock, WriteAsZeros)
            {
                HINT,   32
            }

            Method (_AEI, 0, NotSerialized)  // _AEI: ACPI Event Interrupts
            {
                Name (WBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0013
                        }
                })
                Return (WBUF) /* \_SB_.GPO2._AEI.WBUF */
            }

            Method (_E13, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Notify (LID0, 0x80) // Status Change
            }

            Name (BUFF, Buffer (0x07)
            {
                 0xFF                                             // .
            })
            CreateByteField (BUFF, Zero, STAT)
            CreateByteField (BUFF, One, LEN)
            CreateByteField (BUFF, 0x02, TMP0)
            CreateByteField (BUFF, 0x03, AX00)
            CreateByteField (BUFF, 0x04, AX01)
            CreateByteField (BUFF, 0x05, AX10)
            CreateByteField (BUFF, 0x06, AX11)
        }

        Device (GPO3)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT33FF")  // _HID: Hardware ID
            Name (_CID, "INT33FF")  // _CID: Compatible ID
            Name (_DDN, "General Purpose Input/Output (GPIO) controller - SOUTHEAST")  // _DDN: DOS Device Name
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFED98000,         // Address Base
                        0x00008000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                    {
                        0x0000005B,
                    }
                })
                Return (RBUF) /* \_SB_.GPO3._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Name (AVBL, Zero)
            Name (AMMR, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If ((Arg0 == 0x08))
                {
                    AVBL = Arg1
                }
                ElseIf ((Arg0 == 0x94))
                {
                    AMMR = Arg1
                }
            }

            Name (GMOD, ResourceTemplate ()
            {
                GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x004B
                    }
            })
            OperationRegion (GPOP, GeneralPurposeIo, Zero, 0x0C)
            Field (GPOP, ByteAcc, NoLock, Preserve)
            {
                Connection (GMOD), 
                WFD3,   1, 
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0033
                        }
                ), 
                GE51,   1
            }

            OperationRegion (GMMR, 0x94, Zero, 0x8000)
            Field (GMMR, DWordAcc, NoLock, Preserve)
            {
                Offset (0x5420), 
                FGGP,   32, 
                Offset (0x5448), 
                DMTX,   32
            }
        }

        Device (GPO4)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT33FF")  // _HID: Hardware ID
            Name (_CID, "INT33FF")  // _CID: Compatible ID
            Name (_DDN, "General Purpose Input/Output (GPIO) controller - GPIO VIRTUAL")  // _DDN: DOS Device Name
            Name (_UID, 0x05)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFEDA0000,         // Address Base
                        0x00008000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                    {
                        0x0000006C,
                    }
                })
                Return (RBUF) /* \_SB_.GPO4._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((SOCS <= 0x04))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }

            Method (_AEI, 0, NotSerialized)  // _AEI: ACPI Event Interrupts
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Level, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                        "\\_SB.GPO4", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0006
                        }
                })
                Return (RBUF) /* \_SB_.GPO4._AEI.RBUF */
            }

            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If ((Arg0 == 0x08))
                {
                    AVBL = Arg1
                }
            }

            Method (_L06, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                If ((XHCI != Zero))
                {
                    If ((^^PCI0.XHC1.PMES == One))
                    {
                        ^^PCI0.XHC1.PMES = One
                        Notify (^^PCI0.XHC1, 0x02) // Device Wake
                    }
                }

                If ((OTGM != Zero))
                {
                    If ((^^PCI0.OTG1.PMES == One))
                    {
                        ADBG ("OTG wake")
                        ^^PCI0.OTG1.PMEE = Zero
                        ^^PCI0.OTG1.CPME = Zero
                        ^^PCI0.OTG1.U2EN = Zero
                        ^^PCI0.OTG1.U3EN = Zero
                        Notify (^^PCI0.OTG1, 0x02) // Device Wake
                    }
                }

                If ((^^PCI0.SEC0.PMES == One))
                {
                    ^^PCI0.SEC0.PMEE = Zero
                    Local0 = ^^PCI0.SEC0.PMEE /* \_SB_.PCI0.SEC0.PMEE */
                    Notify (^^PCI0.SEC0, 0x02) // Device Wake
                }

                Stall (0x0A)
                PMEB = One
                Stall (0x0A)
            }
        }

        Device (FLDM)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT34D0")  // _HID: Hardware ID
            Name (_CID, "INT34D0")  // _CID: Compatible ID
            Name (_DDN, "Modem Reset device for CHT")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (CDEP, Package (0x03)
            {
                GPO1, 
                ^PCI0.I2C7, 
                ^PCI0.I2C7.PMIC
            })
            Name (_DEP, Package (0x03)  // _DEP: Dependencies
            {
                GPO1, 
                ^PCI0.I2C7, 
                ^PCI0.I2C7.PMI5
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((FMDM == One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            OperationRegion (BADR, SystemMemory, 0xFED8C410, 0x08)
            Field (BADR, DWordAcc, NoLock, Preserve)
            {
                MRB0,   32, 
                MRB1,   32
            }

            OperationRegion (BAD1, SystemMemory, 0xFED8C400, 0x08)
            Field (BAD1, DWordAcc, NoLock, Preserve)
            {
                MRP0,   32, 
                MRP1,   32
            }

            OperationRegion (CFG1, SystemMemory, 0xE00A0000, 0x40)
            Field (CFG1, DWordAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                BAD2,   32
            }

            OperationRegion (ADR3, SystemMemory, BAD2, 0x0560)
            Field (ADR3, DWordAcc, NoLock, Preserve)
            {
                Offset (0x52C), 
                STTD,   32
            }

            Method (MDON, 0, NotSerialized)
            {
                If ((PMID == 0x03))
                {
                    If ((^^PCI0.I2C7.PMI5.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMI5.MOXX = One
                    }
                }
                ElseIf ((PMID == Zero))
                {
                    ^^PCI0.I2C7.PMIC.MOXX = One
                }

                Stall (0xFF)
                If ((^^GPO1.AVBL == One))
                {
                    Stall (0x0A)
                    ^^GPO1.MRD3 = One
                    Stall (0x0A)
                    ^^GPO1.MPD3 = Zero
                    Stall (0x0A)
                    ^^GPO1.MPD3 = One
                    Stall (0x4B)
                    ^^GPO1.MPD3 = Zero
                }

                Stall (0xFF)
                Local1 = (STTD & 0xFFFEFE1D)
                STTD = (Local1 | 0x00010000)
                Stall (0xFF)
                If ((STTD == 0x02F0))
                {
                    Local2 = (STTD & 0xFFFEFC0D)
                    STTD = (Local2 | 0x00010000)
                }

                Stall (0xFF)
                If ((STTD == 0x0E0002F0))
                {
                    Local3 = (STTD & 0xFFFEFC0D)
                    STTD = (Local3 | 0x00010000)
                }
            }

            Method (MOFF, 0, NotSerialized)
            {
                Local1 = (STTD & 0xFFFEFE1D)
                STTD = (Local1 | 0x00010000)
                Stall (0xFF)
                If ((^^GPO1.AVBL == One))
                {
                    ^^GPO1.MRD3 = Zero
                    Stall (0xFF)
                }

                If ((PMID == 0x03))
                {
                    If ((^^PCI0.I2C7.PMI5.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMI5.MOXX = Zero
                    }
                }
                ElseIf ((PMID == Zero))
                {
                    ^^PCI0.I2C7.PMIC.MOXX = Zero
                }

                Stall (0xFF)
            }

            Method (MRST, 0, NotSerialized)
            {
                If ((^^PCI0.XHC1.XCD3 == One))
                {
                    ^^PCI0.XHC1.XHD3 = One
                    Notify (^^PCI0.XHC1, 0x02) // Device Wake
                }
                Else
                {
                    ^^PCI0.XHC1.XHD3 = Zero
                    ^^PCI0.XHC1.D3HE = Zero
                    Stall (0xFF)
                    MOFF ()
                    ^^PCI0.XHC1.S1PD = Zero
                    ^^PCI0.XHC1.S1PU = One
                    ^^PCI0.XHC1.S1PD = One
                    Stall (0xFF)
                    MDON ()
                    ^^PCI0.XHC1.S1PD = Zero
                    ^^PCI0.XHC1.S1PU = Zero
                    ^^PCI0.XHC1.S1PD = One
                    Stall (0xFF)
                    If ((^^PCI0.XHC1.XCD3 == One))
                    {
                        ^^PCI0.XHC1.XHD3 = One
                        Notify (^^PCI0.XHC1, 0x02) // Device Wake
                    }
                }
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("ac340cb7-e901-45bf-b7e6-2b34ec931e23")))
                {
                    If ((Arg2 == Zero))
                    {
                        Return (0x03)
                    }

                    Switch (Arg2)
                    {
                        Case (One)
                        {
                            MOFF ()
                        }
                        Case (0x02)
                        {
                            If ((^^PCI0.XHC1.XCD3 == One))
                            {
                                ^^PCI0.XHC1.XMON = One
                                Notify (^^PCI0.XHC1, 0x02) // Device Wake
                            }
                            Else
                            {
                                ^^PCI0.XHC1.XMON = Zero
                                ^^PCI0.XHC1.D3HE = Zero
                                Stall (0xFF)
                                ^^PCI0.XHC1.S1PD = Zero
                                ^^PCI0.XHC1.S1PU = One
                                ^^PCI0.XHC1.S1PD = One
                                Stall (0xFF)
                                MDON ()
                                ^^PCI0.XHC1.S1PD = Zero
                                ^^PCI0.XHC1.S1PU = Zero
                                ^^PCI0.XHC1.S1PD = One
                                Stall (0xFF)
                                If ((^^PCI0.XHC1.XCD3 == One))
                                {
                                    ^^PCI0.XHC1.XMON = One
                                    Notify (^^PCI0.XHC1, 0x02) // Device Wake
                                }
                            }
                        }
                        Case (0x03)
                        {
                            MRST ()
                        }

                    }
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Scope (PCI0.I2C7)
        {
            OperationRegion (DZFG, GenericSerialBus, Zero, 0x0100)
            Field (DZFG, BufferAcc, NoLock, Preserve)
            {
                Connection (
                    I2cSerialBusV2 (0x005E, ControllerInitiated, 0x000F4240,
                        AddressingMode7Bit, "\\_SB.PCI0.I2C7",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                ), 
                Offset (0x47), 
                AccessAs (BufferAcc, AttribByte), 
                DL03,   8, 
                DL02,   8
            }

            OperationRegion (XOPR, GenericSerialBus, Zero, 0x20)
            Field (XOPR, BufferAcc, NoLock, Preserve)
            {
                Connection (
                    I2cSerialBusV2 (0x0034, ControllerInitiated, 0x000F4240,
                        AddressingMode7Bit, "\\_SB.PCI0.I2C7",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                ), 
                Offset (0x12), 
                AccessAs (BufferAcc, AttribByte), 
                XD31,   8, 
                Offset (0x16), 
                AccessAs (BufferAcc, AttribByte), 
                XD33,   8, 
                XD32,   8
            }

            Device (PMI1)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INT33F4" /* XPOWER PMIC Controller */)  // _HID: Hardware ID
                Name (_CID, "INT33F4" /* XPOWER PMIC Controller */)  // _CID: Compatible ID
                Name (_DDN, "XPOWER PMIC Controller")  // _DDN: DOS Device Name
                Name (_HRV, 0x03)  // _HRV: Hardware Revision
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    I2C7, 
                    GPO1
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0034, ControllerInitiated, 0x000F4240,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C7",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioInt (Level, ActiveLow, Shared, PullDefault, 0x0000,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x000F
                            }
                    })
                    Name (ABUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0034, ControllerInitiated, 0x000F4240,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C7",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioInt (Level, ActiveHigh, Shared, PullDefault, 0x0000,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x000F
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0045
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0042
                            }
                    })
                    If ((OSID != One))
                    {
                        Return (ABUF) /* \_SB_.PCI0.I2C7.PMI1._CRS.ABUF */
                    }
                    Else
                    {
                        Return (SBUF) /* \_SB_.PCI0.I2C7.PMI1._CRS.SBUF */
                    }
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((PMEN == Zero))
                    {
                        Return (Zero)
                    }

                    If ((PMID == 0x02))
                    {
                        ADBG ("XPWR_DCOVE")
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                OperationRegion (PMOP, 0x8D, Zero, 0x0100)
                Field (PMOP, DWordAcc, NoLock, Preserve)
                {
                    ALD1,   32, 
                    ALD2,   32, 
                    ALD3,   32, 
                    DLD1,   32, 
                    DLD2,   32, 
                    DLD3,   32, 
                    DLD4,   32, 
                    ELD1,   32, 
                    ELD2,   32, 
                    ELD3,   32, 
                    FLD1,   32, 
                    FLD2,   32, 
                    FLD3,   32, 
                    BUC1,   32, 
                    BUC2,   32, 
                    BUC3,   32, 
                    BUC4,   32, 
                    BUC5,   32, 
                    BUC6,   32, 
                    GPI1,   32
                }

                OperationRegion (DPTF, 0x8C, Zero, 0x0100)
                Field (DPTF, DWordAcc, NoLock, Preserve)
                {
                    TMP0,   32, 
                    AX00,   32, 
                    AX01,   32, 
                    TMP1,   32, 
                    AX10,   32, 
                    AX11,   32, 
                    TMP2,   32, 
                    AX20,   32, 
                    AX21,   32, 
                    TMP3,   32, 
                    AX30,   32, 
                    AX31,   32, 
                    TMP4,   32, 
                    AX40,   32, 
                    AX41,   32, 
                    TMP5,   32, 
                    AX50,   32, 
                    AX51,   32, 
                    PEN0,   32, 
                    PEN1,   32, 
                    PEN2,   32, 
                    PEN3,   32, 
                    PEN4,   32, 
                    PEN5,   32
                }

                Name (LPAT, Package (0x44)
                {
                    0x091B, 
                    0x00029462, 
                    0x094D, 
                    0x0001DABB, 
                    0x097F, 
                    0x000158E2, 
                    0x09B1, 
                    0xFD17, 
                    0x09E3, 
                    0xBB86, 
                    0x0A15, 
                    0x8C3C, 
                    0x0A47, 
                    0x69CE, 
                    0x0A79, 
                    0x5083, 
                    0x0AAB, 
                    0x3DC4, 
                    0x0ADD, 
                    0x2FC2, 
                    0x0B0F, 
                    0x2535, 
                    0x0B41, 
                    0x1D33, 
                    0x0B73, 
                    0x1713, 
                    0x0BA5, 
                    0x125C, 
                    0x0BD7, 
                    0x0EB3, 
                    0x0C09, 
                    0x0BD8, 
                    0x0C3B, 
                    0x099A, 
                    0x0C6D, 
                    0x07D4, 
                    0x0C9F, 
                    0x066B, 
                    0x0CD1, 
                    0x054A, 
                    0x0D03, 
                    0x0462, 
                    0x0D35, 
                    0x03A6, 
                    0x0D67, 
                    0x030D, 
                    0x0D99, 
                    0x0291, 
                    0x0DCB, 
                    0x022A, 
                    0x0DFD, 
                    0x01D6, 
                    0x0E2F, 
                    0x0190, 
                    0x0E61, 
                    0x0156, 
                    0x0E93, 
                    0x0125, 
                    0x0EC5, 
                    0xFC, 
                    0x0EF7, 
                    0xDA, 
                    0x0F29, 
                    0xBD, 
                    0x0F5B, 
                    0xA4, 
                    0x0F8D, 
                    0x8F
                })
                OperationRegion (GPOP, GeneralPurposeIo, Zero, 0x0100)
                Field (GPOP, ByteAcc, NoLock, Preserve)
                {
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0020
                            }
                    ), 
                    GMP0,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0021
                            }
                    ), 
                    GX00,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0022
                            }
                    ), 
                    GX01,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0023
                            }
                    ), 
                    GMP1,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0024
                            }
                    ), 
                    GX10,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0025
                            }
                    ), 
                    GX11,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0026
                            }
                    ), 
                    GMP2,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0027
                            }
                    ), 
                    GX20,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0028
                            }
                    ), 
                    GX21,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0029
                            }
                    ), 
                    GMP3,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002A
                            }
                    ), 
                    GX30,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002B
                            }
                    ), 
                    GX31,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002C
                            }
                    ), 
                    GMP4,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002D
                            }
                    ), 
                    GX40,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002E
                            }
                    ), 
                    GX41,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002F
                            }
                    ), 
                    GMP5,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0030
                            }
                    ), 
                    GX50,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0031
                            }
                    ), 
                    GX51,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0032
                            }
                    ), 
                    GEN0,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0033
                            }
                    ), 
                    GEN1,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0034
                            }
                    ), 
                    GEN2,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0035
                            }
                    ), 
                    GEN3,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0036
                            }
                    ), 
                    GEN4,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0037
                            }
                    ), 
                    GEN5,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0040
                            }
                    ), 
                    G28X,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0046
                            }
                    ), 
                    G06X,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0048
                            }
                    ), 
                    G18X,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0053
                            }
                    ), 
                    GSDX,   1
                }

                Name (AVBL, Zero)
                Name (AVBD, Zero)
                Name (AVBG, Zero)
                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If ((Arg0 == 0x08))
                    {
                        AVBG = Arg1
                    }

                    If ((Arg0 == 0x8D))
                    {
                        AVBL = Arg1
                    }

                    If ((Arg0 == 0x8C))
                    {
                        AVBD = Arg1
                    }
                }

                Method (_AEI, 0, NotSerialized)  // _AEI: ACPI Event Interrupts
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        GpioInt (Edge, ActiveLow, Exclusive, PullNone, 0x0000,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0011
                            }
                        GpioInt (Edge, ActiveLow, Exclusive, PullNone, 0x0000,
                            "\\_SB.PCI0.I2C7.PMI1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0013
                            }
                    })
                    Return (RBUF) /* \_SB_.PCI0.I2C7.PMI1._AEI.RBUF */
                }

                Method (_E11, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
                {
                    If ((OSID == One))
                    {
                        If ((^^^^GPO1.USBI != Zero))
                        {
                            If ((^^AVBL == One))
                            {
                                Notify (BMDR, 0x87) // Device-Specific
                            }
                        }
                    }
                }

                Method (_E13, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
                {
                    If ((OSID == One))
                    {
                        If ((^^^^GPO1.USBI != Zero))
                        {
                            If ((^^AVBL == One))
                            {
                                Notify (BMDR, 0x87) // Device-Specific
                            }
                        }
                    }
                }
            }

            Device (PMI2)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INT33F5" /* TI PMIC Controller */)  // _HID: Hardware ID
                Name (_CID, "INT33F5" /* TI PMIC Controller */)  // _CID: Compatible ID
                Name (_DDN, "TI PMIC Controller")  // _DDN: DOS Device Name
                Name (_HRV, 0x03)  // _HRV: Hardware Revision
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    I2C7, 
                    GPO1
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x005E, ControllerInitiated, 0x000F4240,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C7",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioInt (Level, ActiveHigh, Shared, PullDefault, 0x0000,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x000F
                            }
                    })
                    Return (SBUF) /* \_SB_.PCI0.I2C7.PMI2._CRS.SBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((PMEN == Zero))
                    {
                        Return (Zero)
                    }

                    If ((PMID == One))
                    {
                        ADBG ("TI_DCOVE")
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                OperationRegion (PMOP, 0x8D, Zero, 0x0100)
                Field (PMOP, DWordAcc, NoLock, Preserve)
                {
                    LDO1,   32, 
                    LDO2,   32, 
                    LDO3,   32, 
                    LDO5,   32, 
                    LDO6,   32, 
                    LDO7,   32, 
                    LDO8,   32, 
                    LDO9,   32, 
                    LD10,   32, 
                    LD11,   32, 
                    LD12,   32, 
                    LD13,   32, 
                    LD14,   32
                }

                OperationRegion (DPTF, 0x8C, Zero, 0x0100)
                Field (DPTF, DWordAcc, NoLock, Preserve)
                {
                    TMP0,   32, 
                    AX00,   32, 
                    AX01,   32, 
                    TMP1,   32, 
                    AX10,   32, 
                    AX11,   32, 
                    TMP2,   32, 
                    AX20,   32, 
                    AX21,   32, 
                    TMP3,   32, 
                    AX30,   32, 
                    AX31,   32, 
                    TMP4,   32, 
                    AX40,   32, 
                    AX41,   32, 
                    TMP5,   32, 
                    AX50,   32, 
                    AX51,   32, 
                    PEN0,   32, 
                    PEN1,   32, 
                    PEN2,   32, 
                    PEN3,   32, 
                    PEN4,   32, 
                    PEN5,   32
                }

                Name (LPAT, Package (0x44)
                {
                    0x091B, 
                    0x03F1, 
                    0x094D, 
                    0x03EB, 
                    0x097F, 
                    0x03E4, 
                    0x09B1, 
                    0x03DA, 
                    0x09E3, 
                    0x03CE, 
                    0x0A15, 
                    0x03BE, 
                    0x0A47, 
                    0x03AA, 
                    0x0A79, 
                    0x0392, 
                    0x0AAB, 
                    0x0375, 
                    0x0ADD, 
                    0x0353, 
                    0x0B0F, 
                    0x032C, 
                    0x0B41, 
                    0x0300, 
                    0x0B73, 
                    0x02D0, 
                    0x0BA5, 
                    0x029D, 
                    0x0BD7, 
                    0x0268, 
                    0x0C09, 
                    0x0232, 
                    0x0C3B, 
                    0x01FD, 
                    0x0C6D, 
                    0x01C9, 
                    0x0C9F, 
                    0x0197, 
                    0x0CD1, 
                    0x0169, 
                    0x0D03, 
                    0x013E, 
                    0x0D35, 
                    0x0117, 
                    0x0D67, 
                    0xF5, 
                    0x0D99, 
                    0xD6, 
                    0x0DCB, 
                    0xBB, 
                    0x0DFD, 
                    0xA3, 
                    0x0E2F, 
                    0x8E, 
                    0x0E61, 
                    0x7C, 
                    0x0E93, 
                    0x6C, 
                    0x0EC5, 
                    0x5E, 
                    0x0EF7, 
                    0x53, 
                    0x0F29, 
                    0x48, 
                    0x0F5B, 
                    0x3F, 
                    0x0F8D, 
                    0x38
                })
                OperationRegion (GPOP, GeneralPurposeIo, Zero, 0x0100)
                Field (GPOP, ByteAcc, NoLock, Preserve)
                {
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0020
                            }
                    ), 
                    GMP0,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0021
                            }
                    ), 
                    GX00,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0022
                            }
                    ), 
                    GX01,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0023
                            }
                    ), 
                    GMP1,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0024
                            }
                    ), 
                    GX10,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0025
                            }
                    ), 
                    GX11,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0026
                            }
                    ), 
                    GMP2,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0027
                            }
                    ), 
                    GX20,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0028
                            }
                    ), 
                    GX21,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0029
                            }
                    ), 
                    GMP3,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002A
                            }
                    ), 
                    GX30,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002B
                            }
                    ), 
                    GX31,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002C
                            }
                    ), 
                    GMP4,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002D
                            }
                    ), 
                    GX40,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002E
                            }
                    ), 
                    GX41,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002F
                            }
                    ), 
                    GMP5,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0030
                            }
                    ), 
                    GX50,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0031
                            }
                    ), 
                    GX51,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0032
                            }
                    ), 
                    GEN0,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0033
                            }
                    ), 
                    GEN1,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0034
                            }
                    ), 
                    GEN2,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0035
                            }
                    ), 
                    GEN3,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0036
                            }
                    ), 
                    GEN4,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0037
                            }
                    ), 
                    GEN5,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0040
                            }
                    ), 
                    G12A,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0044
                            }
                    ), 
                    GSDX,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0047
                            }
                    ), 
                    G28X,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0048
                            }
                    ), 
                    G18U,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0049
                            }
                    ), 
                    G18X,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004B
                            }
                    ), 
                    G3P3,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004C
                            }
                    ), 
                    G12T,   1
                }

                Method (_AEI, 0, NotSerialized)  // _AEI: ACPI Event Interrupts
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        GpioInt (Edge, ActiveLow, ExclusiveAndWake, PullNone, 0x0000,
                            "\\_SB.PCI0.I2C7.PMI2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0011
                            }
                    })
                    Return (RBUF) /* \_SB_.PCI0.I2C7.PMI2._AEI.RBUF */
                }

                Method (_E11, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
                {
                    If ((OSID == One))
                    {
                        If ((^^^^GPO1.USBI != Zero))
                        {
                            If ((^^^I2C3.AVBL == One))
                            {
                                Notify (^^^I2C3.TIDR, 0x87) // Device-Specific
                            }
                        }
                    }
                }

                Name (AVBL, Zero)
                Name (AVBD, Zero)
                Name (AVBG, Zero)
                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If ((Arg0 == 0x08))
                    {
                        AVBG = Arg1
                    }

                    If ((Arg0 == 0x8D))
                    {
                        AVBL = Arg1
                    }

                    If ((Arg0 == 0x8C))
                    {
                        AVBD = Arg1
                    }
                }
            }

            Device (PMI5)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INT34D3")  // _HID: Hardware ID
                Name (_CID, "INT34D3")  // _CID: Compatible ID
                Name (_DDN, "WHISKEY COVE AIC")  // _DDN: DOS Device Name
                Name (_HRV, 0x03)  // _HRV: Hardware Revision
                Name (_UID, One)  // _UID: Unique ID
                Name (ADEP, Package (0x03)
                {
                    I2C7, 
                    GPO1, 
                    GPO3
                })
                Name (_DEP, Package (0x03)  // _DEP: Dependencies
                {
                    I2C7, 
                    GPO1, 
                    MBID
                })
                Name (ACDC, One)
                Name (SBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x004F, ControllerInitiated, 0x000F4240,
                        AddressingMode7Bit, "\\_SB.PCI0.I2C7",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    I2cSerialBusV2 (0x005E, ControllerInitiated, 0x000F4240,
                        AddressingMode7Bit, "\\_SB.PCI0.I2C7",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    I2cSerialBusV2 (0x006E, ControllerInitiated, 0x000F4240,
                        AddressingMode7Bit, "\\_SB.PCI0.I2C7",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveHigh, Shared, PullDefault, 0x0000,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x000F
                        }
                })
                Name (HBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x004F, ControllerInitiated, 0x000F4240,
                        AddressingMode7Bit, "\\_SB.PCI0.I2C7",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    I2cSerialBusV2 (0x005E, ControllerInitiated, 0x000F4240,
                        AddressingMode7Bit, "\\_SB.PCI0.I2C7",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    I2cSerialBusV2 (0x006E, ControllerInitiated, 0x000F4240,
                        AddressingMode7Bit, "\\_SB.PCI0.I2C7",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveHigh, Shared, PullDefault, 0x0000,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x000F
                        }
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    If (((BDID == 0x0A) && (OSID == 0x04)))
                    {
                        Return (HBUF) /* \_SB_.PCI0.I2C7.PMI5.HBUF */
                    }
                    Else
                    {
                        Return (SBUF) /* \_SB_.PCI0.I2C7.PMI5.SBUF */
                    }
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((PMEN == Zero))
                    {
                        Return (Zero)
                    }

                    If ((PMID == 0x03))
                    {
                        ADBG ("W_COVE")
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                OperationRegion (DPTF, 0x8C, Zero, 0x0100)
                Field (DPTF, DWordAcc, NoLock, Preserve)
                {
                    TMP0,   32, 
                    AX00,   32, 
                    AX01,   32, 
                    TMP1,   32, 
                    AX10,   32, 
                    AX11,   32, 
                    TMP2,   32, 
                    AX20,   32, 
                    AX21,   32, 
                    TMP3,   32, 
                    AX30,   32, 
                    AX31,   32, 
                    TMP4,   32, 
                    AX40,   32, 
                    AX41,   32, 
                    TMP5,   32, 
                    AX50,   32, 
                    AX51,   32, 
                    PEN0,   32, 
                    PEN1,   32, 
                    PEN2,   32, 
                    PEN3,   32, 
                    PEN4,   32, 
                    PEN5,   32
                }

                OperationRegion (PMOP, 0x8D, Zero, 0x0100)
                Field (PMOP, DWordAcc, NoLock, Preserve)
                {
                    V18A,   32, 
                    V18X,   32, 
                    VDDQ,   32, 
                    V12A,   32, 
                    V12X,   32, 
                    V28X,   32, 
                    V33A,   32, 
                    V3SD,   32, 
                    VSD,    32, 
                    VSW2,   32, 
                    VSW1,   32, 
                    VUPY,   32, 
                    VRSO,   32, 
                    VP1A,   32, 
                    VP1B,   32, 
                    VP1F,   32, 
                    VP2D,   32, 
                    VP3A,   32, 
                    VP3B,   32, 
                    VP4A,   32, 
                    VP4B,   32, 
                    VP4C,   32, 
                    VP4D,   32, 
                    VP5A,   32, 
                    VP5B,   32, 
                    VP6A,   32, 
                    VP6B,   32, 
                    VP7A,   32
                }

                OperationRegion (GPOP, GeneralPurposeIo, Zero, 0x0100)
                Field (GPOP, ByteAcc, NoLock, Preserve)
                {
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0020
                            }
                    ), 
                    GMP0,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0021
                            }
                    ), 
                    GX00,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0022
                            }
                    ), 
                    GX01,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0023
                            }
                    ), 
                    GMP1,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0024
                            }
                    ), 
                    GX10,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0025
                            }
                    ), 
                    GX11,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0026
                            }
                    ), 
                    GMP2,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0027
                            }
                    ), 
                    GX20,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0028
                            }
                    ), 
                    GX21,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0029
                            }
                    ), 
                    GMP3,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002A
                            }
                    ), 
                    GX30,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002B
                            }
                    ), 
                    GX31,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002C
                            }
                    ), 
                    GMP4,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002D
                            }
                    ), 
                    GX40,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002E
                            }
                    ), 
                    GX41,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002F
                            }
                    ), 
                    GMP5,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0030
                            }
                    ), 
                    GX50,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0031
                            }
                    ), 
                    GX51,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0032
                            }
                    ), 
                    GEN0,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0033
                            }
                    ), 
                    GEN1,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0034
                            }
                    ), 
                    GEN2,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0035
                            }
                    ), 
                    GEN3,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0036
                            }
                    ), 
                    GEN4,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0037
                            }
                    ), 
                    GEN5,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0040
                            }
                    ), 
                    G18A,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0041
                            }
                    ), 
                    G18X,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0042
                            }
                    ), 
                    GDDQ,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0043
                            }
                    ), 
                    G12A,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0044
                            }
                    ), 
                    G12X,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0045
                            }
                    ), 
                    G28X,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0046
                            }
                    ), 
                    G33A,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0047
                            }
                    ), 
                    G3SD,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0048
                            }
                    ), 
                    GSD,    1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0049
                            }
                    ), 
                    GSW2,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004A
                            }
                    ), 
                    GSW1,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004B
                            }
                    ), 
                    GUPY,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004C
                            }
                    ), 
                    GRS0,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004D
                            }
                    ), 
                    GP1A,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004E
                            }
                    ), 
                    GP1B,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004F
                            }
                    ), 
                    GP1F,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0050
                            }
                    ), 
                    GP2D,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0051
                            }
                    ), 
                    GP3A,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0052
                            }
                    ), 
                    GP3B,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0053
                            }
                    ), 
                    GP4A,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0054
                            }
                    ), 
                    GP4B,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0055
                            }
                    ), 
                    GP4C,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0056
                            }
                    ), 
                    GP4D,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0057
                            }
                    ), 
                    GP5A,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0058
                            }
                    ), 
                    GP5B,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0059
                            }
                    ), 
                    GP6A,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x005A
                            }
                    ), 
                    GP6B,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x005B
                            }
                    ), 
                    GP7A,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x005D
                            }
                    ), 
                    MOXX,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x005F
                            }
                    ), 
                    GPRW,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0009
                            }
                    ), 
                    G1P1,   1
                }

                OperationRegion (REGS, 0x8F, Zero, 0x50)
                Field (REGS, ByteAcc, NoLock, Preserve)
                {
                    CLNT,   8, 
                    SA,     8, 
                    OFF,    8, 
                    VAL,    8, 
                    RWM,    8
                }

                Name (AVBL, Zero)
                Name (AVBD, Zero)
                Name (AVBG, Zero)
                Name (AVBE, Zero)
                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If ((Arg0 == 0x08))
                    {
                        AVBG = Arg1
                    }

                    If ((Arg0 == 0x8D))
                    {
                        AVBL = Arg1
                    }

                    If ((Arg0 == 0x8C))
                    {
                        AVBD = Arg1
                    }

                    If ((Arg0 == 0x8F))
                    {
                        AVBE = Arg1
                    }
                }

                Method (GET, 3, Serialized)
                {
                    If ((AVBE == One))
                    {
                        CLNT = Arg0
                        SA = Arg1
                        OFF = Arg2
                        RWM = Zero
                        If ((AVBG == One))
                        {
                            GPRW = Zero
                        }
                    }

                    Return (VAL) /* \_SB_.PCI0.I2C7.PMI5.VAL_ */
                }

                Method (SET, 4, Serialized)
                {
                    If ((AVBE == One))
                    {
                        CLNT = Arg0
                        SA = Arg1
                        OFF = Arg2
                        VAL = Arg3
                        RWM = One
                        If ((AVBG == One))
                        {
                            GPRW = One
                        }
                    }
                }

                Method (EOTG, 0, NotSerialized)
                {
                    ADBG ("PH2")
                    Local0 = GET (One, 0x5E, 0x17)
                    Local0 |= 0x40
                    SET (One, 0x5E, 0x17, Local0)
                    SET (One, 0x5E, 0x25, 0x6B)
                    SET (One, 0x5E, 0x26, 0x07)
                    SET (One, 0x5E, 0x24, 0x02)
                    Local0 = GET (One, 0x5E, 0x28)
                    ADBG ("B4 Set")
                    ADBG (Local0)
                    Local0 &= 0xCF
                    SET (One, 0x5E, 0x25, 0x6B)
                    SET (One, 0x5E, 0x26, 0x07)
                    SET (One, 0x5E, 0x27, Local0)
                    SET (One, 0x5E, 0x24, One)
                    SET (One, 0x5E, 0x25, 0x6B)
                    SET (One, 0x5E, 0x26, 0x07)
                    SET (One, 0x5E, 0x24, 0x02)
                    Local0 = GET (One, 0x5E, 0x28)
                    ADBG ("After Set")
                    ADBG ("REG05")
                    ADBG (Local0)
                    SET (One, 0x5E, 0x25, 0x6B)
                    SET (One, 0x5E, 0x26, 0x03)
                    SET (One, 0x5E, 0x24, 0x02)
                    Local0 = GET (One, 0x5E, 0x28)
                    Local0 &= 0xEF
                    Local0 |= 0x20
                    SET (One, 0x5E, 0x25, 0x6B)
                    SET (One, 0x5E, 0x26, 0x03)
                    SET (One, 0x5E, 0x27, Local0)
                    SET (One, 0x5E, 0x24, One)
                    SET (One, 0x5E, 0x25, 0x6B)
                    SET (One, 0x5E, 0x26, 0x08)
                    SET (One, 0x5E, 0x24, 0x02)
                    Local0 = GET (One, 0x5E, 0x28)
                    ADBG ("PH3")
                    Local0 >>= 0x06
                    If ((Local0 == One))
                    {
                        ADBG ("USB Host")
                    }
                    ElseIf ((Local0 == 0x03))
                    {
                        ADBG ("REG08 St OTG")
                    }
                }

                Method (_AEI, 0, NotSerialized)  // _AEI: ACPI Event Interrupts
                {
                    Name (HBUF, ResourceTemplate ()
                    {
                        GpioInt (Edge, ActiveBoth, Exclusive, PullDefault, 0x0000,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x001F
                            }
                    })
                    Name (WBUF, ResourceTemplate ()
                    {
                        GpioInt (Edge, ActiveLow, ExclusiveAndWake, PullNone, 0x0000,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0012
                            }
                        GpioInt (Edge, ActiveBoth, Exclusive, PullDefault, 0x0000,
                            "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x001F
                            }
                    })
                    Return (HBUF) /* \_SB_.PCI0.I2C7.PMI5._AEI.HBUF */
                }

                Method (_E12, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
                {
                    If ((BDID == 0x08))
                    {
                        Sleep (0x0384)
                        If (CondRefOf (\_SB.PCI0.I2C7.BATC, Local1))
                        {
                            Local0 = GET (One, 0x6E, 0x1E)
                            Local0 >>= 0x03
                            Local0 &= 0x03
                            If ((Local0 != One))
                            {
                                Local0 = GET (One, 0x5E, 0x29)
                                Local0 >>= 0x02
                                Local0 &= 0x0F
                                Local0 = ^^BATC.INTC ()
                                If ((One == Local0))
                                {
                                    ADBG ("BADP1")
                                    Notify (ADP1, 0x80) // Status Change
                                    ADBG ("AfADP1")
                                    Notify (BATC, 0x80) // Status Change
                                    Notify (BATC, 0x81) // Information Change
                                    ADBG ("PINTC")
                                }

                                If (CondRefOf (\_SB.DPTF, Local3))
                                {
                                    If ((One == Local0))
                                    {
                                        ADBG ("DPTFNOTIFY")
                                        Notify (^^^^DPTF, 0x86) // Device-Specific
                                        Notify (TCHG, 0x80) // Status Change
                                    }
                                }
                            }
                        }
                    }
                }

                Method (_E1F, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
                {
                    If (One)
                    {
                        If ((AVBL == One))
                        {
                            Local0 = GET (One, 0x6E, 0x1E)
                            Local0 >>= 0x03
                            Local0 &= 0x03
                            If ((Local0 == Zero))
                            {
                                ADBG ("RID_ACA")
                                CDRH (Zero)
                                ADBG ("PH1")
                            }
                            ElseIf ((Local0 == One))
                            {
                                ADBG ("RID_GND")
                                SET (One, 0x5E, 0x25, 0x6B)
                                SET (One, 0x5E, 0x26, 0x0A)
                                SET (One, 0x5E, 0x24, 0x02)
                                Local0 = GET (One, 0x5E, 0x28)
                                Local0 &= 0xF8
                                Local0 |= 0x07
                                SET (One, 0x5E, 0x25, 0x6B)
                                SET (One, 0x5E, 0x26, 0x0A)
                                SET (One, 0x5E, 0x27, Local0)
                                SET (One, 0x5E, 0x24, One)
                                Sleep (0x0A)
                                Local0 = GET (One, 0x5E, 0x07)
                                Local0 |= One
                                ADBG (Local0)
                                SET (One, 0x5E, 0x07, Local0)
                                CDRH (Zero)
                                ADBG ("PH1")
                                EOTG ()
                                Sleep (0x07D0)
                                SET (One, 0x5E, 0x25, 0x6B)
                                SET (One, 0x5E, 0x26, 0x0A)
                                SET (One, 0x5E, 0x24, 0x02)
                                Local0 = GET (One, 0x5E, 0x28)
                                Local0 &= 0xF8
                                Local0 |= 0x03
                                SET (One, 0x5E, 0x25, 0x6B)
                                SET (One, 0x5E, 0x26, 0x0A)
                                SET (One, 0x5E, 0x27, Local0)
                                SET (One, 0x5E, 0x24, One)
                                Sleep (0x0A)
                            }
                            ElseIf ((Local0 == 0x02))
                            {
                                Sleep (0x0300)
                                Local0 = GET (One, 0x6E, 0x1E)
                                Local0 >>= 0x03
                                Local0 &= 0x03
                                If ((Local0 != Zero))
                                {
                                    Local0 = GET (One, 0x5E, 0x07)
                                    Local0 &= 0xFE
                                    SET (One, 0x5E, 0x07, Local0)
                                    Local0 = GET (One, 0x5E, 0x17)
                                    Local0 |= 0x40
                                    SET (One, 0x5E, 0x17, Local0)
                                    SET (One, 0x5E, 0x25, 0x6B)
                                    SET (One, 0x5E, 0x26, 0x03)
                                    SET (One, 0x5E, 0x24, 0x02)
                                    Local0 = GET (One, 0x5E, 0x28)
                                    Local0 |= 0x10
                                    Local0 &= 0xDF
                                    SET (One, 0x5E, 0x25, 0x6B)
                                    SET (One, 0x5E, 0x26, 0x03)
                                    SET (One, 0x5E, 0x27, Local0)
                                    SET (One, 0x5E, 0x24, One)
                                    Local0 = GET (One, 0x5E, 0x17)
                                    Local0 &= 0xBF
                                    SET (One, 0x5E, 0x17, Local0)
                                }
                                Else
                                {
                                    ^^WIDR.ACAC = One
                                }
                            }
                            Else
                            {
                                ADBG ("Reserved")
                                If ((DSFG == One))
                                {
                                    CDRH (Zero)
                                }
                                Else
                                {
                                    CDRD (Zero)
                                }
                            }
                        }
                    }
                }

                Method (SRCD, 0, Serialized)
                {
                    If ((AVBL == One))
                    {
                        ADBG ("ACDC")
                        ADBG (ACDC)
                        Return (ACDC) /* \_SB_.PCI0.I2C7.PMI5.ACDC */
                    }
                    Else
                    {
                        ADBG ("SRCD AC, PMIC Unavailable")
                        Return (One)
                    }
                }

                Name (LPAT, Package (0x3C)
                {
                    0x09E3, 
                    0x00076272, 
                    0x0A15, 
                    0x00058192, 
                    0x0A47, 
                    0x00042551, 
                    0x0A79, 
                    0x0003267F, 
                    0x0AAB, 
                    0x00026A06, 
                    0x0ADD, 
                    0x0001DD93, 
                    0x0B0F, 
                    0x000173FB, 
                    0x0B41, 
                    0x000123EA, 
                    0x0B73, 
                    0xE6B9, 
                    0x0BA5, 
                    0xB798, 
                    0x0BD7, 
                    0x930B, 
                    0x0C09, 
                    0x767E, 
                    0x0C3B, 
                    0x600F, 
                    0x0C6D, 
                    0x4E50, 
                    0x0C9F, 
                    0x4031, 
                    0x0CD1, 
                    0x34E3, 
                    0x0D03, 
                    0x2BC9, 
                    0x0D35, 
                    0x2470, 
                    0x0D67, 
                    0x1E76, 
                    0x0D99, 
                    0x1990, 
                    0x0DCB, 
                    0x158E, 
                    0x0DFD, 
                    0x1242, 
                    0x0E2F, 
                    0x0F84, 
                    0x0E61, 
                    0x0D3C, 
                    0x0E93, 
                    0x0B56, 
                    0x0EC5, 
                    0x09BE, 
                    0x0EF7, 
                    0x0866, 
                    0x0F29, 
                    0x0744, 
                    0x0F5B, 
                    0x064F, 
                    0x0F8D, 
                    0x057E
                })
            }

            Device (PMIF)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "DMY0001")  // _HID: Hardware ID
                Name (_CID, "DMY0001")  // _CID: Compatible ID
                Name (_DDN, "Dummy PMIC controller")  // _DDN: DOS Device Name
                Name (_HRV, Zero)  // _HRV: Hardware Revision
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    I2C7
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x005E, ControllerInitiated, 0x000F4240,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C7",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                    })
                    Return (SBUF) /* \_SB_.PCI0.I2C7.PMIF._CRS.SBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((PMEN == Zero))
                    {
                        Return (Zero)
                    }

                    If ((PMID == 0xFE))
                    {
                        ADBG ("DMPMIC")
                        Return (0x0F)
                    }

                    Return (Zero)
                }
            }

            Device (PMIC)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INT33FD" /* Intel Baytrail Power Management IC */)  // _HID: Hardware ID
                Name (_CID, "INT33FD" /* Intel Baytrail Power Management IC */)  // _CID: Compatible ID
                Name (_DDN, "CRYSTAL COVE+ AIC")  // _DDN: DOS Device Name
                Name (_HRV, 0x03)  // _HRV: Hardware Revision
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    I2C7, 
                    GPO1
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x006E, ControllerInitiated, 0x000F4240,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C7",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioInt (Level, ActiveHigh, Shared, PullDefault, 0x0000,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x000F
                            }
                    })
                    Return (SBUF) /* \_SB_.PCI0.I2C7.PMIC._CRS.SBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((PMEN == Zero))
                    {
                        Return (Zero)
                    }

                    If ((PMID == Zero))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                OperationRegion (DPTF, 0x8C, Zero, 0x0100)
                Field (DPTF, DWordAcc, NoLock, Preserve)
                {
                    TMP0,   32, 
                    AX00,   32, 
                    AX01,   32, 
                    TMP1,   32, 
                    AX10,   32, 
                    AX11,   32, 
                    TMP2,   32, 
                    AX20,   32, 
                    AX21,   32, 
                    TMP3,   32, 
                    AX30,   32, 
                    AX31,   32, 
                    TMP4,   32, 
                    AX40,   32, 
                    AX41,   32, 
                    TMP5,   32, 
                    AX50,   32, 
                    AX51,   32, 
                    PEN0,   32, 
                    PEN1,   32, 
                    PEN2,   32, 
                    PEN3,   32, 
                    PEN4,   32, 
                    PEN5,   32
                }

                OperationRegion (PMOP, 0x8D, Zero, 0x0100)
                Field (PMOP, DWordAcc, NoLock, Preserve)
                {
                    VSYS,   32, 
                    SYSX,   32, 
                    SYSU,   32, 
                    SYSS,   32, 
                    V50S,   32, 
                    HOST,   32, 
                    VBUS,   32, 
                    HDMI,   32, 
                    S285,   32, 
                    X285,   32, 
                    V33A,   32, 
                    V33S,   32, 
                    V33U,   32, 
                    V33I,   32, 
                    V18A,   32, 
                    REFQ,   32, 
                    V12A,   32, 
                    V18S,   32, 
                    V18X,   32, 
                    V18U,   32, 
                    V12X,   32, 
                    V12S,   32, 
                    V10A,   32, 
                    V10S,   32, 
                    V10X,   32, 
                    V105,   32, 
                    V33X,   32
                }

                OperationRegion (GPOP, GeneralPurposeIo, Zero, 0x0100)
                Field (GPOP, ByteAcc, NoLock, Preserve)
                {
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0020
                            }
                    ), 
                    GMP0,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0021
                            }
                    ), 
                    GX00,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0022
                            }
                    ), 
                    GX01,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0023
                            }
                    ), 
                    GMP1,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0024
                            }
                    ), 
                    GX10,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0025
                            }
                    ), 
                    GX11,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0026
                            }
                    ), 
                    GMP2,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0027
                            }
                    ), 
                    GX20,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0028
                            }
                    ), 
                    GX21,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0029
                            }
                    ), 
                    GMP3,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002A
                            }
                    ), 
                    GX30,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002B
                            }
                    ), 
                    GX31,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002C
                            }
                    ), 
                    GMP4,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002D
                            }
                    ), 
                    GX40,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002E
                            }
                    ), 
                    GX41,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002F
                            }
                    ), 
                    GMP5,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0030
                            }
                    ), 
                    GX50,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0031
                            }
                    ), 
                    GX51,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0032
                            }
                    ), 
                    GEN0,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0033
                            }
                    ), 
                    GEN1,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0034
                            }
                    ), 
                    GEN2,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0035
                            }
                    ), 
                    GEN3,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0036
                            }
                    ), 
                    GEN4,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0037
                            }
                    ), 
                    GEN5,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0040
                            }
                    ), 
                    GSYS,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0041
                            }
                    ), 
                    GYSX,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0042
                            }
                    ), 
                    GYSU,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0043
                            }
                    ), 
                    GYSS,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0044
                            }
                    ), 
                    G50S,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0045
                            }
                    ), 
                    GOST,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0046
                            }
                    ), 
                    GBUS,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0047
                            }
                    ), 
                    GDMI,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0048
                            }
                    ), 
                    G28S,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0049
                            }
                    ), 
                    G28X,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004A
                            }
                    ), 
                    G33A,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004B
                            }
                    ), 
                    G33S,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004C
                            }
                    ), 
                    G33U,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004D
                            }
                    ), 
                    G33I,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004E
                            }
                    ), 
                    G18A,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004F
                            }
                    ), 
                    GEFQ,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0050
                            }
                    ), 
                    G12A,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0051
                            }
                    ), 
                    G18S,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0052
                            }
                    ), 
                    G18X,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0053
                            }
                    ), 
                    G18U,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0054
                            }
                    ), 
                    G12X,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0055
                            }
                    ), 
                    G12S,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0056
                            }
                    ), 
                    G10A,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0057
                            }
                    ), 
                    G10S,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0058
                            }
                    ), 
                    G10X,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0059
                            }
                    ), 
                    G105,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x005E
                            }
                    ), 
                    FCOT,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x005D
                            }
                    ), 
                    MOXX,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x000B
                            }
                    ), 
                    TCON,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.PCI0.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x005A
                            }
                    ), 
                    G33X,   1
                }

                Name (AVBL, Zero)
                Name (AVBD, Zero)
                Name (AVBG, Zero)
                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If ((Arg0 == 0x08))
                    {
                        AVBG = Arg1
                    }

                    If ((Arg0 == 0x8D))
                    {
                        AVBL = Arg1
                    }

                    If ((Arg0 == 0x8C))
                    {
                        AVBD = Arg1
                    }
                }

                Name (LPAT, Package (0x30)
                {
                    0x09E3, 
                    0x03D1, 
                    0x0A15, 
                    0x03C1, 
                    0x0A47, 
                    0x03AD, 
                    0x0A79, 
                    0x0395, 
                    0x0AAB, 
                    0x0377, 
                    0x0ADD, 
                    0x0355, 
                    0x0B0F, 
                    0x032D, 
                    0x0B41, 
                    0x0301, 
                    0x0B73, 
                    0x02D0, 
                    0x0BA5, 
                    0x029D, 
                    0x0BD7, 
                    0x0267, 
                    0x0C09, 
                    0x0231, 
                    0x0C3B, 
                    0x01FC, 
                    0x0C6D, 
                    0x01C8, 
                    0x0C9F, 
                    0x0197, 
                    0x0CD1, 
                    0x0165, 
                    0x0D03, 
                    0x013B, 
                    0x0D35, 
                    0x0115, 
                    0x0D67, 
                    0xF3, 
                    0x0D99, 
                    0xD4, 
                    0x0DCB, 
                    0xBA, 
                    0x0DFD, 
                    0xA2, 
                    0x0E2F, 
                    0x8C, 
                    0x0E93, 
                    0x6B
                })
            }
        }

        Scope (PCI0.I2C1)
        {
            Device (IMP3)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "IMPJ0003")  // _HID: Hardware ID
                Name (_CID, "IMPJ0003")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((BDID == One))
                    {
                        Return (Zero)
                    }

                    If ((PSDE == 0x02))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x006E, ControllerInitiated, 0x000186A0,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C1",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (SBUF) /* \_SB_.PCI0.I2C1.IMP3._CRS.SBUF */
                }
            }
        }

        Scope (PCI0.I2C2)
        {
            Device (IMP3)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "IMPJ0003")  // _HID: Hardware ID
                Name (_CID, "IMPJ0003")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((BDID != One))
                    {
                        Return (Zero)
                    }

                    If ((PSDE == 0x02))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x006E, ControllerInitiated, 0x000186A0,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C2",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (SBUF) /* \_SB_.PCI0.I2C2.IMP3._CRS.SBUF */
                }
            }
        }

        PowerResource (P28X, 0x05, 0x0008)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                ^PCI0.I2C7, 
                ^PCI0.I2C7.PMIC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((^^PCI0.I2C7.PMIC.AVBG == One))
                {
                    ^^PCI0.I2C7.PMIC.G28X = Zero
                    If ((^^PCI0.I2C7.PMIC.AVBL == One))
                    {
                        Return (^^PCI0.I2C7.PMIC.X285) /* \_SB_.PCI0.I2C7.PMIC.X285 */
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((^^PCI0.I2C7.PMIC.AVBL == One))
                {
                    ^^PCI0.I2C7.PMIC.X285 = One
                    If ((^^PCI0.I2C7.PMIC.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMIC.G28X = One
                        Sleep (0x1E)
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((^^PCI0.I2C7.PMIC.AVBL == One))
                {
                    ^^PCI0.I2C7.PMIC.X285 = Zero
                    If ((^^PCI0.I2C7.PMIC.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMIC.G28X = One
                        Sleep (0x1E)
                    }
                }
            }
        }

        PowerResource (P18X, 0x05, 0x0002)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                ^PCI0.I2C7, 
                ^PCI0.I2C7.PMIC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((^^PCI0.I2C7.PMIC.AVBG == One))
                {
                    ^^PCI0.I2C7.PMIC.G18X = Zero
                    If ((^^PCI0.I2C7.PMIC.AVBL == One))
                    {
                        Return (^^PCI0.I2C7.PMIC.V18X) /* \_SB_.PCI0.I2C7.PMIC.V18X */
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((^^PCI0.I2C7.PMIC.AVBL == One))
                {
                    ^^PCI0.I2C7.PMIC.V18X = One
                    If ((^^PCI0.I2C7.PMIC.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMIC.G18X = One
                        Sleep (0x1E)
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((^^PCI0.I2C7.PMIC.AVBL == One))
                {
                    ^^PCI0.I2C7.PMIC.V18X = Zero
                    If ((^^PCI0.I2C7.PMIC.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMIC.G18X = One
                        Sleep (0x1E)
                    }
                }
            }
        }

        PowerResource (P12X, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                ^PCI0.I2C7, 
                ^PCI0.I2C7.PMIC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((^^PCI0.I2C7.PMIC.AVBG == One))
                {
                    ^^PCI0.I2C7.PMIC.G12X = Zero
                    If ((^^PCI0.I2C7.PMIC.AVBL == One))
                    {
                        Return (^^PCI0.I2C7.PMIC.V12X) /* \_SB_.PCI0.I2C7.PMIC.V12X */
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((^^PCI0.I2C7.PMIC.AVBL == One))
                {
                    ^^PCI0.I2C7.PMIC.V12X = One
                    If ((^^PCI0.I2C7.PMIC.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMIC.G12X = One
                        Sleep (0x1E)
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((^^PCI0.I2C7.PMIC.AVBL == One))
                {
                    ^^PCI0.I2C7.PMIC.V12X = Zero
                    If ((^^PCI0.I2C7.PMIC.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMIC.G12X = One
                        Sleep (0x1E)
                    }
                }
            }
        }

        PowerResource (P28P, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                ^PCI0.I2C7, 
                ^PCI0.I2C7.PMI1
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((^^PCI0.I2C7.PMI1.AVBG == One))
                {
                    ^^PCI0.I2C7.PMI1.G28X = Zero
                    If ((^^PCI0.I2C7.PMI1.AVBL == One))
                    {
                        Return (^^PCI0.I2C7.PMI1.ALD1) /* \_SB_.PCI0.I2C7.PMI1.ALD1 */
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((^^PCI0.I2C7.PMI1.AVBL == One))
                {
                    ^^PCI0.I2C7.PMI1.ALD1 = One
                    If ((^^PCI0.I2C7.PMI1.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMI1.G28X = One
                        Sleep (0x1E)
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((^^PCI0.I2C7.PMI1.AVBL == One))
                {
                    ^^PCI0.I2C7.PMI1.ALD1 = Zero
                    If ((^^PCI0.I2C7.PMI1.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMI1.G28X = One
                        Sleep (0x1E)
                    }
                }
            }
        }

        PowerResource (P18P, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                ^PCI0.I2C7, 
                ^PCI0.I2C7.PMI1
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((^^PCI0.I2C7.PMI1.AVBG == One))
                {
                    ^^PCI0.I2C7.PMI1.G18X = Zero
                    If ((^^PCI0.I2C7.PMI1.AVBL == One))
                    {
                        Return (^^PCI0.I2C7.PMI1.ELD2) /* \_SB_.PCI0.I2C7.PMI1.ELD2 */
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((^^PCI0.I2C7.PMI1.AVBL == One))
                {
                    ^^PCI0.I2C7.PMI1.ELD2 = One
                    If ((^^PCI0.I2C7.PMI1.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMI1.G18X = One
                        Sleep (0x1E)
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((^^PCI0.I2C7.PMI1.AVBL == One))
                {
                    ^^PCI0.I2C7.PMI1.ELD2 = Zero
                    If ((^^PCI0.I2C7.PMI1.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMI1.G18X = One
                        Sleep (0x1E)
                    }
                }
            }
        }

        PowerResource (P19X, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                ^PCI0.I2C7, 
                ^PCI0.I2C7.PMI1
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((^^PCI0.I2C7.PMI1.AVBG == One))
                {
                    ^^PCI0.I2C7.PMI1.GSDX = Zero
                    If ((^^PCI0.I2C7.PMI1.AVBL == One))
                    {
                        Return (^^PCI0.I2C7.PMI1.GPI1) /* \_SB_.PCI0.I2C7.PMI1.GPI1 */
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((OSID == 0x04))
                {
                    If ((^^PCI0.I2C7.PMI1.AVBL == One))
                    {
                        ^^PCI0.I2C7.PMI1.GPI1 = One
                        If ((^^PCI0.I2C7.PMI1.AVBG == One))
                        {
                            ^^PCI0.I2C7.PMI1.GSDX = One
                            Sleep (0x1E)
                        }
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((OSID == 0x04))
                {
                    If ((^^PCI0.I2C7.PMI1.AVBL == One))
                    {
                        ^^PCI0.I2C7.PMI1.GPI1 = Zero
                        If ((^^PCI0.I2C7.PMI1.AVBG == One))
                        {
                            ^^PCI0.I2C7.PMI1.GSDX = One
                            Sleep (0x1E)
                        }
                    }
                }
            }
        }

        PowerResource (P06X, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                ^PCI0.I2C7, 
                ^PCI0.I2C7.PMI1
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((^^PCI0.I2C7.PMI1.AVBG == One))
                {
                    ^^PCI0.I2C7.PMI1.G06X = Zero
                    If ((^^PCI0.I2C7.PMI1.AVBL == One))
                    {
                        Return (^^PCI0.I2C7.PMI1.DLD4) /* \_SB_.PCI0.I2C7.PMI1.DLD4 */
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((OSID == 0x04))
                {
                    If ((^^PCI0.I2C7.PMI1.AVBL == One))
                    {
                        ^^PCI0.I2C7.PMI1.DLD4 = One
                        If ((^^PCI0.I2C7.PMI1.AVBG == One))
                        {
                            ^^PCI0.I2C7.PMI1.G06X = One
                            Sleep (0x1E)
                        }
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((OSID == 0x04))
                {
                    If ((^^PCI0.I2C7.PMI1.AVBL == One))
                    {
                        ^^PCI0.I2C7.PMI1.DLD4 = Zero
                        If ((^^PCI0.I2C7.PMI1.AVBG == One))
                        {
                            ^^PCI0.I2C7.PMI1.G06X = One
                            Sleep (0x1E)
                        }
                    }
                }
            }
        }

        PowerResource (P12A, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                ^PCI0.I2C7, 
                ^PCI0.I2C7.PMI2
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((OSID == 0x04))
                {
                    If ((^^PCI0.I2C7.PMI2.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMI2.G12A = Zero
                        If ((^^PCI0.I2C7.PMI2.AVBL == One))
                        {
                            Return (^^PCI0.I2C7.PMI2.LDO1) /* \_SB_.PCI0.I2C7.PMI2.LDO1 */
                        }
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((OSID == 0x04))
                {
                    If ((^^PCI0.I2C7.PMI2.AVBL == One))
                    {
                        ^^PCI0.I2C7.PMI2.LDO1 = One
                        If ((^^PCI0.I2C7.PMI2.AVBG == One))
                        {
                            ^^PCI0.I2C7.PMI2.G12A = One
                            Sleep (0x1E)
                        }
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((OSID == 0x04))
                {
                    If ((^^PCI0.I2C7.PMI2.AVBL == One))
                    {
                        ^^PCI0.I2C7.PMI2.LDO1 = Zero
                        If ((^^PCI0.I2C7.PMI2.AVBG == One))
                        {
                            ^^PCI0.I2C7.PMI2.G12A = One
                            Sleep (0x1E)
                        }
                    }
                }
            }
        }

        PowerResource (P28T, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                ^PCI0.I2C7, 
                ^PCI0.I2C7.PMI2
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((^^PCI0.I2C7.PMI2.AVBG == One))
                {
                    ^^PCI0.I2C7.PMI2.G28X = Zero
                    If ((^^PCI0.I2C7.PMI2.AVBL == One))
                    {
                        Return (^^PCI0.I2C7.PMI2.LDO9) /* \_SB_.PCI0.I2C7.PMI2.LDO9 */
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((^^PCI0.I2C7.PMI2.AVBL == One))
                {
                    ^^PCI0.I2C7.PMI2.LDO9 = One
                    If ((^^PCI0.I2C7.PMI2.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMI2.G28X = One
                        Sleep (0x1E)
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((^^PCI0.I2C7.PMI2.AVBL == One))
                {
                    ^^PCI0.I2C7.PMI2.LDO9 = Zero
                    If ((^^PCI0.I2C7.PMI2.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMI2.G28X = One
                        Sleep (0x1E)
                    }
                }
            }
        }

        PowerResource (P18D, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                ^PCI0.I2C7, 
                ^PCI0.I2C7.PMI2
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((^^PCI0.I2C7.PMI2.AVBG == One))
                {
                    ^^PCI0.I2C7.PMI2.G18U = Zero
                    If ((^^PCI0.I2C7.PMI2.AVBL == One))
                    {
                        Return (^^PCI0.I2C7.PMI2.LD10) /* \_SB_.PCI0.I2C7.PMI2.LD10 */
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((^^PCI0.I2C7.PMI2.AVBL == One))
                {
                    ^^PCI0.I2C7.PMI2.LD10 = One
                    If ((^^PCI0.I2C7.PMI2.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMI2.G18U = One
                        Sleep (0x1E)
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((^^PCI0.I2C7.PMI2.AVBL == One))
                {
                    ^^PCI0.I2C7.PMI2.LD10 = Zero
                    If ((^^PCI0.I2C7.PMI2.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMI2.G18U = One
                        Sleep (0x1E)
                    }
                }
            }
        }

        PowerResource (P18T, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                ^PCI0.I2C7, 
                ^PCI0.I2C7.PMI2
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((^^PCI0.I2C7.PMI2.AVBG == One))
                {
                    ^^PCI0.I2C7.PMI2.G18X = Zero
                    If ((^^PCI0.I2C7.PMI2.AVBL == One))
                    {
                        Return (^^PCI0.I2C7.PMI2.LD11) /* \_SB_.PCI0.I2C7.PMI2.LD11 */
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((^^PCI0.I2C7.PMI2.AVBL == One))
                {
                    ^^PCI0.I2C7.PMI2.LD11 = One
                    If ((^^PCI0.I2C7.PMI2.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMI2.G18X = One
                        Sleep (0x1E)
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((^^PCI0.I2C7.PMI2.AVBL == One))
                {
                    ^^PCI0.I2C7.PMI2.LD11 = Zero
                    If ((^^PCI0.I2C7.PMI2.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMI2.G18X = One
                        Sleep (0x1E)
                    }
                }
            }
        }

        PowerResource (P3P3, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                ^PCI0.I2C7, 
                ^PCI0.I2C7.PMI2
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((^^PCI0.I2C7.PMI2.AVBG == One))
                {
                    ^^PCI0.I2C7.PMI2.G3P3 = Zero
                    If ((^^PCI0.I2C7.PMI2.AVBL == One))
                    {
                        Return (^^PCI0.I2C7.PMI2.LD13) /* \_SB_.PCI0.I2C7.PMI2.LD13 */
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((^^PCI0.I2C7.PMI2.AVBL == One))
                {
                    ^^PCI0.I2C7.PMI2.LD13 = One
                    If ((^^PCI0.I2C7.PMI2.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMI2.G3P3 = One
                        Sleep (0x1E)
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((^^PCI0.I2C7.PMI2.AVBL == One))
                {
                    ^^PCI0.I2C7.PMI2.LD13 = Zero
                    If ((^^PCI0.I2C7.PMI2.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMI2.G3P3 = One
                        Sleep (0x1E)
                    }
                }
            }
        }

        PowerResource (P12T, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                ^PCI0.I2C7, 
                ^PCI0.I2C7.PMI2
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((^^PCI0.I2C7.PMI2.AVBG == One))
                {
                    ^^PCI0.I2C7.PMI2.G12T = Zero
                    If ((^^PCI0.I2C7.PMI2.AVBL == One))
                    {
                        Return (^^PCI0.I2C7.PMI2.LD14) /* \_SB_.PCI0.I2C7.PMI2.LD14 */
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((OSID == 0x04))
                {
                    If ((^^PCI0.I2C7.PMI2.AVBL == One))
                    {
                        ^^PCI0.I2C7.PMI2.LD14 = One
                        If ((^^PCI0.I2C7.PMI2.AVBG == One))
                        {
                            ^^PCI0.I2C7.PMI2.G12T = One
                            Sleep (0x1E)
                        }
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((OSID == 0x04))
                {
                    If ((^^PCI0.I2C7.PMI2.AVBL == One))
                    {
                        ^^PCI0.I2C7.PMI2.LD14 = Zero
                        If ((^^PCI0.I2C7.PMI2.AVBG == One))
                        {
                            ^^PCI0.I2C7.PMI2.G12T = One
                            Sleep (0x1E)
                        }
                    }
                }
            }
        }

        PowerResource (P28W, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                ^PCI0.I2C7, 
                ^PCI0.I2C7.PMI5
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((^^PCI0.I2C7.PMI5.AVBG == One))
                {
                    ^^PCI0.I2C7.PMI5.G28X = Zero
                    If ((^^PCI0.I2C7.PMI5.AVBL == One))
                    {
                        Return (^^PCI0.I2C7.PMI5.V28X) /* \_SB_.PCI0.I2C7.PMI5.V28X */
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((^^PCI0.I2C7.PMI5.AVBL == One))
                {
                    ^^PCI0.I2C7.PMI5.V28X = One
                    If ((^^PCI0.I2C7.PMI5.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMI5.G28X = One
                        Sleep (0x1E)
                    }
                }

                If ((^^PCI0.I2C7.PMI5.AVBL == One))
                {
                    ^^PCI0.I2C7.PMI5.VP3A = One
                    If ((^^PCI0.I2C7.PMI5.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMI5.GP3A = One
                        Sleep (0x1E)
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((^^PCI0.I2C7.PMI5.AVBL == One))
                {
                    ^^PCI0.I2C7.PMI5.V28X = Zero
                    If ((^^PCI0.I2C7.PMI5.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMI5.G28X = One
                        Sleep (0x1E)
                    }
                }

                If ((^^PCI0.I2C7.PMI5.AVBL == One))
                {
                    ^^PCI0.I2C7.PMI5.VP3A = Zero
                    If ((^^PCI0.I2C7.PMI5.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMI5.GP3A = One
                        Sleep (0x1E)
                    }
                }
            }
        }

        PowerResource (P18W, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                ^PCI0.I2C7, 
                ^PCI0.I2C7.PMI5
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((^^PCI0.I2C7.PMI5.AVBG == One))
                {
                    ^^PCI0.I2C7.PMI5.G18X = Zero
                    If ((^^PCI0.I2C7.PMI5.AVBL == One))
                    {
                        Return (^^PCI0.I2C7.PMI5.V18X) /* \_SB_.PCI0.I2C7.PMI5.V18X */
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((^^PCI0.I2C7.PMI5.AVBL == One))
                {
                    ^^PCI0.I2C7.PMI5.V18X = One
                    If ((^^PCI0.I2C7.PMI5.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMI5.G18X = One
                        Sleep (0x1E)
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((^^PCI0.I2C7.PMI5.AVBL == One))
                {
                    ^^PCI0.I2C7.PMI5.V18X = Zero
                    If ((^^PCI0.I2C7.PMI5.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMI5.G18X = One
                        Sleep (0x1E)
                    }
                }
            }
        }

        PowerResource (P12W, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                ^PCI0.I2C7, 
                ^PCI0.I2C7.PMI5
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((^^PCI0.I2C7.PMI5.AVBG == One))
                {
                    ^^PCI0.I2C7.PMI5.G12X = Zero
                    If ((^^PCI0.I2C7.PMI5.AVBL == One))
                    {
                        Return (^^PCI0.I2C7.PMI5.V12X) /* \_SB_.PCI0.I2C7.PMI5.V12X */
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((^^PCI0.I2C7.PMI5.AVBL == One))
                {
                    ^^PCI0.I2C7.PMI5.V12X = One
                    If ((^^PCI0.I2C7.PMI5.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMI5.G12X = One
                        Sleep (0x1E)
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((^^PCI0.I2C7.PMI5.AVBL == One))
                {
                    ^^PCI0.I2C7.PMI5.V12X = Zero
                    If ((^^PCI0.I2C7.PMI5.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMI5.G12X = One
                        Sleep (0x1E)
                    }
                }
            }
        }

        PowerResource (P33W, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                ^PCI0.I2C7, 
                ^PCI0.I2C7.PMI5
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((^^PCI0.I2C7.PMI5.AVBG == One))
                {
                    If ((^^PCI0.I2C7.PMI5.AVBL == One))
                    {
                        Return (^^PCI0.I2C7.PMI5.G1P1) /* \_SB_.PCI0.I2C7.PMI5.G1P1 */
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((^^PCI0.I2C7.PMI5.AVBG == One))
                {
                    If (((OSID == One) || (OSYS == 0x07DF)))
                    {
                        ^^PCI0.I2C7.PMI5.G1P1 = One
                        Sleep (0x1E)
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                Local2 = ^^PCI0.GFX0.PSPS /* \_SB_.PCI0.GFX0.PSPS */
                Local2 &= 0x03
                If ((Local2 == 0x03))
                {
                    If ((^^PCI0.I2C7.PMI5.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMI5.G1P1 = Zero
                        Sleep (0x1E)
                    }
                }
            }
        }

        PowerResource (P33X, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                ^PCI0.I2C7, 
                ^PCI0.I2C7.PMIC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((^^PCI0.I2C7.PMIC.AVBG == One))
                {
                    ^^PCI0.I2C7.PMIC.G33X = Zero
                    If ((^^PCI0.I2C7.PMIC.AVBL == One))
                    {
                        Return (^^PCI0.I2C7.PMIC.V33X) /* \_SB_.PCI0.I2C7.PMIC.V33X */
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((^^PCI0.I2C7.PMIC.AVBL == One))
                {
                    ^^PCI0.I2C7.PMIC.V33X = One
                    If ((^^PCI0.I2C7.PMIC.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMIC.G33X = One
                        Sleep (0x1E)
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                Local2 = ^^PCI0.GFX0.PSPS /* \_SB_.PCI0.GFX0.PSPS */
                Local2 &= 0x03
                If ((Local2 == 0x03))
                {
                    If ((^^PCI0.I2C7.PMIC.AVBL == One))
                    {
                        ^^PCI0.I2C7.PMIC.V33X = Zero
                        If ((^^PCI0.I2C7.PMIC.AVBG == One))
                        {
                            ^^PCI0.I2C7.PMIC.G33X = One
                            Sleep (0x1E)
                        }
                    }
                }
            }
        }

        PowerResource (P4BW, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                ^PCI0.I2C7, 
                ^PCI0.I2C7.PMI5
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((^^PCI0.I2C7.PMI5.AVBG == One))
                {
                    ^^PCI0.I2C7.PMI5.GP4B = Zero
                    If ((^^PCI0.I2C7.PMI5.AVBL == One))
                    {
                        Return (^^PCI0.I2C7.PMI5.VP4B) /* \_SB_.PCI0.I2C7.PMI5.VP4B */
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((^^PCI0.I2C7.PMI5.AVBL == One))
                {
                    ^^PCI0.I2C7.PMI5.VP4B = One
                    If ((^^PCI0.I2C7.PMI5.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMI5.GP4B = One
                        Sleep (0x1E)
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((^^PCI0.I2C7.PMI5.AVBL == One))
                {
                    ^^PCI0.I2C7.PMI5.VP4B = Zero
                    If ((^^PCI0.I2C7.PMI5.AVBG == One))
                    {
                        ^^PCI0.I2C7.PMI5.GP4B = One
                        Sleep (0x1E)
                    }
                }
            }
        }

        Device (TBAD)
        {
            Name (_HID, "INTCFD9" /* Intel Baytrail SOC GPIO Controller */)  // _HID: Hardware ID
            Name (_CID, "PNP0C40" /* Standard Button Controller */)  // _CID: Compatible ID
            Name (_DDN, "Keyboard less system - 5 Button Array Device")  // _DDN: DOS Device Name
            Name (CDEP, Package (0x05)
            {
                GPO0, 
                GPO2, 
                GPO1, 
                ^PCI0.I2C7, 
                ^PCI0.I2C7.PMIC
            })
            Name (_DEP, Package (0x05)  // _DEP: Dependencies
            {
                GPO0, 
                GPO2, 
                GPO1, 
                ^PCI0.I2C7, 
                ^PCI0.I2C7.PMI5
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (WBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullUp, 0x0BB8,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0008
                        }
                    GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullNone, 0x0BB8,
                        "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0000
                        }
                    GpioInt (Edge, ActiveBoth, Exclusive, PullDefault, 0x0BB8,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x005D
                        }
                    GpioInt (Edge, ActiveBoth, Exclusive, PullDefault, 0x0BB8,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0008
                        }
                })
                Return (WBUF) /* \_SB_.TBAD._CRS.WBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Debug = "Method _DSM for Button Device"
                If ((PMID == Zero))
                {
                    If ((OSYS == 0x07DD))
                    {
                        ^^PCI0.I2C7.PMIC.FCOT = One
                    }
                    Else
                    {
                        ^^PCI0.I2C7.PMIC.FCOT = Zero
                    }
                }

                If ((Arg0 == ToUUID ("dfbcf3c5-e7a5-44e6-9c1f-29c76f6e059c") /* Power Button Device */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }
                        Case (One)
                        {
                            Return (0x07)
                        }

                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Return (Zero)
            }
        }

        Device (MBID)
        {
            Name (_HID, "INT33BD" /* Intel Baytrail Mailbox Device */)  // _HID: Hardware ID
            Name (_CID, "INT33BD" /* Intel Baytrail Mailbox Device */)  // _CID: Compatible ID
            Name (_HRV, 0x02)  // _HRV: Hardware Revision
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xE00000D0,         // Address Base
                        0x00000010,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.MBID._CRS.RBUF */
            }

            OperationRegion (REGS, 0x87, Zero, 0x30)
            Field (REGS, DWordAcc, NoLock, Preserve)
            {
                PORT,   32, 
                REG,    32, 
                DATA,   32, 
                MASK,   32, 
                BE,     32, 
                OP,     32, 
                CODE,   32, 
                BAR,    32, 
                DEV,    32, 
                FUN,    32
            }

            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If ((Arg0 == 0x87))
                {
                    AVBL = Arg1
                }
            }

            Method (READ, 3, Serialized)
            {
                Local0 = 0xFFFFFFFF
                If ((AVBL == One))
                {
                    OP = Zero
                    PORT = Arg0
                    REG = Arg1
                    BE = Arg2
                    Local0 = DATA /* \_SB_.MBID.DATA */
                }

                Return (Local0)
            }

            Method (WRIT, 4, Serialized)
            {
                If ((AVBL == One))
                {
                    OP = One
                    PORT = Arg0
                    REG = Arg1
                    BE = Arg2
                    DATA = Arg3
                }
            }

            Method (MODI, 5, Serialized)
            {
                If ((AVBL == One))
                {
                    OP = 0x02
                    PORT = Arg0
                    REG = Arg1
                    BE = Arg2
                    DATA = Arg3
                    MASK = Arg4
                }
            }

            Method (RMBX, 6, Serialized)
            {
                Local0 = 0xFFFFFFFF
                If ((AVBL == One))
                {
                    OP = 0x03
                    PORT = Arg0
                    REG = Arg1
                    BE = 0x03
                    CODE = Arg2
                    BAR = Arg3
                    DEV = Arg4
                    FUN = Arg5
                    Local0 = DATA /* \_SB_.MBID.DATA */
                }

                Return (Local0)
            }

            Method (WMBX, 7, Serialized)
            {
                If ((AVBL == One))
                {
                    OP = 0x04
                    PORT = Arg0
                    REG = Arg1
                    BE = 0x03
                    DATA = Arg2
                    CODE = Arg3
                    BAR = Arg4
                    DEV = Arg5
                    FUN = Arg6
                }
            }
        }

        Device (PAGD)
        {
            Name (_HID, "ACPI000C" /* Processor Aggregator Device */)  // _HID: Hardware ID
            Name (_CID, "ACPI000C" /* Processor Aggregator Device */)  // _CID: Compatible ID
            Name (IDCN, Zero)
            Name (PURP, Package (0x02)
            {
                One, 
                Zero
            })
            Method (_PUR, 0, Serialized)  // _PUR: Processor Utilization Request
            {
                PURP [One] = IDCN /* \_SB_.PAGD.IDCN */
                Return (PURP) /* \_SB_.PAGD.PURP */
            }

            Method (_OST, 3, Serialized)  // _OST: OSPM Status Indication
            {
                Debug = "_OST is invoked"
            }
        }

        Device (LID0)
        {
            Name (_HID, EisaId ("PNP0C0D") /* Lid Device */)  // _HID: Hardware ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                GPO2
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                Local0 = ^^GPO2.HINT /* \_SB_.GPO2.HINT */
                If ((Local0 & One))
                {
                    Return (One)
                }
                Else
                {
                    Return (Zero)
                }

                Return (One)
            }
        }
    }

    Scope (_TZ)
    {
        ThermalZone (TZ00)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.PCI0.I2C7
            })
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If ((PMID == Zero))
                {
                    If ((\_SB.PCI0.I2C7.PMIC.AVBG == One))
                    {
                        \_SB.PCI0.I2C7.PMIC.GMP2 = Zero
                        If ((\_SB.PCI0.I2C7.PMIC.AVBD == One))
                        {
                            Return (\_SB.PCI0.I2C7.PMIC.TMP2)
                        }
                    }
                }

                If ((PMID == 0x03))
                {
                    If ((\_SB.PCI0.I2C7.PMI5.AVBG == One))
                    {
                        \_SB.PCI0.I2C7.PMI5.GMP2 = Zero
                        If ((\_SB.PCI0.I2C7.PMI5.AVBD == One))
                        {
                            Return (\_SB.PCI0.I2C7.PMI5.TMP2)
                        }
                    }
                }

                If ((PMID == One))
                {
                    If ((\_SB.PCI0.I2C7.PMI2.AVBG == One))
                    {
                        \_SB.PCI0.I2C7.PMI2.GMP0 = Zero
                        If ((\_SB.PCI0.I2C7.PMI2.AVBD == One))
                        {
                            Return (\_SB.PCI0.I2C7.PMI2.TMP0)
                        }
                    }
                }

                If ((PMID == 0x02))
                {
                    If ((\_SB.PCI0.I2C7.PMI1.AVBG == One))
                    {
                        \_SB.PCI0.I2C7.PMI1.GMP0 = Zero
                        If ((\_SB.PCI0.I2C7.PMI1.AVBD == One))
                        {
                            Return (\_SB.PCI0.I2C7.PMI1.TMP0)
                        }
                    }
                }

                Return (0x0AAC)
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return ((0x0AAC + (CRTT * 0x0A)))
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (PDRC)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BUF0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0xE0000000,         // Address Base
                    0x10000000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFEA00000,         // Address Base
                    0x00100000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED01000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED03000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED06000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED08000,         // Address Base
                    0x00002000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED80000,         // Address Base
                    0x00040000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED1C000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFEE00000,         // Address Base
                    0x00100000,         // Address Length
                    )
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Return (BUF0) /* \_SB_.PCI0.PDRC.BUF0 */
            }
        }
    }

    Method (BRTN, 1, Serialized)
    {
        If (((DID1 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD01, Arg0)
        }

        If (((DID2 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD02, Arg0)
        }

        If (((DID3 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD03, Arg0)
        }

        If (((DID4 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD04, Arg0)
        }

        If (((DID5 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD05, Arg0)
        }

        If (CondRefOf (NDN3))
        {
            NDN3 (Arg0)
        }
    }

    Scope (_SB.PCI0.I2C7)
    {
        Device (BMDR)
        {
            Name (_HID, "INT33FE" /* XPOWER Battery Device */)  // _HID: Hardware ID
            Name (_CID, "INT33FE" /* XPOWER Battery Device */)  // _CID: Compatible ID
            Name (_DDN, "XPOWER Battery Device")  // _DDN: DOS Device Name
            Name (_DEP, Package (0x04)  // _DEP: Dependencies
            {
                I2C7, 
                PMI1, 
                GPO1, 
                MBID
            })
            Name (BCCC, 0x40)
            Name (BDCP, 0x189C)
            Name (BCCE, One)
            Name (BSTP, Package (0x04)
            {
                Zero, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF
            })
            Name (BUFF, Buffer (0x03){})
            CreateByteField (BUFF, Zero, STAT)
            CreateByteField (BUFF, 0x02, DATA)
            Name (RBUF, Buffer (0x02)
            {
                 0x79, 0x00                                       // y.
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (RBUF) /* \_SB_.PCI0.I2C7.BMDR.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }

            OperationRegion (BMOP, 0x9E, Zero, 0x0100)
            Field (BMOP, DWordAcc, NoLock, Preserve)
            {
                SOC,    32, 
                FCCP,   32, 
                CHST,   32, 
                RMCP,   32, 
                VOLT,   32, 
                BATP,   32, 
                SRP0,   32, 
                STYP,   32, 
                CHGC,   32, 
                STPC,   32, 
                GADC,   32, 
                TTEM,   32, 
                TTCH,   32, 
                CYCL,   32, 
                BTP,    32, 
                DPCU,   32, 
                DSCP,   32, 
                CHEN,   32
            }

            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If ((Arg0 == 0x9E))
                {
                    AVBL = Arg1
                }
            }

            Method (DPTU, 0, NotSerialized)
            {
                ADBG ("DPTU BMDR")
                If ((AVBL == One))
                {
                    DPCU = BCCC /* \_SB_.PCI0.I2C7.BMDR.BCCC */
                    CHEN = BCCE /* \_SB_.PCI0.I2C7.BMDR.BCCE */
                }

                Return (One)
            }

            Method (CMUX, 1, Serialized)
            {
                If ((^^AVBL == One))
                {
                    If ((^^^^GPO1.AVBL == One))
                    {
                        If ((Arg0 != 0x03))
                        {
                            CDRD (One)
                            If ((^^^^GPO3.AMMR == One))
                            {
                                ^^^^GPO3.DMTX = 0x8102
                            }
                        }
                        Else
                        {
                            CDRD (Zero)
                            If ((^^^^GPO3.AMMR == One))
                            {
                                ^^^^GPO3.DMTX = 0x8100
                            }
                        }
                    }
                }
            }

            Method (SBTP, 0, NotSerialized)
            {
                ADBG ("SBTP BMDR")
                Notify (ADP1, 0x80) // Status Change
                If (CondRefOf (\_SB.DPTF, Local3))
                {
                    ADBG ("SBTP Notify DPTF")
                    Notify (DPTF, 0x86) // Device-Specific
                    Notify (TCHG, 0x80) // Status Change
                }

                Return (One)
            }

            Method (PTYP, 0, NotSerialized)
            {
                If ((PMID == One))
                {
                    Return (0x06)
                }

                If ((PMID == 0x02))
                {
                    Return (0x05)
                }

                Return (Zero)
            }

            Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
            {
                Return (_SB) /* \_SB_ */
            }

            Method (PSOC, 0, NotSerialized)
            {
                ADBG ("PSOC")
                If ((AVBL == One))
                {
                    Local1 = SOC /* \_SB_.PCI0.I2C7.BMDR.SOC_ */
                    Return (Local1)
                }

                Return (Zero)
            }

            Method (PMAX, 0, NotSerialized)
            {
                ADBG ("PMAX")
                If ((AVBL == One))
                {
                    Local1 = FCCP /* \_SB_.PCI0.I2C7.BMDR.FCCP */
                    Return (Local1)
                }

                Return (Zero)
            }

            Method (VMIN, 0, NotSerialized)
            {
                Return (0x0DAC)
            }

            Method (APWR, 0, NotSerialized)
            {
                Return (0x0365C040)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("aa7bcf77-263f-4e28-8e16-9cac5c610928")))
                {
                    If ((Arg2 == One))
                    {
                        Return (Zero)
                    }

                    If ((Arg2 == 0x02))
                    {
                        Return (0x2F)
                    }

                    If ((Arg2 == 0x03))
                    {
                        Return (0xE0)
                    }

                    If ((Arg2 == 0x04))
                    {
                        Return (0x03)
                    }

                    If ((Arg2 == 0x05))
                    {
                        Return (One)
                    }

                    If ((Arg2 == 0x06))
                    {
                        Return (0x02)
                    }

                    If ((Arg2 == 0x07))
                    {
                        Return (One)
                    }

                    Return (0xFFFFFFFF)
                }
            }

            Method (PSRC, 0, NotSerialized)
            {
                ADBG ("BMDR PSRC")
                If ((AVBL == One))
                {
                    ADBG ("Read STYP")
                    Local0 = STYP /* \_SB_.PCI0.I2C7.BMDR.STYP */
                    If ((Local0 == Zero))
                    {
                        Return (Zero)
                    }

                    If ((Local0 == One))
                    {
                        Return (One)
                    }

                    If ((Local0 == 0x02))
                    {
                        Return (0x02)
                    }

                    If ((Local0 == 0x03))
                    {
                        Return (0x03)
                    }

                    If ((Local0 == 0x04))
                    {
                        Return (0x04)
                    }

                    If ((Local0 == 0x05))
                    {
                        Return (0x05)
                    }
                }

                Return (One)
            }

            Method (BATD, 0, NotSerialized)
            {
                If ((AVBL == One))
                {
                    ADBG ("BATD")
                    Local0 = CHST /* \_SB_.PCI0.I2C7.BMDR.CHST */
                    Local0 &= 0x0F
                    If ((Local0 == 0x02))
                    {
                        Local1 = 0x02
                    }

                    If ((Local0 == One))
                    {
                        Local1 = One
                    }

                    If ((Local0 == 0x08))
                    {
                        Local1 = Zero
                    }

                    BSTP [Zero] = Local1
                    BSTP [One] = CHGC /* \_SB_.PCI0.I2C7.BMDR.CHGC */
                    BSTP [0x02] = RMCP /* \_SB_.PCI0.I2C7.BMDR.RMCP */
                    BSTP [0x03] = VOLT /* \_SB_.PCI0.I2C7.BMDR.VOLT */
                    DPCU = BCCC /* \_SB_.PCI0.I2C7.BMDR.BCCC */
                }

                Return (BSTP) /* \_SB_.PCI0.I2C7.BMDR.BSTP */
            }

            Method (CTYP, 0, NotSerialized)
            {
                Return (0x02)
            }

            Method (ARTG, 0, NotSerialized)
            {
                Return (0x0365C040)
            }

            Method (BMDC, 0, NotSerialized)
            {
                Return (BDCP) /* \_SB_.PCI0.I2C7.BMDR.BDCP */
            }
        }
    }

    Scope (_SB.PCI0.I2C3)
    {
        Device (TIDR)
        {
            Name (_HID, "INT33FE" /* XPOWER Battery Device */)  // _HID: Hardware ID
            Name (_CID, "INT33FE" /* XPOWER Battery Device */)  // _CID: Compatible ID
            Name (_DDN, "TI PMIC Battery Device")  // _DDN: DOS Device Name
            Name (BCCC, 0x80)
            Name (BCCE, One)
            Name (OTGS, Zero)
            Name (CHPR, One)
            Name (FGDV, 0x0A)
            Name (BCIL, 0x65)
            Name (BCVF, 0x93)
            Name (BCFV, 0xED)
            Name (BCCH, 0x38)
            Name (BCST, 0x05)
            Name (BCPE, 0x74)
            Name (BCCL, 0xFFFFFFFF)
            Name (BCLP, 0x1004)
            Name (DSVO, 0x0EA6)
            Name (BTPC, Zero)
            Name (AVCU, Zero)
            Name (BSTP, Package (0x04)
            {
                Zero, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF
            })
            Name (_DEP, Package (0x05)  // _DEP: Dependencies
            {
                I2C7, 
                ^^I2C7.PMI2, 
                I2C3, 
                GPO1, 
                MBID
            })
            Name (BUFF, Buffer (0x03){})
            CreateByteField (BUFF, Zero, STAT)
            CreateByteField (BUFF, 0x02, DATA)
            Name (RBUF, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x006B, ControllerInitiated, 0x000186A0,
                    AddressingMode7Bit, "\\_SB.PCI0.I2C3",
                    0x00, ResourceConsumer, , Exclusive,
                    )
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (RBUF) /* \_SB_.PCI0.I2C3.TIDR.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }

            OperationRegion (BMOP, 0x9E, Zero, 0x0100)
            Field (BMOP, DWordAcc, NoLock, Preserve)
            {
                SOC,    32, 
                FCCP,   32, 
                CHST,   32, 
                RMCP,   32, 
                VOLT,   32, 
                BATP,   32, 
                SRP0,   32, 
                STYP,   32, 
                CHGC,   32, 
                STPC,   32, 
                GADC,   32, 
                TTEM,   32, 
                TTCH,   32, 
                CYCL,   32, 
                BTP,    32, 
                DPCU,   32, 
                DSCP,   32, 
                CHEN,   32
            }

            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If ((Arg0 == 0x9E))
                {
                    AVBL = Arg1
                }
            }

            Method (DPTU, 0, NotSerialized)
            {
                ADBG ("DPTU TIDR")
                If ((AVBL == One))
                {
                    DPCU = BCCC /* \_SB_.PCI0.I2C3.TIDR.BCCC */
                    CHEN = BCCE /* \_SB_.PCI0.I2C3.TIDR.BCCE */
                }

                Return (One)
            }

            Method (CMUX, 1, Serialized)
            {
                If ((^^^I2C7.AVBL == One))
                {
                    If ((^^^^GPO1.AVBL == One))
                    {
                        BUFF = ^^^I2C7.SIRQ /* \_SB_.PCI0.I2C7.SIRQ */
                        DATA &= 0x20
                        If ((DATA == 0x20))
                        {
                            If ((Arg0 != 0x03))
                            {
                                CDRD (One)
                                If ((^^^^GPO3.AMMR == One))
                                {
                                    ^^^^GPO3.DMTX = 0x8102
                                }
                            }
                        }
                        Else
                        {
                            CDRD (Zero)
                            If ((^^^^GPO3.AMMR == One))
                            {
                                ^^^^GPO3.DMTX = 0x8100
                            }
                        }
                    }
                }
            }

            Method (SBTP, 0, NotSerialized)
            {
                ADBG ("SBTP TIDR")
                Notify (ADP1, 0x80) // Status Change
                If (CondRefOf (\_SB.DPTF, Local3))
                {
                    ADBG ("SBTP Notify DPTF")
                    Notify (DPTF, 0x86) // Device-Specific
                    Notify (TCHG, 0x80) // Status Change
                }

                Return (One)
            }

            Method (PTYP, 0, NotSerialized)
            {
                If ((PMID == One))
                {
                    Return (0x06)
                }

                If ((PMID == 0x02))
                {
                    Return (0x05)
                }

                Return (Zero)
            }

            Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
            {
                Return (_SB) /* \_SB_ */
            }

            Method (PSOC, 0, NotSerialized)
            {
                ADBG ("PSOC")
                If ((AVBL == One))
                {
                    Local1 = SOC /* \_SB_.PCI0.I2C3.TIDR.SOC_ */
                    Return (Local1)
                }

                Return (Zero)
            }

            Method (PMAX, 0, NotSerialized)
            {
                ADBG ("PMAX")
                If ((AVBL == One))
                {
                    Local1 = FCCP /* \_SB_.PCI0.I2C3.TIDR.FCCP */
                    Return (Local1)
                }

                Return (Zero)
            }

            Method (VMIN, 0, NotSerialized)
            {
                Return (0x0DAC)
            }

            Method (APWR, 0, NotSerialized)
            {
                Return (0x0365C040)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("aa7bcf77-263f-4e28-8e16-9cac5c610928")))
                {
                    If ((Arg2 == One))
                    {
                        Return (Zero)
                    }

                    If ((Arg2 == 0x02))
                    {
                        Return (0x08)
                    }

                    If ((Arg2 == 0x03))
                    {
                        Return (0xC0)
                    }

                    If ((Arg2 == 0x04))
                    {
                        Return (0x02)
                    }

                    If ((Arg2 == 0x05))
                    {
                        Return (One)
                    }

                    If ((Arg2 == 0x06))
                    {
                        Return (0xFFFFFFFF)
                    }

                    If ((Arg2 == 0x07))
                    {
                        Return (Zero)
                    }

                    Return (0xFFFFFFFF)
                }
            }

            Method (PSRC, 0, NotSerialized)
            {
                ADBG ("TIDR PSRC")
                If ((AVBL == One))
                {
                    ADBG ("Read STYP")
                    Local0 = STYP /* \_SB_.PCI0.I2C3.TIDR.STYP */
                    If ((Local0 == Zero))
                    {
                        Return (Zero)
                    }

                    If ((Local0 == One))
                    {
                        Return (One)
                    }

                    If ((Local0 == 0x02))
                    {
                        Return (0x02)
                    }

                    If ((Local0 == 0x03))
                    {
                        Return (0x03)
                    }

                    If ((Local0 == 0x04))
                    {
                        Return (0x04)
                    }

                    If ((Local0 == 0x05))
                    {
                        Return (0x05)
                    }
                }

                Return (One)
            }

            Method (BATD, 0, NotSerialized)
            {
                If ((AVBL == One))
                {
                    ADBG ("BATD")
                    Local0 = CHST /* \_SB_.PCI0.I2C3.TIDR.CHST */
                    Local0 &= 0x0F
                    If ((Local0 == 0x02))
                    {
                        Local1 = 0x02
                    }

                    If ((Local0 == One))
                    {
                        Local1 = One
                    }

                    If ((Local0 == 0x08))
                    {
                        Local1 = Zero
                    }

                    BSTP [Zero] = Local1
                    BSTP [One] = CHGC /* \_SB_.PCI0.I2C3.TIDR.CHGC */
                    BSTP [0x02] = RMCP /* \_SB_.PCI0.I2C3.TIDR.RMCP */
                    BSTP [0x03] = VOLT /* \_SB_.PCI0.I2C3.TIDR.VOLT */
                    DPCU = BCCC /* \_SB_.PCI0.I2C3.TIDR.BCCC */
                }

                Return (BSTP) /* \_SB_.PCI0.I2C3.TIDR.BSTP */
            }

            Method (CTYP, 0, NotSerialized)
            {
                Return (0x02)
            }

            Method (ARTG, 0, NotSerialized)
            {
                Return (0x0365C040)
            }
        }

        OperationRegion (POCR, GenericSerialBus, Zero, 0x0100)
        Field (POCR, BufferAcc, NoLock, Preserve)
        {
            Connection (
                I2cSerialBusV2 (0x006B, ControllerInitiated, 0x000F4240,
                    AddressingMode7Bit, "\\_SB.PCI0.I2C3",
                    0x00, ResourceConsumer, , Exclusive,
                    )
            ), 
            Offset (0x01), 
            AccessAs (BufferAcc, AttribByte), 
            P0TG,   8
        }
    }

    Scope (_SB.PCI0.I2C1)
    {
        Name (SMFG, ResourceTemplate ()
        {
            I2cSerialBusV2 (0x0055, ControllerInitiated, 0x000186A0,
                AddressingMode7Bit, "\\_SB.PCI0.I2C1",
                0x00, ResourceConsumer, , Exclusive,
                )
        })
        Name (AVBL, Zero)
        Method (_REG, 2, NotSerialized)  // _REG: Region Availability
        {
            If ((Arg0 == 0x09))
            {
                AVBL = Arg1
            }
        }

        OperationRegion (DVFG, GenericSerialBus, Zero, 0x0100)
        Field (DVFG, BufferAcc, NoLock, Preserve)
        {
            Connection (SMFG), 
            Offset (0x05), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            FG05,   8
        }

        Field (DVFG, BufferAcc, NoLock, Preserve)
        {
            Connection (SMFG), 
            Offset (0x10), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            FG10,   8
        }

        Field (DVFG, BufferAcc, NoLock, Preserve)
        {
            Connection (SMFG), 
            Offset (0x17), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            FG17,   8
        }

        Field (DVFG, BufferAcc, NoLock, Preserve)
        {
            Connection (SMFG), 
            Offset (0x18), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            FG18,   8
        }

        Field (DVFG, BufferAcc, NoLock, Preserve)
        {
            Connection (SMFG), 
            Offset (0x09), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            FG09,   8
        }

        Field (DVFG, BufferAcc, NoLock, Preserve)
        {
            Connection (SMFG), 
            Offset (0x0A), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            FG0A,   8
        }

        Field (DVFG, BufferAcc, NoLock, Preserve)
        {
            Connection (SMFG), 
            Offset (0x11), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            FG11,   8
        }

        Field (DVFG, BufferAcc, NoLock, Preserve)
        {
            Connection (SMFG), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            FG00,   8
        }

        Field (DVFG, BufferAcc, NoLock, Preserve)
        {
            Connection (SMFG), 
            Offset (0x03), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            FG03,   8
        }

        Field (DVFG, BufferAcc, NoLock, Preserve)
        {
            Connection (SMFG), 
            Offset (0x1D), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            FG1D,   8
        }

        Field (DVFG, BufferAcc, NoLock, Preserve)
        {
            Connection (SMFG), 
            Offset (0x2B), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            FG2B,   8
        }

        Field (DVFG, BufferAcc, NoLock, Preserve)
        {
            Connection (SMFG), 
            Offset (0x08), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            THRM,   8
        }

        Field (DVFG, BufferAcc, NoLock, Preserve)
        {
            Connection (SMFG), 
            Offset (0x06), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            SOCR,   8
        }

        Field (DVFG, BufferAcc, NoLock, Preserve)
        {
            Connection (SMFG), 
            Offset (0x1C), 
            AccessAs (BufferAcc, AttribBytes (0x02)), 
            MXCU,   8
        }

        Name (SMBC, ResourceTemplate ()
        {
            I2cSerialBusV2 (0x0055, ControllerInitiated, 0x000186A0,
                AddressingMode7Bit, "\\_SB.PCI0.I2C1",
                0x00, ResourceConsumer, , Exclusive,
                )
        })
        OperationRegion (DVBC, GenericSerialBus, Zero, 0x0100)
        Field (DVBC, BufferAcc, NoLock, Preserve)
        {
            Connection (SMBC), 
            AccessAs (BufferAcc, AttribByte), 
            BC00,   8, 
            BC01,   8, 
            BC02,   8, 
            BC03,   8, 
            BC04,   8, 
            BC05,   8, 
            BC06,   8, 
            BC07,   8, 
            BC08,   8, 
            BC09,   8, 
            BC0A,   8, 
            BC0B,   8, 
            BC0C,   8, 
            BC0D,   8, 
            BC0E,   8, 
            BC0F,   8, 
            BC10,   8
        }

        Field (DVBC, BufferAcc, NoLock, Preserve)
        {
            Connection (SMBC), 
            Offset (0x3D), 
            AccessAs (BufferAcc, AttribByte), 
            BC3D,   8
        }

        Field (DVBC, BufferAcc, NoLock, Preserve)
        {
            Connection (SMBC), 
            Offset (0x30), 
            AccessAs (BufferAcc, AttribByte), 
            BC30,   8
        }

        Field (DVBC, BufferAcc, NoLock, Preserve)
        {
            Connection (SMBC), 
            Offset (0x31), 
            AccessAs (BufferAcc, AttribByte), 
            BC31,   8
        }

        Field (DVBC, BufferAcc, NoLock, Preserve)
        {
            Connection (SMBC), 
            Offset (0x3C), 
            AccessAs (BufferAcc, AttribByte), 
            BC3C,   8
        }

        Field (DVBC, BufferAcc, NoLock, Preserve)
        {
            Connection (SMBC), 
            Offset (0x3E), 
            AccessAs (BufferAcc, AttribByte), 
            BC3E,   8
        }

        Field (DVBC, BufferAcc, NoLock, Preserve)
        {
            Connection (SMBC), 
            Offset (0x35), 
            AccessAs (BufferAcc, AttribBytes (0x06)), 
            BC35,   8
        }

        Device (BATC)
        {
            Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BCCE, One)
            Name (OTGS, Zero)
            Name (HSMD, Zero)
            Name (CHPR, Zero)
            Name (FGDV, 0x0A)
            Name (BCCC, 0x46)
            Name (RECT, Zero)
            Name (BCCL, 0xFFFFFFFF)
            Name (BCLP, 0x1004)
            Name (DSCP, 0x1300)
            Name (DSVO, 0x0EA6)
            Name (BTPC, Zero)
            Name (AVCU, Zero)
            Name (DCPS, Zero)
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                I2C1
            })
            Name (BUFF, Buffer (0x03)
            {
                 0x00, 0x01, 0x00                                 // ...
            })
            CreateByteField (BUFF, Zero, BYAT)
            CreateByteField (BUFF, 0x02, DATA)
            Name (BUF1, Buffer (0x06)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00               // ......
            })
            CreateByteField (BUF1, Zero, BSTA)
            CreateByteField (BUF1, One, BLEN)
            CreateDWordField (BUF1, 0x02, DAT1)
            Name (BUF2, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            CreateByteField (BUF2, Zero, BSTS)
            CreateByteField (BUF2, One, SLEN)
            CreateWordField (BUF2, 0x02, WRD1)
            Name (INBU, Buffer (0x08)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
            })
            CreateByteField (INBU, Zero, INST)
            CreateByteField (INBU, One, INLN)
            CreateByteField (INBU, 0x02, INT0)
            CreateByteField (INBU, 0x03, INT1)
            CreateByteField (INBU, 0x04, INT2)
            CreateByteField (INBU, 0x05, INT3)
            CreateByteField (INBU, 0x06, INT4)
            CreateByteField (INBU, 0x07, INT5)
            Name (BIXP, Package (0x14)
            {
                Zero, 
                One, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                One, 
                0xFFFFFFFF, 
                0x0A, 
                0x04, 
                Zero, 
                0x00017318, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0x88B8, 
                0x61A8, 
                One, 
                One, 
                "SR Real Battery", 
                "123456789", 
                "LION", 
                "Intel SR 1"
            })
            Name (BSTP, Package (0x04)
            {
                Zero, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF
            })
            Method (_BIX, 0, NotSerialized)  // _BIX: Battery Information Extended
            {
                If ((AVBL == One))
                {
                    BUF2 = FG10 /* \_SB_.PCI0.I2C1.FG10 */
                    If ((BSTS != One))
                    {
                        Local1 = WRD1 /* \_SB_.PCI0.I2C1.BATC.WRD1 */
                        Local2 = (Local1 * 0x05)
                        Divide (Local2, FGDV, Local0, Local1)
                        BIXP [0x03] = Local1
                    }

                    BUF2 = FG17 /* \_SB_.PCI0.I2C1.FG17 */
                    If ((BSTS != One))
                    {
                        Local1 = WRD1 /* \_SB_.PCI0.I2C1.BATC.WRD1 */
                        Divide (Local1, 0x64, Local0, Local2)
                        BIXP [0x08] = Local2
                    }
                }

                BIXP [0x02] = DSCP /* \_SB_.PCI0.I2C1.BATC.DSCP */
                BIXP [0x05] = DSVO /* \_SB_.PCI0.I2C1.BATC.DSVO */
                Divide (DSCP, 0x0A, Local0, Local1)
                BIXP [0x06] = Local1
                Divide (DSCP, 0x14, Local0, Local1)
                BIXP [0x07] = Local1
                Return (BIXP) /* \_SB_.PCI0.I2C1.BATC.BIXP */
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                If ((AVBL == One))
                {
                    ADBG ("CH PR")
                    BUFF = BC30 /* \_SB_.PCI0.I2C1.BC30 */
                    Local1 = (DATA & 0x7F)
                    DATA = (Local1 | 0x80)
                    BC30 = BUFF /* \_SB_.PCI0.I2C1.BATC.BUFF */
                    DATA = 0x3D
                    BC04 = BUFF /* \_SB_.PCI0.I2C1.BATC.BUFF */
                    DATA = 0x05
                    BC05 = BUFF /* \_SB_.PCI0.I2C1.BATC.BUFF */
                    DATA = 0xA5
                    BC07 = BUFF /* \_SB_.PCI0.I2C1.BATC.BUFF */
                    DATA = 0xCF
                    BC09 = BUFF /* \_SB_.PCI0.I2C1.BATC.BUFF */
                    DATA = 0x47
                    BC0A = BUFF /* \_SB_.PCI0.I2C1.BATC.BUFF */
                    DATA = 0x66
                    BC10 = BUFF /* \_SB_.PCI0.I2C1.BATC.BUFF */
                    CHPR = Zero
                    ADBG ("CH PR DONE")
                    BUFF = BC3D /* \_SB_.PCI0.I2C1.BC3D */
                    If ((BYAT != One))
                    {
                        Local0 = (DATA >> One)
                        Local0 &= 0x03
                        If (((Local0 == One) || (Local0 == 0x02)))
                        {
                            Local1 = 0x02
                        }

                        If ((Local0 == Zero))
                        {
                            Local1 = One
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = Zero
                        }

                        BSTP [Zero] = Local1
                    }

                    BUF2 = FG0A /* \_SB_.PCI0.I2C1.FG0A */
                    If ((BSTS != One))
                    {
                        Local1 = WRD1 /* \_SB_.PCI0.I2C1.BATC.WRD1 */
                        If ((Local1 & 0x8000))
                        {
                            Local1 = (0xFFFF - Local1)
                        }

                        Divide (Local1, FGDV, Local0, Local2)
                        Local1 = (Local2 * 0x9C)
                        Divide (Local1, 0x64, Local0, Local2)
                        BSTP [One] = Local2
                    }

                    BUF2 = FG05 /* \_SB_.PCI0.I2C1.FG05 */
                    If ((BSTS != One))
                    {
                        Local1 = WRD1 /* \_SB_.PCI0.I2C1.BATC.WRD1 */
                        Local2 = (Local1 * 0x05)
                        Divide (Local2, FGDV, Local0, Local1)
                        BSTP [0x02] = Local1
                    }

                    BUF2 = FG09 /* \_SB_.PCI0.I2C1.FG09 */
                    If ((BSTS != One))
                    {
                        Local1 = WRD1 /* \_SB_.PCI0.I2C1.BATC.WRD1 */
                        Local2 = (Local1 >> 0x03)
                        Local1 = (Local2 * 0x0271)
                        Divide (Local1, 0x03E8, Local0, Local2)
                        BSTP [0x03] = Local2
                    }

                    BUFF = BC30 /* \_SB_.PCI0.I2C1.BC30 */
                    Local1 = (DATA & 0x7F)
                    DATA = (Local1 | 0x80)
                    BC30 = BUFF /* \_SB_.PCI0.I2C1.BATC.BUFF */
                    BUFF = BC00 /* \_SB_.PCI0.I2C1.BC00 */
                    Local1 = BCCC /* \_SB_.PCI0.I2C1.BATC.BCCC */
                    Local3 = Local1
                    Local2 = (DATA & 0xF0)
                    Local0 = (Local3 & 0xF0)
                    If ((Local2 != Local0))
                    {
                        Local2 = (DATA & 0x0F)
                        Local0 = (Local1 & 0xF0)
                        DATA = (Local2 | Local0)
                        BC00 = BUFF /* \_SB_.PCI0.I2C1.BATC.BUFF */
                    }

                    BUFF = BC06 /* \_SB_.PCI0.I2C1.BC06 */
                    Local1 = (DATA & 0x9F)
                    DATA = (Local1 | 0x20)
                    BC06 = BUFF /* \_SB_.PCI0.I2C1.BATC.BUFF */
                    BUFF = BC30 /* \_SB_.PCI0.I2C1.BC30 */
                    Local1 = (DATA & 0x7D)
                    If ((BCCE == One))
                    {
                        ADBG ("EN CH")
                        DATA = (Local1 | Zero)
                        DATA &= 0xFB
                        BC30 = BUFF /* \_SB_.PCI0.I2C1.BATC.BUFF */
                    }
                    Else
                    {
                        ADBG ("DIS CH")
                        DATA = (Local1 | 0x02)
                        BC30 = BUFF /* \_SB_.PCI0.I2C1.BATC.BUFF */
                    }
                }

                Return (BSTP) /* \_SB_.PCI0.I2C1.BATC.BSTP */
            }

            Method (INTC, 0, NotSerialized)
            {
                ADBG ("INTC")
                If ((AVBL == One))
                {
                    INBU = BC35 /* \_SB_.PCI0.I2C1.BC35 */
                }

                Local0 = PSRC ()
                If ((Local0 == One))
                {
                    ADBG ("ACA CHG")
                }
                ElseIf ((Local0 == 0x02))
                {
                    ADBG ("SDP")
                    DCPS = Zero
                }
                ElseIf ((Local0 == 0x03))
                {
                    ADBG ("DCP")
                    DCPS = One
                }
                ElseIf ((Local0 == 0x04))
                {
                    ADBG ("CDP")
                    DCPS = Zero
                }
                ElseIf ((Local0 == 0x05))
                {
                    ADBG ("OTH")
                }
                ElseIf ((Local0 == Zero))
                {
                    CHPR = One
                    ADBG ("NOINP")
                }

                Local1 = (INT5 & 0x0C)
                Local0 = (INT5 & 0x08)
                If ((Local1 == 0x0C))
                {
                    If ((OTGS != One))
                    {
                        ADBG ("OTG Detected")
                        OTGS = One
                    }
                }
                ElseIf ((Local0 == 0x08))
                {
                    If ((OTGS != Zero))
                    {
                        ADBG ("OTG Removal")
                        OTGS = Zero
                    }
                }

                If ((AVBL == One))
                {
                    BUFF = BC3C /* \_SB_.PCI0.I2C1.BC3C */
                }

                If ((BYAT != One))
                {
                    Local0 = (DATA & 0x1F)
                    If ((Local0 == 0x10))
                    {
                        CDRH (Zero)
                        If ((BDID == 0x02))
                        {
                            If ((^^^^GPO1.AMMR == One))
                            {
                                ^^^^GPO1.COPM = One
                            }
                        }

                        HSMD = One
                        ADBG ("RID GND")
                    }
                    ElseIf ((Local0 == 0x08))
                    {
                        CDRH (Zero)
                        If ((BDID == 0x02))
                        {
                            If ((^^^^GPO1.AMMR == One))
                            {
                                ^^^^GPO1.COPM = One
                            }
                        }

                        HSMD = One
                        ADBG ("RID A")
                    }
                    ElseIf ((Local0 == 0x04))
                    {
                        CDRH (Zero)
                        If ((BDID == 0x02))
                        {
                            If ((^^^^GPO1.AMMR == One))
                            {
                                ^^^^GPO1.COPM = One
                            }
                        }

                        HSMD = One
                        ADBG ("RID B")
                    }
                    ElseIf ((Local0 == 0x02))
                    {
                        CDRH (Zero)
                        If ((BDID == 0x02))
                        {
                            If ((^^^^GPO1.AMMR == One))
                            {
                                ^^^^GPO1.COPM = One
                            }
                        }

                        HSMD = One
                        ADBG ("RID C")
                    }
                    ElseIf ((Local0 == One))
                    {
                        If ((DCPS == Zero))
                        {
                            CDRD (One)
                            If ((BDID == 0x02))
                            {
                                If ((^^^^GPO1.AMMR == One))
                                {
                                    ^^^^GPO1.COPM = One
                                }
                            }
                        }
                        Else
                        {
                            CDRD (Zero)
                        }

                        HSMD = Zero
                        ADBG ("RID Float")
                    }
                    Else
                    {
                        CDRH (Zero)
                        If ((BDID == 0x02))
                        {
                            If ((^^^^GPO1.AMMR == One))
                            {
                                ^^^^GPO1.COPM = One
                            }
                        }

                        ADBG ("RID Unknown")
                        HSMD = One
                    }
                }

                Local0 = (INT3 & 0x80)
                Local1 = (INT3 & 0x20)
                If (((Local0 == 0x80) || (Local1 == 0x20)))
                {
                    Return (One)
                }

                If ((CHPR == One))
                {
                    If ((HSMD == Zero))
                    {
                        ADBG ("CHG Rmv")
                        If ((DSFG == One))
                        {
                            CDRH (Zero)
                        }
                        Else
                        {
                            CDRD (Zero)
                        }

                        ADBG ("Charger removed")
                        If ((BDID == 0x02))
                        {
                            If ((^^^^GPO1.AMMR == One))
                            {
                                ^^^^GPO1.COPM = Zero
                            }
                        }

                        HSMD = Zero
                    }

                    Return (One)
                }

                If ((AVBL == One))
                {
                    BUFF = BC30 /* \_SB_.PCI0.I2C1.BC30 */
                }

                If ((BYAT != One))
                {
                    Local0 = DATA /* \_SB_.PCI0.I2C1.BATC.DATA */
                    DATA = (Local0 | 0x40)
                }

                If ((AVBL == One))
                {
                    BC30 = BUFF /* \_SB_.PCI0.I2C1.BATC.BUFF */
                }

                Return (One)
            }

            Method (INTF, 0, NotSerialized)
            {
                ADBG ("INTF")
                If ((AVBL == One))
                {
                    BUF2 = FG00 /* \_SB_.PCI0.I2C1.FG00 */
                }

                If ((BSTS != One))
                {
                    Local1 = WRD1 /* \_SB_.PCI0.I2C1.BATC.WRD1 */
                }

                Return (One)
            }

            Method (CHCU, 1, NotSerialized)
            {
                Local0 = Arg0
                BUFF = BC00 /* \_SB_.PCI0.I2C1.BC00 */
                If ((BYAT != One))
                {
                    Local1 = (Local0 & 0x0F)
                    Local2 = (DATA & 0x0F)
                    If ((Local1 != Local2))
                    {
                        Local1 = (Local0 & 0x0F)
                        Local2 = (DATA & 0xF0)
                        Local0 = (Local2 | Local1)
                        If ((AVBL == One))
                        {
                            DATA = 0x80
                            BC30 = BUFF /* \_SB_.PCI0.I2C1.BATC.BUFF */
                            DATA = Local0
                            BC00 = BUFF /* \_SB_.PCI0.I2C1.BATC.BUFF */
                            DATA = 0x87
                            BC02 = BUFF /* \_SB_.PCI0.I2C1.BATC.BUFF */
                            DATA = 0x97
                            BC02 = BUFF /* \_SB_.PCI0.I2C1.BATC.BUFF */
                            DATA = Zero
                            BC30 = BUFF /* \_SB_.PCI0.I2C1.BATC.BUFF */
                        }
                    }
                }
            }

            Method (_BTP, 1, NotSerialized)  // _BTP: Battery Trip Point
            {
                BTPC = Arg0
                If ((AVBL == One))
                {
                    DAT1 = Arg0
                    BLEN = 0x04
                    BUF2 = FG2B /* \_SB_.PCI0.I2C1.FG2B */
                    If ((BSTS != One))
                    {
                        Local1 = (WRD1 & 0xFFFC)
                        WRD1 = Local1
                        FG2B = BUF2 /* \_SB_.PCI0.I2C1.BATC.BUF2 */
                    }

                    BUF2 = FG1D /* \_SB_.PCI0.I2C1.FG1D */
                    If ((BSTS != One))
                    {
                        Local1 = (WRD1 & 0xFFFB)
                        Local2 = (Local1 | 0x04)
                        WRD1 = Local2
                        FG1D = BUF2 /* \_SB_.PCI0.I2C1.BATC.BUF2 */
                    }

                    BUF2 = SOCR /* \_SB_.PCI0.I2C1.SOCR */
                    If ((BSTS != One))
                    {
                        Local0 = (WRD1 >> 0x08)
                        Local1 = (Local0 & 0xFF)
                    }

                    Local2 = (Local1 + One)
                    Local3 = (Local1 - One)
                    Local1 = (Local2 << 0x08)
                    Local2 = (Local1 | Local3)
                    WRD1 = Local2
                    FG03 = BUF2 /* \_SB_.PCI0.I2C1.BATC.BUF2 */
                }
            }

            Method (_BTM, 1, NotSerialized)  // _BTM: Battery Time
            {
                If ((Arg0 > 0x7530))
                {
                    Return (Zero)
                }

                If ((AVBL == One))
                {
                    BUF2 = FG11 /* \_SB_.PCI0.I2C1.FG11 */
                    If ((BSTS != One))
                    {
                        Local1 = WRD1 /* \_SB_.PCI0.I2C1.BATC.WRD1 */
                        If ((Arg0 == Zero))
                        {
                            Local2 = (Local1 >> 0x05)
                            Local1 = (Local2 * 0x03)
                            Local2 = (Local1 * 0x3C)
                            Return (Local2)
                        }

                        BUF2 = FG05 /* \_SB_.PCI0.I2C1.FG05 */
                        If ((BSTS != One))
                        {
                            Local1 = WRD1 /* \_SB_.PCI0.I2C1.BATC.WRD1 */
                            Local2 = (Local1 * 0x05)
                            Divide (Local2, FGDV, Local0, Local1)
                            Local0 = (Local1 * 0x0E10)
                            Divide (Local0, Arg0, Local1, Local2)
                            Return (Local2)
                        }
                    }
                }

                Return (0xFFFFFFFF)
            }

            Method (_BCT, 1, NotSerialized)  // _BCT: Battery Charge Time
            {
                If (((Arg0 > 0x64) || (Arg0 < One)))
                {
                    Return (Zero)
                }

                If ((AVBL == One))
                {
                    BUF2 = FG05 /* \_SB_.PCI0.I2C1.FG05 */
                    Local1 = WRD1 /* \_SB_.PCI0.I2C1.BATC.WRD1 */
                    If ((BSTS != One))
                    {
                        Local2 = (Local1 * 0x05)
                        Divide (Local2, FGDV, Local0, Local1)
                        If ((Arg0 < Local1))
                        {
                            Return (Zero)
                        }

                        RECT = Local1
                    }

                    BUF2 = FG10 /* \_SB_.PCI0.I2C1.FG10 */
                    If ((BSTS != One))
                    {
                        Local1 = WRD1 /* \_SB_.PCI0.I2C1.BATC.WRD1 */
                        Local2 = (Local1 * 0x05)
                        Divide (Local2, FGDV, Local0, Local1)
                        BCLP = Local1
                    }

                    BUF2 = FG0A /* \_SB_.PCI0.I2C1.FG0A */
                    If ((BSTS != One))
                    {
                        Local1 = WRD1 /* \_SB_.PCI0.I2C1.BATC.WRD1 */
                        If ((Local1 & 0x8000))
                        {
                            Return (Zero)
                        }
                    }

                    Local0 = (BCLP * Arg0)
                    Local0 -= RECT /* \_SB_.PCI0.I2C1.BATC.RECT */
                    Local0 *= 0x0E10
                    Divide (Local0, Local1, Local2, Local3)
                    Return (Local3)
                }

                Return (0xFFFFFFFF)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("4c2067e3-887d-475c-9720-4af1d3ed602e") /* Battery Thermal Limit */))
                {
                    If ((Arg2 == 0x02))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                             // .
                            })
                        }
                    }
                }

                Return (Zero)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }

            Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
            {
                Return (_SB) /* \_SB_ */
            }

            Method (PSOC, 0, NotSerialized)
            {
                If ((AVBL == One))
                {
                    BUF2 = SOCR /* \_SB_.PCI0.I2C1.SOCR */
                    If ((BSTS != One))
                    {
                        Local0 = (WRD1 >> 0x08)
                        Local1 = (Local0 & 0xFF)
                    }

                    Return (Local1)
                }

                Return (Zero)
            }

            Method (PMAX, 0, NotSerialized)
            {
                If ((AVBL == One))
                {
                    BUF2 = MXCU /* \_SB_.PCI0.I2C1.MXCU */
                    If ((BSTS != One))
                    {
                        Local1 = WRD1 /* \_SB_.PCI0.I2C1.BATC.WRD1 */
                        If ((Local1 & 0x8000))
                        {
                            Local0 = (Local1 >> 0x08)
                            Local1 = (Local0 & 0xFF)
                            Local0 = (0xFFFF - Local1)
                            Local1 = (Local0 * 0x04)
                        }
                        Else
                        {
                            Local0 = (Local1 >> 0x08)
                            Local2 = (Local0 & 0xFF)
                            Local1 = (Local2 * 0x04)
                        }

                        Divide (Local1, 0x0A, Local0, Local2)
                        Divide (Local2, FGDV, Local0, Local1)
                        Local2 = (Local1 * 0x03E8)
                        Local1 = (DSVO * Local2)
                        Return (Local1)
                    }
                }

                Return (Zero)
            }

            Method (VMIN, 0, NotSerialized)
            {
                Return (0x0DAC)
            }

            Method (APWR, 0, NotSerialized)
            {
                Return (0x0365C040)
            }

            Method (NPWR, 0, NotSerialized)
            {
                Local3 = APWR ()
                If ((AVBL == One))
                {
                    BUF2 = FG0A /* \_SB_.PCI0.I2C1.FG0A */
                    If ((BSTS != One))
                    {
                        Local1 = WRD1 /* \_SB_.PCI0.I2C1.BATC.WRD1 */
                        If ((Local1 & 0x8000))
                        {
                            Local1 = (0xFFFF - Local1)
                        }

                        Divide (Local1, FGDV, Local0, Local2)
                        Local1 = (Local2 * 0x9C)
                        Divide (Local1, 0x64, Local0, Local2)
                        AVCU = Local2
                        BUF2 = FG09 /* \_SB_.PCI0.I2C1.FG09 */
                        If ((BSTS != One))
                        {
                            Local1 = WRD1 /* \_SB_.PCI0.I2C1.BATC.WRD1 */
                            Local2 = (Local1 >> 0x03)
                            Local1 = (Local2 * 0x0271)
                            Divide (Local1, 0x03E8, Local0, Local2)
                        }

                        Local1 = (Local2 * AVCU) /* \_SB_.PCI0.I2C1.BATC.AVCU */
                        Local0 = (Local3 - Local1)
                        Return (Local0)
                    }
                }

                Return (Local0)
            }

            Method (PSRC, 0, NotSerialized)
            {
                If ((AVBL == One))
                {
                    BUFF = BC3E /* \_SB_.PCI0.I2C1.BC3E */
                    If ((BYAT != One))
                    {
                        Local0 = DATA /* \_SB_.PCI0.I2C1.BATC.DATA */
                        If ((Local0 == Zero))
                        {
                            Return (Zero)
                        }

                        If ((((Local0 == 0x10) || (Local0 == 0x20)) || ((Local0 == 
                            0x40) || (Local0 == 0x80))))
                        {
                            Return (One)
                        }

                        If ((Local0 == 0x02))
                        {
                            Return (0x02)
                        }

                        If ((Local0 == 0x04))
                        {
                            Return (0x03)
                        }

                        If ((Local0 == 0x08))
                        {
                            Return (0x04)
                        }

                        If ((Local0 == One))
                        {
                            Return (0x05)
                        }
                    }
                }

                Return (One)
            }

            Method (CTYP, 0, NotSerialized)
            {
                Return (0x02)
            }

            Method (ARTG, 0, NotSerialized)
            {
                Return (0x0365C040)
            }
        }
    }

    Scope (_SB.PCI0.I2C7)
    {
        Name (AVBL, Zero)
        Method (_REG, 2, NotSerialized)  // _REG: Region Availability
        {
            If ((Arg0 == 0x09))
            {
                AVBL = Arg1
            }
        }

        Device (WIDR)
        {
            Name (_HID, "INT33FE" /* XPOWER Battery Device */)  // _HID: Hardware ID
            Name (_CID, "INT33FE" /* XPOWER Battery Device */)  // _CID: Compatible ID
            Name (_DDN, "WC PMIC Battery Device")  // _DDN: DOS Device Name
            Name (BCCC, 0x80)
            Name (BCCE, One)
            Name (OTGS, Zero)
            Name (CHPR, One)
            Name (FGDV, 0x0A)
            Name (BCIL, 0x65)
            Name (BCVF, 0x93)
            Name (BCFV, 0xED)
            Name (BCCH, 0x38)
            Name (BCST, 0x05)
            Name (BCPE, 0x74)
            Name (BCCL, 0xFFFFFFFF)
            Name (BCLP, 0x1004)
            Name (DSVO, 0x0EA6)
            Name (BTPC, Zero)
            Name (AVCU, Zero)
            Name (BSTP, Package (0x04)
            {
                Zero, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF
            })
            Name (_DEP, Package (0x05)  // _DEP: Dependencies
            {
                I2C7, 
                PMI5, 
                I2C1, 
                GPO3, 
                MBID
            })
            Name (RBUF, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x005E, ControllerInitiated, 0x000186A0,
                    AddressingMode7Bit, "\\_SB.PCI0.I2C7",
                    0x00, ResourceConsumer, , Exclusive,
                    )
                I2cSerialBusV2 (0x0055, ControllerInitiated, 0x000186A0,
                    AddressingMode7Bit, "\\_SB.PCI0.I2C1",
                    0x00, ResourceConsumer, , Exclusive,
                    )
                GpioInt (Edge, ActiveBoth, Exclusive, PullNone, 0x0000,
                    "\\_SB.PCI0.I2C7.PMI5", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0012
                    }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (RBUF) /* \_SB_.PCI0.I2C7.WIDR.RBUF */
            }

            Method (GETM, 0, NotSerialized)
            {
                Return (UBCB) /* \UBCB */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            OperationRegion (BMOP, 0x9E, Zero, 0x0100)
            Field (BMOP, DWordAcc, NoLock, Preserve)
            {
                SOC,    32, 
                FCCP,   32, 
                CHST,   32, 
                RMCP,   32, 
                VOLT,   32, 
                BATP,   32, 
                SRP0,   32, 
                STYP,   32, 
                CHGC,   32, 
                STPC,   32, 
                GADC,   32, 
                TTEM,   32, 
                TTCH,   32, 
                CYCL,   32, 
                BTP,    32, 
                DPCU,   32, 
                DSCP,   32, 
                CHEN,   32, 
                ACAC,   32
            }

            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If ((Arg0 == 0x9E))
                {
                    AVBL = Arg1
                }
            }

            Method (DPTU, 0, NotSerialized)
            {
                ADBG ("DPTU WIDR")
                If ((AVBL == One))
                {
                    DPCU = BCCC /* \_SB_.PCI0.I2C7.WIDR.BCCC */
                    CHEN = BCCE /* \_SB_.PCI0.I2C7.WIDR.BCCE */
                }

                Return (One)
            }

            Method (SBTP, 0, NotSerialized)
            {
                ADBG ("SBTP WIDR")
                If (CondRefOf (\_SB.PCI0.I2C7.WIDR, Local1))
                {
                    Local0 = ^^PMI5.GET (One, 0x6E, 0x1E)
                    Local0 >>= 0x03
                    Local0 &= 0x03
                    If ((Local0 != One))
                    {
                        Notify (ADP1, 0x80) // Status Change
                    }
                }

                If (CondRefOf (\_SB.DPTF, Local3))
                {
                    ADBG ("SBTP NOTIFY DPTF 86")
                    Notify (DPTF, 0x86) // Device-Specific
                    Notify (TCHG, 0x80) // Status Change
                }

                Return (One)
            }

            Method (PTYP, 0, NotSerialized)
            {
                If ((PMID == One))
                {
                    Return (0x06)
                }

                If ((PMID == 0x02))
                {
                    Return (0x05)
                }

                If ((PMID == 0x03))
                {
                    Return (0x04)
                }

                Return (Zero)
            }

            Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
            {
                Return (_SB) /* \_SB_ */
            }

            Method (PSOC, 0, NotSerialized)
            {
                ADBG ("PSOC")
                If ((AVBL == One))
                {
                    Local1 = WIDR /* \_SB_.PCI0.I2C7.WIDR */
                    Return (Local1)
                }

                Return (Zero)
            }

            Method (PMAX, 0, NotSerialized)
            {
                ADBG ("PMAX")
                If ((AVBL == One))
                {
                    Local1 = FCCP /* \_SB_.PCI0.I2C7.WIDR.FCCP */
                    Return (Local1)
                }

                Return (Zero)
            }

            Method (VMIN, 0, NotSerialized)
            {
                Return (0x0DAC)
            }

            Method (APWR, 0, NotSerialized)
            {
                Return (0x0365C040)
            }

            Method (DSM2, 0, NotSerialized)
            {
                Notify (UBTC, 0x80) // Status Change
                Return (0x0F)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("aa7bcf77-263f-4e28-8e16-9cac5c610928")))
                {
                    If ((Arg2 == One))
                    {
                        Return (Zero)
                    }

                    If ((Arg2 == 0x02))
                    {
                        Return (0x08)
                    }

                    If ((Arg2 == 0x03))
                    {
                        Return (0xC0)
                    }

                    If ((Arg2 == 0x04))
                    {
                        Return (0x06)
                    }

                    If ((Arg2 == 0x05))
                    {
                        Return (0x02)
                    }

                    If ((Arg2 == 0x06))
                    {
                        Return (0x05)
                    }

                    If ((Arg2 == 0x07))
                    {
                        Return (Zero)
                    }

                    If ((Arg2 == 0x08))
                    {
                        Return (0x07)
                    }

                    If ((Arg2 == 0x09))
                    {
                        Return (0xA0)
                    }

                    If ((Arg2 == 0x0A))
                    {
                        Return (0xD6)
                    }

                    Return (0xFFFFFFFF)
                }
            }

            Method (PSRC, 0, NotSerialized)
            {
                If ((AVBL == One))
                {
                    Local0 = STYP /* \_SB_.PCI0.I2C7.WIDR.STYP */
                    If ((Local0 == Zero))
                    {
                        Return (Zero)
                    }

                    If ((Local0 == One))
                    {
                        Return (One)
                    }

                    If ((Local0 == 0x02))
                    {
                        Return (0x02)
                    }

                    If ((Local0 == 0x03))
                    {
                        Return (0x03)
                    }

                    If ((Local0 == 0x04))
                    {
                        Return (0x04)
                    }

                    If ((Local0 == 0x05))
                    {
                        Return (0x05)
                    }
                }

                Return (One)
            }

            Method (GPTG, 1, Serialized)
            {
                If ((^^^^GPO3.AMMR == One))
                {
                    Local0 = ^^^^GPO3.FGGP /* \_SB_.GPO3.FGGP */
                }

                ADBG ("GPO PAD BEFORE")
                ADBG (Local0)
                Local0 |= 0x02
                ADBG ("GPO PAD AFTER")
                ADBG (Local0)
                If ((^^^^GPO3.AMMR == One))
                {
                    ^^^^GPO3.FGGP = Local0
                }
            }

            Method (USBH, 1, Serialized)
            {
                If ((Arg0 == One))
                {
                    Local0 = ^^PMI5.GET (One, 0x5E, 0x07)
                    Local0 |= One
                    ADBG (Local0)
                    ^^PMI5.SET (One, 0x5E, 0x07, Local0)
                    CDRH (Zero)
                    Local0 = ^^PMI5.GET (One, 0x5E, 0x17)
                    Local0 |= 0x40
                    ^^PMI5.SET (One, 0x5E, 0x17, Local0)
                }
                ElseIf ((Arg0 == 0x02))
                {
                    ADBG ("CDP/SDP")
                    Local0 = ^^PMI5.GET (One, 0x5E, 0x07)
                    Local0 |= One
                    ^^PMI5.SET (One, 0x5E, 0x07, Local0)
                    CDRD (One)
                }
                ElseIf ((Arg0 == 0x03))
                {
                    Local0 = ^^PMI5.GET (One, 0x5E, 0x07)
                    Local0 |= One
                    ADBG (Local0)
                    ^^PMI5.SET (One, 0x5E, 0x07, Local0)
                    CDRH (Zero)
                }
                Else
                {
                    ADBG ("DCP/no cable is connected")
                    Local0 = ^^PMI5.GET (One, 0x5E, 0x07)
                    Local0 &= 0xFE
                    ^^PMI5.SET (One, 0x5E, 0x07, Local0)
                    CDRD (Zero)
                }

                ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                ^^PMI5.SET (One, 0x5E, 0x26, 0x07)
                ^^PMI5.SET (One, 0x5E, 0x24, 0x02)
                Local0 = ^^PMI5.GET (One, 0x5E, 0x28)
                ADBG ("B4 Set")
                ADBG (Local0)
                Local0 &= 0xCF
                ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                ^^PMI5.SET (One, 0x5E, 0x26, 0x07)
                ^^PMI5.SET (One, 0x5E, 0x27, Local0)
                ^^PMI5.SET (One, 0x5E, 0x24, One)
                ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                ^^PMI5.SET (One, 0x5E, 0x26, 0x07)
                ^^PMI5.SET (One, 0x5E, 0x24, 0x02)
                Local0 = ^^PMI5.GET (One, 0x5E, 0x28)
                ADBG ("After Set")
                ADBG ("REG05")
                ADBG (Local0)
                ADBG ("USB Host")
            }

            Method (BATD, 0, NotSerialized)
            {
                ADBG ("BATD")
                If ((AVBL == One))
                {
                    ADBG ("BATD")
                    Local0 = CHST /* \_SB_.PCI0.I2C7.WIDR.CHST */
                    Local0 &= 0x0F
                    If ((Local0 == 0x02))
                    {
                        Local1 = 0x02
                    }

                    If ((Local0 == One))
                    {
                        Local1 = One
                    }

                    If ((Local0 == 0x08))
                    {
                        Local1 = Zero
                    }

                    BSTP [Zero] = Local1
                    BSTP [One] = CHGC /* \_SB_.PCI0.I2C7.WIDR.CHGC */
                    BSTP [0x02] = RMCP /* \_SB_.PCI0.I2C7.WIDR.RMCP */
                    BSTP [0x03] = VOLT /* \_SB_.PCI0.I2C7.WIDR.VOLT */
                    DPCU = BCCC /* \_SB_.PCI0.I2C7.WIDR.BCCC */
                }

                Return (BSTP) /* \_SB_.PCI0.I2C7.WIDR.BSTP */
            }
        }

        Device (BATC)
        {
            Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BCCE, One)
            Name (OTGS, Zero)
            Name (HSMD, Zero)
            Name (CHPR, One)
            Name (FGDV, 0x0A)
            Name (RECT, Zero)
            Name (BCCL, 0xFFFFFFFF)
            Name (BCLP, 0x1004)
            Name (DSCP, 0x1023)
            Name (DSVO, 0x0EA6)
            Name (BTPC, Zero)
            Name (AVCU, Zero)
            Name (BQCC, 0x50)
            Name (TSHV, Zero)
            Name (BCCC, 0x50)
            Name (_DEP, Package (0x03)  // _DEP: Dependencies
            {
                I2C1, 
                I2C7, 
                PMI5
            })
            Name (BUFF, Buffer (0x03)
            {
                 0x00, 0x01, 0x00                                 // ...
            })
            CreateByteField (BUFF, Zero, BYAT)
            CreateByteField (BUFF, 0x02, DATA)
            Name (BUF1, Buffer (0x06)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00               // ......
            })
            CreateByteField (BUF1, Zero, BSTA)
            CreateByteField (BUF1, One, BLEN)
            CreateDWordField (BUF1, 0x02, DAT1)
            Name (BUF2, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            CreateByteField (BUF2, Zero, BSTS)
            CreateByteField (BUF2, One, SLEN)
            CreateWordField (BUF2, 0x02, WRD1)
            Name (INBU, Buffer (0x08)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
            })
            CreateByteField (INBU, Zero, INST)
            CreateByteField (INBU, One, INLN)
            CreateByteField (INBU, 0x02, INT0)
            CreateByteField (INBU, 0x03, INT1)
            CreateByteField (INBU, 0x04, INT2)
            CreateByteField (INBU, 0x05, INT3)
            CreateByteField (INBU, 0x06, INT4)
            CreateByteField (INBU, 0x07, INT5)
            Name (BIXP, Package (0x14)
            {
                Zero, 
                One, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                One, 
                0xFFFFFFFF, 
                0x0A, 
                0x04, 
                Zero, 
                0x00017318, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0x88B8, 
                0x61A8, 
                One, 
                One, 
                "SR Real Battery", 
                "123456789", 
                "LION", 
                "Intel SR 1"
            })
            Name (BSTP, Package (0x04)
            {
                Zero, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF
            })
            Method (_BIX, 0, NotSerialized)  // _BIX: Battery Information Extended
            {
                If ((^^^I2C1.AVBL == One))
                {
                    BUF2 = ^^^I2C1.FG10 /* \_SB_.PCI0.I2C1.FG10 */
                    If ((BSTS != One))
                    {
                        Local1 = WRD1 /* \_SB_.PCI0.I2C7.BATC.WRD1 */
                        Local2 = (Local1 * 0x05)
                        Divide (Local2, FGDV, Local0, Local1)
                        BIXP [0x03] = Local1
                    }

                    BUF2 = ^^^I2C1.FG17 /* \_SB_.PCI0.I2C1.FG17 */
                    If ((BSTS != One))
                    {
                        Local1 = WRD1 /* \_SB_.PCI0.I2C7.BATC.WRD1 */
                        Divide (Local1, 0x64, Local0, Local2)
                        BIXP [0x08] = Local2
                    }
                }

                BIXP [0x02] = DSCP /* \_SB_.PCI0.I2C7.BATC.DSCP */
                BIXP [0x05] = DSVO /* \_SB_.PCI0.I2C7.BATC.DSVO */
                Divide (DSCP, 0x0A, Local0, Local1)
                BIXP [0x06] = Local1
                Divide (DSCP, 0x14, Local0, Local1)
                BIXP [0x07] = Local1
                Return (BIXP) /* \_SB_.PCI0.I2C7.BATC.BIXP */
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                Name (RGND, One)
                If ((^^PMI5.AVBL == One))
                {
                    Local0 = ^^PMI5.GET (One, 0x6E, 0x1E)
                    Local0 >>= 0x03
                    Local0 &= 0x03
                    If ((Local0 != One))
                    {
                        RGND = Zero
                    }

                    If ((RGND == Zero))
                    {
                        If ((TSHV == Zero))
                        {
                            TSHV = One
                            ^^PMI5.SET (One, 0x5E, 0x20, 0x02)
                            ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                            ^^PMI5.SET (One, 0x5E, 0x26, One)
                            ^^PMI5.SET (One, 0x5E, 0x27, 0x19)
                            ^^PMI5.SET (One, 0x5E, 0x24, One)
                            ADBG ("Min Sys vol")
                        }

                        ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                        ^^PMI5.SET (One, 0x5E, 0x26, 0x04)
                        ^^PMI5.SET (One, 0x5E, 0x27, 0xD6)
                        ^^PMI5.SET (One, 0x5E, 0x24, One)
                        ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                        ^^PMI5.SET (One, 0x5E, 0x26, 0x07)
                        ^^PMI5.SET (One, 0x5E, 0x27, 0x8A)
                        ^^PMI5.SET (One, 0x5E, 0x24, One)
                        Local0 = ^^PMI5.GET (One, 0x5E, 0x16)
                        Local2 = (Local0 | 0xA8)
                        ^^PMI5.SET (One, 0x5E, 0x16, Local2)
                        Local0 = ^^PMI5.GET (One, 0x5E, 0x16)
                        ADBG ("WC16")
                        ADBG (Local0)
                        ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                        ^^PMI5.SET (One, 0x5E, 0x26, 0x09)
                        ^^PMI5.SET (One, 0x5E, 0x24, 0x02)
                        Local0 = ^^PMI5.GET (One, 0x5E, 0x28)
                        If ((Local0 != Zero))
                        {
                            ADBG ("FAULT OCCURED")
                            ADBG (Local0)
                            Local0 = PSRC ()
                        }

                        ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                        ^^PMI5.SET (One, 0x5E, 0x26, One)
                        ^^PMI5.SET (One, 0x5E, 0x27, 0x1B)
                        ^^PMI5.SET (One, 0x5E, 0x24, One)
                    }

                    ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                    ^^PMI5.SET (One, 0x5E, 0x26, One)
                    ^^PMI5.SET (One, 0x5E, 0x24, 0x02)
                    Local0 = ^^PMI5.GET (One, 0x5E, 0x28)
                    ADBG ("CH REG01")
                    ADBG (Local0)
                    If ((RGND == Zero))
                    {
                        ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                        ^^PMI5.SET (One, 0x5E, 0x26, 0x02)
                        ^^PMI5.SET (One, 0x5E, 0x27, 0x42)
                        ^^PMI5.SET (One, 0x5E, 0x24, One)
                    }

                    ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                    ^^PMI5.SET (One, 0x5E, 0x26, 0x09)
                    ^^PMI5.SET (One, 0x5E, 0x24, 0x02)
                    Local0 = ^^PMI5.GET (One, 0x5E, 0x28)
                    ADBG ("REG09")
                    ADBG (Local0)
                    CHPR = Zero
                    ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                    ^^PMI5.SET (One, 0x5E, 0x26, 0x08)
                    ^^PMI5.SET (One, 0x5E, 0x24, 0x02)
                    Local0 = ^^PMI5.GET (One, 0x5E, 0x28)
                    Local0 >>= 0x04
                    Local0 &= 0x03
                    If (((Local0 == One) || (Local0 == 0x02)))
                    {
                        Local1 = 0x02
                    }

                    If ((Local0 == Zero))
                    {
                        Local1 = One
                    }

                    If ((Local0 == 0x03))
                    {
                        Local1 = Zero
                    }

                    BSTP [Zero] = Local1
                    BUF2 = ^^^I2C1.FG0A /* \_SB_.PCI0.I2C1.FG0A */
                    If ((BSTS != One))
                    {
                        Local1 = WRD1 /* \_SB_.PCI0.I2C7.BATC.WRD1 */
                        If ((Local1 & 0x8000))
                        {
                            Local1 = (0xFFFF - Local1)
                        }

                        Divide (Local1, FGDV, Local0, Local2)
                        Local1 = (Local2 * 0x9C)
                        Divide (Local1, 0x64, Local0, Local2)
                        BSTP [One] = Local2
                    }

                    BUF2 = ^^^I2C1.FG05 /* \_SB_.PCI0.I2C1.FG05 */
                    If ((BSTS != One))
                    {
                        Local1 = WRD1 /* \_SB_.PCI0.I2C7.BATC.WRD1 */
                        Local2 = (Local1 * 0x05)
                        Divide (Local2, FGDV, Local0, Local1)
                        BSTP [0x02] = Local1
                    }

                    BUF2 = ^^^I2C1.FG09 /* \_SB_.PCI0.I2C1.FG09 */
                    If ((BSTS != One))
                    {
                        Local1 = WRD1 /* \_SB_.PCI0.I2C7.BATC.WRD1 */
                        Local2 = (Local1 >> 0x03)
                        Local1 = (Local2 * 0x0271)
                        Divide (Local1, 0x03E8, Local0, Local2)
                        BSTP [0x03] = Local2
                    }

                    BUF2 = ^^^I2C1.FG1D /* \_SB_.PCI0.I2C1.FG1D */
                    If ((BSTS != One))
                    {
                        Local1 = (WRD1 & Zero)
                        Local2 = (Local1 | 0x0104)
                        WRD1 = Local2
                        ^^^I2C1.FG1D = BUF2 /* \_SB_.PCI0.I2C7.BATC.BUF2 */
                    }

                    Local2 = 0x18
                    Local1 = (Local2 << 0x08)
                    WRD1 = Local1
                    ^^^I2C1.THRM = BUF2 /* \_SB_.PCI0.I2C7.BATC.BUF2 */
                    ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                    ^^PMI5.SET (One, 0x5E, 0x26, 0x02)
                    ^^PMI5.SET (One, 0x5E, 0x24, 0x02)
                    Local0 = ^^PMI5.GET (One, 0x5E, 0x28)
                    Local1 = BQCC /* \_SB_.PCI0.I2C7.BATC.BQCC */
                    Local3 = Local1
                    Local2 = (Local0 & 0xFC)
                    Local3 &= 0xFC
                    If ((Local2 != Local3))
                    {
                        Local2 = (Local0 & 0x03)
                        Local1 &= 0xFC
                        Local0 = (Local2 | Local1)
                    }

                    ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                    ^^PMI5.SET (One, 0x5E, 0x26, One)
                    ^^PMI5.SET (One, 0x5E, 0x24, 0x02)
                    Local0 = ^^PMI5.GET (One, 0x5E, 0x28)
                    Local1 = (Local0 & 0xCF)
                    If ((BCCE == One))
                    {
                        Local0 = (Local1 | 0x10)
                        If ((RGND == Zero))
                        {
                            ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                            ^^PMI5.SET (One, 0x5E, 0x26, One)
                            ^^PMI5.SET (One, 0x5E, 0x27, Local0)
                            ^^PMI5.SET (One, 0x5E, 0x24, One)
                        }
                    }
                    ElseIf ((RGND == Zero))
                    {
                        Local0 = (Local1 | Zero)
                        ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                        ^^PMI5.SET (One, 0x5E, 0x26, One)
                        ^^PMI5.SET (One, 0x5E, 0x27, Local0)
                        ^^PMI5.SET (One, 0x5E, 0x24, One)
                    }
                }

                Return (BSTP) /* \_SB_.PCI0.I2C7.BATC.BSTP */
            }

            Method (INTC, 0, NotSerialized)
            {
                ADBG ("INTC")
                Name (RGND, One)
                Local0 = ^^PMI5.GET (One, 0x6E, 0x1E)
                Local0 >>= 0x03
                Local0 &= 0x03
                If ((Local0 != One))
                {
                    RGND = Zero
                }

                If ((RGND == Zero))
                {
                    ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                    ^^PMI5.SET (One, 0x5E, 0x26, 0x09)
                    ^^PMI5.SET (One, 0x5E, 0x24, 0x02)
                    Local0 = ^^PMI5.GET (One, 0x5E, 0x28)
                    If ((Local0 != Zero))
                    {
                        ADBG ("FAULT OCCURED")
                        ADBG (Local0)
                    }

                    ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                    ^^PMI5.SET (One, 0x5E, 0x26, 0x04)
                    ^^PMI5.SET (One, 0x5E, 0x27, 0xD6)
                    ^^PMI5.SET (One, 0x5E, 0x24, One)
                    ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                    ^^PMI5.SET (One, 0x5E, 0x26, One)
                    ^^PMI5.SET (One, 0x5E, 0x27, 0x19)
                    ^^PMI5.SET (One, 0x5E, 0x24, One)
                }

                Local0 = PSRC ()
                If ((((Local0 == One) || (Local0 == 0x02)) || ((Local0 == 
                    0x03) || (Local0 == 0x04))))
                {
                    ^^PMI5.ACDC = One
                }
                Else
                {
                    ^^PMI5.ACDC = Zero
                }

                If ((Local0 == One))
                {
                    HSMD = One
                }
                ElseIf ((Local0 == 0x02))
                {
                    HSMD = Zero
                }
                ElseIf ((Local0 == 0x03))
                {
                    HSMD = Zero
                }
                ElseIf ((Local0 == 0x04))
                {
                    HSMD = Zero
                }
                ElseIf ((Local0 == 0x05))
                {
                    HSMD = Zero
                }
                ElseIf ((Local0 == Zero))
                {
                    CHPR = One
                    HSMD = Zero
                }

                ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                ^^PMI5.SET (One, 0x5E, 0x26, 0x08)
                ^^PMI5.SET (One, 0x5E, 0x24, 0x02)
                Local0 = ^^PMI5.GET (One, 0x5E, 0x28)
                Local1 = (Local0 & 0xC0)
                If ((Local1 == 0xC0))
                {
                    If ((OTGS != One))
                    {
                        OTGS = One
                    }
                }
                ElseIf ((OTGS != Zero))
                {
                    OTGS = Zero
                }

                If ((HSMD == Zero))
                {
                    Local0 = ^^PMI5.GET (One, 0x5E, 0x29)
                    Local1 = (Local0 >> 0x02)
                    Local1 &= 0x0F
                    If ((Local1 == 0x02))
                    {
                        ADBG ("DCP Detected")
                        CDRD (Zero)
                    }
                    Else
                    {
                        ADBG ("None DCP Charger")
                        Local0 = ^^PMI5.GET (One, 0x5E, 0x07)
                        Local0 |= One
                        ^^PMI5.SET (One, 0x5E, 0x07, Local0)
                        CDRD (One)
                    }
                }
                Else
                {
                    Local0 = ^^PMI5.GET (One, 0x5E, 0x07)
                    Local0 &= 0xFE
                    ^^PMI5.SET (One, 0x5E, 0x07, Local0)
                    ADBG ("Host Mode")
                    ADBG (Local0)
                    Local0 = ^^PMI5.GET (One, 0x6E, 0x1E)
                    Local0 >>= 0x03
                    Local0 &= 0x03
                    If ((Local0 == Zero))
                    {
                        Local0 = ^^PMI5.GET (One, 0x5E, 0x07)
                        Local0 |= One
                        ^^PMI5.SET (One, 0x5E, 0x07, Local0)
                        Local0 = ^^PMI5.GET (One, 0x5E, 0x17)
                        Local0 |= 0x40
                        ^^PMI5.SET (One, 0x5E, 0x17, Local0)
                        CDRH (One)
                    }
                    Else
                    {
                        CDRH (Zero)
                    }
                }

                If ((CHPR == One))
                {
                    Local0 = ^^PMI5.GET (One, 0x5E, 0x07)
                    Local0 &= 0xFE
                    ^^PMI5.SET (One, 0x5E, 0x07, Local0)
                    If ((DSFG == One))
                    {
                        CDRH (Zero)
                    }
                    Else
                    {
                        CDRD (Zero)
                    }

                    HSMD = One
                    ^^PMI5.SET (One, 0x5E, 0x1F, 0x18)
                    Return (One)
                }

                ^^PMI5.SET (One, 0x5E, 0x1F, 0x1B)
                Return (One)
            }

            Method (INTF, 0, NotSerialized)
            {
                ADBG ("INTF")
                BUF2 = ^^^I2C1.FG00 /* \_SB_.PCI0.I2C1.FG00 */
                If ((BSTS != One))
                {
                    Local1 = WRD1 /* \_SB_.PCI0.I2C7.BATC.WRD1 */
                    ADBG ("FG00")
                    ADBG (Local1)
                }

                Return (One)
            }

            Method (CHCU, 1, NotSerialized)
            {
                Local0 = Arg0
                ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                ^^PMI5.SET (One, 0x5E, 0x26, Zero)
                ^^PMI5.SET (One, 0x5E, 0x24, 0x02)
                Local1 = ^^PMI5.GET (One, 0x5E, 0x28)
                Local2 = (Local0 & 0x07)
                Local1 &= 0x07
                If ((Local1 != Local2))
                {
                    Local2 = (Local0 & 0x07)
                    Local1 = (DATA & 0xF8)
                    Local0 = (Local1 | Local2)
                }
            }

            Method (_BTP, 1, NotSerialized)  // _BTP: Battery Trip Point
            {
                BTPC = Arg0
                If ((^^^I2C1.AVBL == One))
                {
                    ADBG ("BTP")
                    DAT1 = Arg0
                    BLEN = 0x04
                    BUF2 = ^^^I2C1.FG2B /* \_SB_.PCI0.I2C1.FG2B */
                    If ((BSTS != One))
                    {
                        Local1 = (WRD1 & 0xFFFC)
                        WRD1 = Local1
                        ^^^I2C1.FG2B = BUF2 /* \_SB_.PCI0.I2C7.BATC.BUF2 */
                    }

                    BUF2 = ^^^I2C1.FG1D /* \_SB_.PCI0.I2C1.FG1D */
                    If ((BSTS != One))
                    {
                        Local1 = (WRD1 & 0xFFFB)
                        Local2 = (Local1 | 0x04)
                        WRD1 = Local2
                        ^^^I2C1.FG1D = BUF2 /* \_SB_.PCI0.I2C7.BATC.BUF2 */
                    }

                    BUF2 = ^^^I2C1.SOCR /* \_SB_.PCI0.I2C1.SOCR */
                    If ((BSTS != One))
                    {
                        Local0 = (WRD1 >> 0x08)
                        Local1 = (Local0 & 0xFF)
                    }

                    Local2 = (Local1 + One)
                    Local3 = (Local1 - One)
                    Local1 = (Local2 << 0x08)
                    Local2 = (Local1 | Local3)
                    WRD1 = Local2
                    ^^^I2C1.FG03 = BUF2 /* \_SB_.PCI0.I2C7.BATC.BUF2 */
                }
            }

            Method (_BTM, 1, NotSerialized)  // _BTM: Battery Time
            {
                If ((Arg0 > 0x7530))
                {
                    Return (Zero)
                }

                If ((^^^I2C1.AVBL == One))
                {
                    BUF2 = ^^^I2C1.FG11 /* \_SB_.PCI0.I2C1.FG11 */
                    If ((BSTS != One))
                    {
                        Local1 = WRD1 /* \_SB_.PCI0.I2C7.BATC.WRD1 */
                        If ((Arg0 == Zero))
                        {
                            Local2 = (Local1 >> 0x05)
                            Local1 = (Local2 * 0x03)
                            Local2 = (Local1 * 0x3C)
                            Return (Local2)
                        }

                        BUF2 = ^^^I2C1.FG05 /* \_SB_.PCI0.I2C1.FG05 */
                        If ((BSTS != One))
                        {
                            Local1 = WRD1 /* \_SB_.PCI0.I2C7.BATC.WRD1 */
                            Local2 = (Local1 * 0x05)
                            Divide (Local2, FGDV, Local0, Local1)
                            Local0 = (Local1 * 0x0E10)
                            Divide (Local0, Arg0, Local1, Local2)
                            Return (Local2)
                        }
                    }
                }

                Return (0xFFFFFFFF)
            }

            Method (_BCT, 1, NotSerialized)  // _BCT: Battery Charge Time
            {
                If (((Arg0 > 0x64) || (Arg0 < One)))
                {
                    Return (Zero)
                }

                If ((^^^I2C1.AVBL == One))
                {
                    BUF2 = ^^^I2C1.FG05 /* \_SB_.PCI0.I2C1.FG05 */
                    Local1 = WRD1 /* \_SB_.PCI0.I2C7.BATC.WRD1 */
                    If ((BSTS != One))
                    {
                        Local2 = (Local1 * 0x05)
                        Divide (Local2, FGDV, Local0, Local1)
                        If ((Arg0 < Local1))
                        {
                            Return (Zero)
                        }

                        RECT = Local1
                    }

                    BUF2 = ^^^I2C1.FG10 /* \_SB_.PCI0.I2C1.FG10 */
                    If ((BSTS != One))
                    {
                        Local1 = WRD1 /* \_SB_.PCI0.I2C7.BATC.WRD1 */
                        Local2 = (Local1 * 0x05)
                        Divide (Local2, FGDV, Local0, Local1)
                        BCLP = Local1
                    }

                    BUF2 = ^^^I2C1.FG0A /* \_SB_.PCI0.I2C1.FG0A */
                    If ((BSTS != One))
                    {
                        Local1 = WRD1 /* \_SB_.PCI0.I2C7.BATC.WRD1 */
                        If ((Local1 & 0x8000))
                        {
                            Return (Zero)
                        }
                    }

                    Local0 = (BCLP * Arg0)
                    Local0 -= RECT /* \_SB_.PCI0.I2C7.BATC.RECT */
                    Local0 *= 0x0E10
                    Divide (Local0, Local1, Local2, Local3)
                    Return (Local3)
                }

                Return (0xFFFFFFFF)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("4c2067e3-887d-475c-9720-4af1d3ed602e") /* Battery Thermal Limit */))
                {
                    If ((Arg2 == 0x02))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                             // .
                            })
                        }
                    }
                }

                Return (Zero)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }

            Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
            {
                Return (_SB) /* \_SB_ */
            }

            Method (PSOC, 0, NotSerialized)
            {
                If ((^^^I2C1.AVBL == One))
                {
                    BUF2 = ^^^I2C1.SOCR /* \_SB_.PCI0.I2C1.SOCR */
                    If ((BSTS != One))
                    {
                        Local0 = (WRD1 >> 0x08)
                        Local1 = (Local0 & 0xFF)
                    }

                    Return (Local1)
                }

                Return (Zero)
            }

            Method (PMAX, 0, NotSerialized)
            {
                If ((^^^I2C1.AVBL == One))
                {
                    BUF2 = ^^^I2C1.MXCU /* \_SB_.PCI0.I2C1.MXCU */
                    If ((BSTS != One))
                    {
                        Local1 = WRD1 /* \_SB_.PCI0.I2C7.BATC.WRD1 */
                        If ((Local1 & 0x8000))
                        {
                            Local0 = (Local1 >> 0x08)
                            Local1 = (Local0 & 0xFF)
                            Local0 = (0xFFFF - Local1)
                            Local1 = (Local0 * 0x04)
                        }
                        Else
                        {
                            Local0 = (Local1 >> 0x08)
                            Local2 = (Local0 & 0xFF)
                            Local1 = (Local2 * 0x04)
                        }

                        Divide (Local1, 0x0A, Local0, Local2)
                        Divide (Local2, FGDV, Local0, Local1)
                        Local2 = (Local1 * 0x03E8)
                        Local1 = (DSVO * Local2)
                        Return (Local1)
                    }
                }

                Return (Zero)
            }

            Method (VMIN, 0, NotSerialized)
            {
                Return (0x0DAC)
            }

            Method (APWR, 0, NotSerialized)
            {
                Return (0x0365C040)
            }

            Method (NPWR, 0, NotSerialized)
            {
                Local3 = APWR ()
                If ((^^^I2C1.AVBL == One))
                {
                    BUF2 = ^^^I2C1.FG0A /* \_SB_.PCI0.I2C1.FG0A */
                    If ((BSTS != One))
                    {
                        Local1 = WRD1 /* \_SB_.PCI0.I2C7.BATC.WRD1 */
                        If ((Local1 & 0x8000))
                        {
                            Local1 = (0xFFFF - Local1)
                        }

                        Divide (Local1, FGDV, Local0, Local2)
                        Local1 = (Local2 * 0x9C)
                        Divide (Local1, 0x64, Local0, Local2)
                        AVCU = Local2
                        BUF2 = ^^^I2C1.FG09 /* \_SB_.PCI0.I2C1.FG09 */
                        If ((BSTS != One))
                        {
                            Local1 = WRD1 /* \_SB_.PCI0.I2C7.BATC.WRD1 */
                            Local2 = (Local1 >> 0x03)
                            Local1 = (Local2 * 0x0271)
                            Divide (Local1, 0x03E8, Local0, Local2)
                        }

                        Local1 = (Local2 * AVCU) /* \_SB_.PCI0.I2C7.BATC.AVCU */
                        Local0 = (Local3 - Local1)
                        Return (Local0)
                    }
                }

                Return (Local0)
            }

            Method (PSRC, 0, Serialized)
            {
                Name (RGND, One)
                If ((^^PMI5.AVBL == One))
                {
                    Local7 = ^^PMI5.GET (One, 0x6E, 0x1E)
                    Local7 >>= 0x03
                    Local7 &= 0x03
                    If ((Local7 != One))
                    {
                        RGND = Zero
                    }

                    Local0 = ^^PMI5.GET (One, 0x5E, 0x29)
                    ADBG (Local0)
                    Local1 = (Local0 >> 0x02)
                    Local1 &= 0x0F
                    If (((Local1 == Zero) || (RGND != Zero)))
                    {
                        ADBG ("NONE")
                        Return (Zero)
                    }
                    ElseIf ((Local1 == 0x04))
                    {
                        ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                        ^^PMI5.SET (One, 0x5E, 0x26, 0x05)
                        ^^PMI5.SET (One, 0x5E, 0x27, 0x8A)
                        ^^PMI5.SET (One, 0x5E, 0x24, One)
                        ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                        ^^PMI5.SET (One, 0x5E, 0x26, 0x05)
                        ^^PMI5.SET (One, 0x5E, 0x24, 0x02)
                        Local0 = ^^PMI5.GET (One, 0x5E, 0x28)
                        ADBG ("REG05")
                        ADBG (Local0)
                        If ((RGND == Zero))
                        {
                            ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                            ^^PMI5.SET (One, 0x5E, 0x26, Zero)
                            ^^PMI5.SET (One, 0x5E, 0x27, 0x3D)
                            ^^PMI5.SET (One, 0x5E, 0x24, One)
                        }

                        ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                        ^^PMI5.SET (One, 0x5E, 0x26, Zero)
                        ^^PMI5.SET (One, 0x5E, 0x24, 0x02)
                        Local0 = ^^PMI5.GET (One, 0x5E, 0x28)
                        ADBG ("ACA")
                        ADBG (Local0)
                        Return (One)
                    }
                    ElseIf ((Local1 == One))
                    {
                        ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                        ^^PMI5.SET (One, 0x5E, 0x26, 0x05)
                        ^^PMI5.SET (One, 0x5E, 0x27, 0x8A)
                        ^^PMI5.SET (One, 0x5E, 0x24, One)
                        ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                        ^^PMI5.SET (One, 0x5E, 0x26, 0x05)
                        ^^PMI5.SET (One, 0x5E, 0x24, 0x02)
                        Local0 = ^^PMI5.GET (One, 0x5E, 0x28)
                        ADBG ("REG05")
                        ADBG (Local0)
                        If ((RGND == Zero))
                        {
                            ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                            ^^PMI5.SET (One, 0x5E, 0x26, Zero)
                            ^^PMI5.SET (One, 0x5E, 0x27, 0x3A)
                            ^^PMI5.SET (One, 0x5E, 0x24, One)
                        }

                        ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                        ^^PMI5.SET (One, 0x5E, 0x26, Zero)
                        ^^PMI5.SET (One, 0x5E, 0x24, 0x02)
                        Local0 = ^^PMI5.GET (One, 0x5E, 0x28)
                        ADBG ("SDP")
                        ADBG (Local0)
                        Return (0x02)
                    }
                    ElseIf ((Local1 == 0x02))
                    {
                        ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                        ^^PMI5.SET (One, 0x5E, 0x26, 0x05)
                        ^^PMI5.SET (One, 0x5E, 0x27, 0x8A)
                        ^^PMI5.SET (One, 0x5E, 0x24, One)
                        ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                        ^^PMI5.SET (One, 0x5E, 0x26, 0x05)
                        ^^PMI5.SET (One, 0x5E, 0x24, 0x02)
                        Local0 = ^^PMI5.GET (One, 0x5E, 0x28)
                        ADBG ("REG05")
                        ADBG (Local0)
                        If ((RGND == Zero))
                        {
                            ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                            ^^PMI5.SET (One, 0x5E, 0x26, Zero)
                            ^^PMI5.SET (One, 0x5E, 0x27, 0x3D)
                            ^^PMI5.SET (One, 0x5E, 0x24, One)
                        }

                        ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                        ^^PMI5.SET (One, 0x5E, 0x26, Zero)
                        ^^PMI5.SET (One, 0x5E, 0x24, 0x02)
                        Local0 = ^^PMI5.GET (One, 0x5E, 0x28)
                        ADBG ("DCP")
                        ADBG (Local0)
                        Return (0x03)
                    }
                    ElseIf ((Local1 == 0x03))
                    {
                        ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                        ^^PMI5.SET (One, 0x5E, 0x26, 0x05)
                        ^^PMI5.SET (One, 0x5E, 0x27, 0x8A)
                        ^^PMI5.SET (One, 0x5E, 0x24, One)
                        ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                        ^^PMI5.SET (One, 0x5E, 0x26, 0x05)
                        ^^PMI5.SET (One, 0x5E, 0x24, 0x02)
                        Local0 = ^^PMI5.GET (One, 0x5E, 0x28)
                        ADBG ("REG05")
                        ADBG (Local0)
                        If ((RGND == Zero))
                        {
                            ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                            ^^PMI5.SET (One, 0x5E, 0x26, Zero)
                            ^^PMI5.SET (One, 0x5E, 0x27, 0x3D)
                            ^^PMI5.SET (One, 0x5E, 0x24, One)
                        }

                        ^^PMI5.SET (One, 0x5E, 0x25, 0x6B)
                        ^^PMI5.SET (One, 0x5E, 0x26, Zero)
                        ^^PMI5.SET (One, 0x5E, 0x24, 0x02)
                        Local0 = ^^PMI5.GET (One, 0x5E, 0x28)
                        ADBG ("CDP")
                        ADBG (Local0)
                        Return (0x04)
                    }
                    ElseIf ((Local1 == 0x08))
                    {
                        ADBG ("OTG")
                        Return (0x05)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Return (One)
            }
        }
    }

    Scope (_SB)
    {
        Device (ADP1)
        {
            Name (_HID, "ACPI0003" /* Power Source Device */)  // _HID: Hardware ID
            Method (_PSR, 0, Serialized)  // _PSR: Power Source
            {
                ADBG ("ADP1 _PSR")
                If ((BDID == 0x08))
                {
                    ADBG ("ADP1 _PSR FFD")
                    If (CondRefOf (\_SB.PCI0.I2C7.BATC, Local1))
                    {
                        Local0 = ^^PCI0.I2C7.BATC.PSRC ()
                        If ((Local0 == Zero))
                        {
                            ADBG ("DC")
                            Return (Zero)
                        }
                        Else
                        {
                            ADBG ("AC")
                            Return (One)
                        }
                    }
                }

                If (((BDID == 0x09) || (BDID == 0x03)))
                {
                    ADBG ("ADP1 _PSR FFD HR")
                    If (CondRefOf (\_SB.PCI0.I2C7.WIDR, Local1))
                    {
                        Local0 = ^^PCI0.I2C7.WIDR.PSRC ()
                        If ((Local0 == Zero))
                        {
                            ADBG ("DC")
                            Return (Zero)
                        }
                        Else
                        {
                            ADBG ("AC")
                            Return (One)
                        }
                    }
                }

                If ((BDID == One))
                {
                    ADBG ("ADP1 _PSR CHTCR")
                    If ((PMID == 0x02))
                    {
                        If (CondRefOf (\_SB.PCI0.I2C7.BMDR, Local1))
                        {
                            Local0 = ^^PCI0.I2C7.BMDR.PSRC ()
                            If ((Local0 == Zero))
                            {
                                ADBG ("DC")
                                Return (Zero)
                            }
                            Else
                            {
                                ADBG ("AC")
                                Return (One)
                            }
                        }
                    }
                    ElseIf (CondRefOf (\_SB.PCI0.I2C3.TIDR, Local1))
                    {
                        Local0 = ^^PCI0.I2C3.TIDR.PSRC ()
                        If ((Local0 == Zero))
                        {
                            ADBG ("DC")
                            Return (Zero)
                        }
                        Else
                        {
                            ADBG ("AC")
                            Return (One)
                        }
                    }
                }
                ElseIf (CondRefOf (\_SB.PCI0.I2C1.BATC, Local1))
                {
                    Local0 = ^^PCI0.I2C1.BATC.PSRC ()
                    If ((Local0 == Zero))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (One)
                    }
                }

                ADBG ("_PSR DEF")
                Return (One)
            }

            Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
            {
                Return (_SB) /* \_SB_ */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((OSID != One))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }
        }
    }

    Scope (_SB)
    {
        Device (MDM3)
        {
            Name (_HID, EisaId ("MCD0001"))  // _HID: Hardware ID
            Name (_CID, "MCD0001")  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (MDMN, "XMM_7360")
            Name (CONF, "XMM7360_CONF_2")
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((BDID == One))
                {
                    Return (Zero)
                }

                If (((OSID != One) && (MODS == Zero)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Name (PMIC, Package (0x04)
            {
                0x29, 
                One, 
                Zero, 
                0xFA
            })
            Name (EPWR, Package (0x02)
            {
                Zero, 
                One
            })
        }

        Device (MDM2)
        {
            Name (_HID, EisaId ("MCD0001"))  // _HID: Hardware ID
            Name (_CID, "MCD0001")  // _CID: Compatible ID
            Name (CPU, "CherryView")
            Name (MDMN, "XMM_7260")
            Name (CONF, "XMM7260_CONF_3")
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (UBUF, ResourceTemplate ()
                {
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0000
                        }
                    GpioInt (Edge, ActiveHigh, Exclusive, PullDown, 0x0000,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0013
                        }
                    GpioInt (Edge, ActiveBoth, Exclusive, PullDown, 0x0000,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0006
                        }
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0002
                        }
                })
                Return (UBUF) /* \_SB_.MDM2._CRS.UBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((BDID == One))
                {
                    Return (Zero)
                }

                If (((OSID != One) && (MODS == One)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Name (PMIC, Package (0x04)
            {
                0x29, 
                One, 
                Zero, 
                0xFC
            })
            Name (EPWR, Package (0x02)
            {
                Zero, 
                One
            })
        }

        Device (MDM)
        {
            Name (_HID, EisaId ("MCD0001"))  // _HID: Hardware ID
            Name (_CID, "MCD0001")  // _CID: Compatible ID
            Name (CPU, "CherryView")
            Name (MDMN, "XMM_7260")
            Name (CONF, "XMM7260_CONF_7")
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (UBUF, ResourceTemplate ()
                {
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0000
                        }
                    GpioInt (Edge, ActiveHigh, Exclusive, PullDown, 0x0000,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0013
                        }
                    GpioInt (Edge, ActiveBoth, Exclusive, PullDown, 0x0000,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0006
                        }
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0002
                        }
                })
                Return (UBUF) /* \_SB_.MDM_._CRS.UBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((BDID == One))
                {
                    Return (Zero)
                }

                If (((OSID != One) && (MODS == 0x02)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Name (PMIC, Package (0x04)
            {
                0x29, 
                One, 
                Zero, 
                0xFC
            })
            Name (EPWR, Package (0x02)
            {
                Zero, 
                One
            })
        }

        Device (MDM4)
        {
            Name (_HID, EisaId ("MCD0001"))  // _HID: Hardware ID
            Name (_CID, "MCD0001")  // _CID: Compatible ID
            Name (CPU, "CherryView")
            Name (MDMN, "XMM_7160")
            Name (CONF, "XMM7160_CONF_9")
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (UBUF, ResourceTemplate ()
                {
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0006
                        }
                    GpioInt (Edge, ActiveHigh, Exclusive, PullDown, 0x0000,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0016
                        }
                    GpioIo (Exclusive, PullUp, 0x0001, 0x0001, IoRestrictionOutputOnly,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0006
                        }
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0002
                        }
                })
                Return (UBUF) /* \_SB_.MDM4._CRS.UBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((BDID != One))
                {
                    Return (Zero)
                }

                If ((((OSID == 0x02) || (OSID == 0x04)) && (MODS == 0x03)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Name (PMIC, Package (0x04)
            {
                0x29, 
                One, 
                Zero, 
                0xFC
            })
            Name (EPWR, Package (0x02)
            {
                Zero, 
                One
            })
        }

        Device (MDM5)
        {
            Name (_HID, EisaId ("MCD0001"))  // _HID: Hardware ID
            Name (_CID, "MCD0001")  // _CID: Compatible ID
            Name (CPU, "CherryView")
            Name (MDMN, "XMM_7260")
            Name (CONF, "XMM7260_CONF_13")
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (UBUF, ResourceTemplate ()
                {
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0006
                        }
                    GpioInt (Edge, ActiveHigh, Exclusive, PullDown, 0x0000,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0016
                        }
                    GpioIo (Exclusive, PullUp, 0x0001, 0x0001, IoRestrictionOutputOnly,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0006
                        }
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0002
                        }
                })
                Name (RBUF, ResourceTemplate ()
                {
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0000
                        }
                    GpioInt (Edge, ActiveHigh, Exclusive, PullDown, 0x0000,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0007
                        }
                    GpioIo (Exclusive, PullUp, 0x0001, 0x0001, IoRestrictionOutputOnly,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0006
                        }
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0002
                        }
                })
                If ((BDID == One))
                {
                    Return (UBUF) /* \_SB_.MDM5._CRS.UBUF */
                }

                Return (RBUF) /* \_SB_.MDM5._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((((BDID != 0x09) && (BDID != 0x0A)) && 
                    (BDID != One)))
                {
                    Return (Zero)
                }

                If ((((OSID == 0x02) || (OSID == 0x04)) && (MODS == 0x04)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Name (PMIC, Package (0x04)
            {
                0x29, 
                One, 
                Zero, 
                0xFC
            })
            Name (EPWR, Package (0x02)
            {
                Zero, 
                One
            })
        }
    }

    Scope (_GPE)
    {
        Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            If (((BDID != One) && (OSID != One)))
            {
                If ((RP1D == Zero))
                {
                    \_SB.PCI0.RP01.HPME ()
                    Notify (\_SB.PCI0.RP01, 0x02) // Device Wake
                }

                If ((RP2D == Zero))
                {
                    \_SB.PCI0.RP02.HPME ()
                    Notify (\_SB.PCI0.RP02, 0x02) // Device Wake
                }

                If ((RP3D == Zero))
                {
                    \_SB.PCI0.RP03.HPME ()
                    Notify (\_SB.PCI0.RP03, 0x02) // Device Wake
                }

                If ((RP4D == Zero))
                {
                    \_SB.PCI0.RP04.HPME ()
                    Notify (\_SB.PCI0.RP04, 0x02) // Device Wake
                }
            }
        }
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S4, Package (0x04)  // _S4_: S4 System State
    {
        0x06, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        Zero, 
        Zero, 
        Zero
    })
    Method (PTS, 1, NotSerialized)
    {
        If (Arg0){}
    }

    Method (WAK, 1, NotSerialized)
    {
    }
}

