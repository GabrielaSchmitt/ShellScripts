# Elaborar um script que apresente ao usuário um menu com as seguintes opções:
#1 – Exibir status da utilização das partições do sistema; (df -h)
#2 – Exibir relação de usuário logados; (who)
#3 – Exibir data/hora; (date)
#4 – Sair.
#Informe sua opção: As linhas acima serão apresentadas aos usuários até que seja escolhida a opção 4 (Sair). Caso seja escolhida alguma opção entre 1 e 3, serão executados os comandos correspondentes e o resultado da execução será apresentado ao usuário. Caso seja informado algum número que não corresponde às opções de menu disponíveis, exibir na tela a mensagem "Opção não disponível. Tente outra vez.".

#!/bin/bash
j=0
while [ $j -ne 4 ]
#for j in $(seq 1 4)
do
 echo "1 – Exibir status da utilização das partições do sistema"
 echo "2 – Exibir relação de usuário logados"
 echo "3 – Exibir data/hora"
 echo "4 – Sair"
 echo "Informe sua opção:"
read j 

while [ $j -lt 1 ] || [ $j -gt 4 ]; do
echo "Opção não disponível. Tente outra vez."
read j
done

 if [ $j = 1 ]; then
  df
  elif [ $j = 2 ]; then
     who
   elif [ $j = 3 ]; then
      date
 fi
 echo -e "\n"
done