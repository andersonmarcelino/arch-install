source './modules/welcome.sh'

ctrl_c() {
  tput reset
  exit 130
}

trap ctrl_c SIGINT

welcome

tput reset
