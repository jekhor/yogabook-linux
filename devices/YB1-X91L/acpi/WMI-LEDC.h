#ifndef _WMI-LEDC_h_
#define _WMI-LEDC_h_

// Lenovo_PenBtLightCtrl - Lenovo_PenBtLightCtrl
// pen button control class
#define Lenovo_PenBtLightCtrlGuid \
    { 0x191dcfab,0xe77c,0x4736, { 0x97,0x41,0xe6,0xb3,0x6d,0xa7,0xd5,0x49 } }

#if ! (defined(MIDL_PASS))
DEFINE_GUID(Lenovo_PenBtLightCtrl_GUID, \
            0x191dcfab,0xe77c,0x4736,0x97,0x41,0xe6,0xb3,0x6d,0xa7,0xd5,0x49);
#endif

//
// Method id definitions for Lenovo_PenBtLightCtrl
#define SetPenButtonLightup     1
#define SetPenButtonTwinkle     2
#define SetPenButtonQuickTwinkle     3

#endif
