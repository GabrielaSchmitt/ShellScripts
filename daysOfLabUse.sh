#!/bin/bash
# Intruções: Em uma universidade, todos os semestres a coordenação exige que o professor repasse a ela os dias em que serão utilizados o laboratório de informática. Essas datas baseiam-se nos dias da semana em que são ministradas as aulas. Esse é um processo trabalhoso, que envolve a busca dessas informações em um calendário e a transcrição das datas para um e-mail que é enviado à coordenação. Para minimizar esse problema, desenvolvam um script que, a partir da informação dos dias da semana em que o laboratório será usado, o início e o fim do semestre, produza uma lista de datas a ser enviado à coordenação.
# EN: 

#recebe o input de dias da semana
# EN: get the week days
# EN: echo "Type above the lab days of the week separated by space [mon tue wed thu fri]"
echo "insira abaixo os dias de laboratorio separado por espaço [seg ter qua qui sex]"
read dias

#recebe qual dia comeca o semestre
# EN: get the initial date of the semester
# EN: echo "Type above the inicial date of the semester in the format YYYY-MM-DD"
echo "Insira qual dia comeca o semestre no formato YYYY-MM-DD"
read inicio

#recebe qual dia termina o semestre
# EN: get the ending date of the semester
# EN: echo "Type above the ending date of the semester in the format YYYY-MM-DD"
echo "Insira qual dia termina o semestre no formato YYYY-MM-DD"
read fim

# EN: run all days of the semester
#passa por todos os dias do semestre
while [ $inicio != $fim ];do
  # EN: filter for week days
  #filtro dias da semana
  for dia in $dias;do
    if [ $dia = $(date -d $inicio | cut -d ' ' -f1) ];then
      echo "Este e um dia de laboratorio: $inicio"
      # EN: echo "This is a day o lab: $inicio"
    fi
  done
  #testes
  inicio=$(date -d "$inicio next day" +%Y-%m-%d)
done
