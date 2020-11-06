#ifndef _WMI-SHPM_h_
#define _WMI-SHPM_h_

// Lenovo_ShipingMode - Lenovo_ShipingMode
// pen button control class
#define Lenovo_ShipingModeGuid \
    { 0x54ec58a4,0x9afe,0x4853, { 0xb3,0xcc,0xfa,0x6a,0xa0,0x17,0x01,0x4d } }

#if ! (defined(MIDL_PASS))
DEFINE_GUID(Lenovo_ShipingMode_GUID, \
            0x54ec58a4,0x9afe,0x4853,0xb3,0xcc,0xfa,0x6a,0xa0,0x17,0x01,0x4d);
#endif

//
// Method id definitions for Lenovo_ShipingMode
#define OpenShipingMode     1

#endif
