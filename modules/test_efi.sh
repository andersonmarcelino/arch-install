test_efi () {
  if ls /sys/firmware/efi/efivars 2>&1 > /dev/null
  then
    :
  else
    tput reset
    echo "é necessario estar com UEFI habilitado para rodar o instalador"
    exit 2
  fi
}
