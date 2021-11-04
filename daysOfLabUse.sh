#!/bin/bash
# Intruções: Em uma universidade, todos os semestres a coordenação exige que o professor repasse a ela os dias em que serão utilizados o laboratório de informática. Essas datas baseiam-se nos dias da semana em que são ministradas as aulas. Esse é um processo trabalhoso, que envolve a busca dessas informações em um calendário e a transcrição das datas para um e-mail que é enviado à coordenação. Para minimizar esse problema, desenvolvam um script que, a partir da informação dos dias da semana em que o laboratório será usado, o início e o fim do semestre, produza uma lista de datas a ser enviado à coordenação.
#recebe o input de dias da semana
echo "insira abaixo os dias de laboratorio separado por espaço [seg ter qua qui sex]"
read dias

#recebe qual dia comeca o semestre
echo "Insira qual dia comeca o semestre no formato YYYY-MM-DD"
read inicio

#recebe qual dia termina o semestre
echo "Insira qual dia termina o semestre no formato YYYY-MM-DD"
read fim

#passa por todos os dias do semestre
while [ $inicio != $fim ];do
  #filtro dias da semana
  for dia in $dias;do
    if [ $dia = $(date -d $inicio | cut -d ' ' -f1) ];then
      echo "Este e um dia de laboratorio: $inicio"
    fi
  done
  #testes
  inicio=$(date -d "$inicio next day" +%Y-%m-%d)
done