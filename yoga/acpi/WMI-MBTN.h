#ifndef _wmidevs_h_
#define _wmidevs_h_

// Lenovo_SmartpadCtrl - Lenovo_SmartpadCtrl
// Smartpad control class
#define Lenovo_SmartpadCtrlGuid \
    { 0x742b0ca1,0x0b20,0x404b, { 0x9c,0xaa,0xae,0xfc,0xab,0xf3,0x0c,0xe0 } }

#if ! (defined(MIDL_PASS))
DEFINE_GUID(Lenovo_SmartpadCtrl_GUID, \
            0x742b0ca1,0x0b20,0x404b,0x9c,0xaa,0xae,0xfc,0xab,0xf3,0x0c,0xe0);
#endif

//
// Method id definitions for Lenovo_SmartpadCtrl
#define SetSmartPadEnable     1
#define SetSmartPadDisable     2
#define LightupPenBtn     3

// LenPenButtonDownEvt - LenPenButtonDownEvt
// Pen button pressed Event
#define LenPenButtonDownEvtGuid \
    { 0x243fec1d,0x1963,0x41c1, { 0x81,0x00,0x06,0xa9,0xd8,0x2a,0x94,0xb4 } }

#if ! (defined(MIDL_PASS))
DEFINE_GUID(LenPenButtonDownEvt_GUID, \
            0x243fec1d,0x1963,0x41c1,0x81,0x00,0x06,0xa9,0xd8,0x2a,0x94,0xb4);
#endif


typedef struct _LenPenButtonDownEvt
{
    // ULong Data
    ULONG ULong;
    #define LenPenButtonDownEvt_ULong_SIZE sizeof(ULONG)
    #define LenPenButtonDownEvt_ULong_ID 1

} LenPenButtonDownEvt, *PLenPenButtonDownEvt;

#define LenPenButtonDownEvt_SIZE (FIELD_OFFSET(LenPenButtonDownEvt, ULong) + LenPenButtonDownEvt_ULong_SIZE)

#endif
