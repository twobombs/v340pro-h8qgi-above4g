ROOT=$(sed -n 's/.*\(root=[^ ]*\).*/\1/p' /proc/cmdline)
echo "$ROOT"