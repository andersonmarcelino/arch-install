ask_disk () {
  tput reset

  cat <<-EOF
  Será necessario em qual disco sera instalado o sistema
  Favor escolha em qual disco sera instalado o sistema

  As opções são:
EOF

  COUNT=$(fdisk -l | grep "Disk \/dev" | cut -d',' -f1 | wc -l)

  for ((i=1;i<=$COUNT;i++)); do
    DISKS[$i]=$(fdisk -l | grep "Disk \/dev" | cut -d',' -f1| sed -n "${i}p")
    echo "  $i) ${DISKS[$i]}"
  done

  echo
  echo -e "Escolha um disco:"

  read
}
