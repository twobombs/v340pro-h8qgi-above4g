kexec -l /boot/vmlinuz-7.0.0-29-generic \
      --initrd=/boot/initrd-acpi.img \
      --command-line="root=UUID=2e84273a-d543-4413-b953-df7c073b21a4 ro pci=realloc,noari modprobe.blacklist=amdgpu"
sync; systemctl kexec