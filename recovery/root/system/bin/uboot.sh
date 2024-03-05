#!/system/bin/sh

function exe_cmd()
{
  eval $@;
}

exe_cmd "cat /dev/block/by-name/uboot_log"
echo ubootlog end
