for d in 00:18.1 00:19.1 00:1a.1 00:1b.1 00:1c.1 00:1d.1 00:1e.1 00:1f.1; do
  setpci -s $d 9c.L=254fff14
  setpci -s $d 98.L=15500003
done