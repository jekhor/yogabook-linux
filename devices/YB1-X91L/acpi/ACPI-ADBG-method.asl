DefinitionBlock ("", "DSDT", 2, "LENOVO", "CS-02   ", 0x00000001)
{
    Method (ADBG, 1, Serialized)
    {
    	Printf("%o", Arg0)
        Return (Zero)
    }
}
