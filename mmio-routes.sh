#!/bin/bash
# Dump AMD Family 15h northbridge MMIO routing registers.
#   D18F1x80 + i*8   MMIO Base  i   (bit0 RE, bit1 WE, bits 31:8 = base[39:16])
#   D18F1x84 + i*8   MMIO Limit i   (bits 2:0 DstNode, 5:4 DstLink, 31:8 = limit[39:16])
#   D18F1x180 + i*4  MMIO High  i   (bits 7:0 = base[47:40], bits 23:16 = limit[47:40])
#
# READ ONLY. Verify field positions against AMD BKDG for Family 15h Models 00h-0Fh
# (publication 42301) before writing anything based on this.

set -u

for n in 18 19 1a 1b 1c 1d 1e 1f; do
    dev="00:$n.1"
    lspci -s "$dev" >/dev/null 2>&1 || continue
    [ -n "$(lspci -s "$dev")" ] || continue

    echo "=== $dev ==="
    for i in 0 1 2 3 4 5 6 7; do
        b=$(setpci -s "$dev" "$(printf '%02x' $((0x80 + i*8)))".L 2>/dev/null) || continue
        l=$(setpci -s "$dev" "$(printf '%02x' $((0x84 + i*8)))".L 2>/dev/null) || continue
        h=$(setpci -s "$dev" "$(printf '%03x' $((0x180 + i*4)))".L 2>/dev/null) || h=00000000

        bv=$((0x$b)); lv=$((0x$l)); hv=$((0x$h))

        re=$((bv & 1))
        we=$(((bv >> 1) & 1))
        base=$(( ((bv & 0xffffff00) << 8) | ((hv & 0xff) << 40) ))
        limit=$(( ((lv & 0xffffff00) << 8) | (((hv >> 16) & 0xff) << 40) | 0xffff ))
        dstnode=$((lv & 0x7))
        dstlink=$(((lv >> 4) & 0x3))

        if [ "$re" -eq 0 ] && [ "$we" -eq 0 ]; then
            printf '  slot %d  FREE            (raw %s %s %s)\n' "$i" "$b" "$l" "$h"
        else
            printf '  slot %d  RE=%d WE=%d  base=0x%012x  limit=0x%012x  dstnode=%d dstlink=%d\n' \
                "$i" "$re" "$we" "$base" "$limit" "$dstnode" "$dstlink"
        fi
    done
done