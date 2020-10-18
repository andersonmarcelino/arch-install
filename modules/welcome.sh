welcome () {
  tput reset

  cat  <<-EOF
    >>> Instalador do Arch Linux <<<
    Autor: Anderson Guilherme Marcelino

    Esse Instalador foi criado por Anderson Marcelino e instala o archlinux com
    os programas personalizados para o uso do mesmo.

    para a instalação, é necessario que o disco onde será instalado esteja vazio,
    se não for o caso, limpe todas as partições e rode o comando novamente,

    Para continuar, precione Enter, para sair precione CTRL+C
EOF
  tput civis
  tput invis
  read -s
}
