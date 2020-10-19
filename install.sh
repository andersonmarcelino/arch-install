source './modules/welcome.sh'
source './modules/test_efi.sh'
source './modules/ask_disk.sh'

ctrl_c() {
  tput reset
  exit 130
}

trap ctrl_c SIGINT

welcome
test_efi
ask_disk

tput reset
