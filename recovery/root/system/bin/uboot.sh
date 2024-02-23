#!/system/bin/sh

function exec_cmd()
{
  eval $@;
}
exe_cmd "cat /dev/block/by-name/uboot_log"
echo ubootlog eng
