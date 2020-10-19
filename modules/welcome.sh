welcome () {
  tput reset

  cat  <<-EOF
    >>> Instalador do Arch Linux <<<
    Autor: Anderson Guilherme Marcelino

    Esse Instalador foi criado por Anderson Marcelino e instala o archlinux com
    os programas personalizados para o uso do mesmo.

    Essa instalação aira limpar completamente seu disco, e instalar o Arch Linux
    em todo ele, caso não queira que isso aconteça, interrompa agora mesmo

    Para continuar, precione Enter, para sair precione CTRL+C
EOF
  tput civis
  tput invis
  read -s
}
