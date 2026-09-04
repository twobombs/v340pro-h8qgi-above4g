# v340pro-h8qgi-above4g

- v340pro dual vega10 @ slot3
- acpi table mod for initrd
- disable sriov kernel module

These scripts were used to add Above4G ACPI tables to a non Above4G board 

in this case the Quad Opteron H8QGi-f; the one with full PCIe slots layout

This is a PoC; to make more room in the ACPI window you might need to recompile the kernel without SRIOV support which clears up 2GB 
