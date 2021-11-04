# Elaborar um script que apresente ao usuário um menu com as seguintes opções:
#1 – Exibir status da utilização das partições do sistema; (df -h)
#2 – Exibir relação de usuário logados; (who)
#3 – Exibir data/hora; (date)
#4 – Sair.
#Informe sua opção: As linhas acima serão apresentadas aos usuários até que seja escolhida a opção 4 (Sair). 
#Caso seja escolhida alguma opção entre 1 e 3, serão executados os comandos correspondentes e o resultado da execução será apresentado ao usuário.
#Caso seja informado algum número que não corresponde às opções de menu disponíveis, exibir na tela a mensagem "Opção não disponível. Tente outra vez."

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


# ENGLISH VERSION
# # Create a script that presents the user with a menu with the following options:
#1 - View usage status of system partitions; (df ​​​​-h)
#2 - Display list of logged in users; (who)
#3 - Display data/time; (meeting)
#4 - Exit.
#Enter your option: The lines above supported users until option 4 (Exit) is chosen. 
#If any option between 1 and 3 is chosen, the corresponding commands will be alternated and the result of the execution will be presented to the user. 
#If a number is specified that does not match the available menu options, display the message "Option not available. Please try again."

#!/bin/bash
j=0
while [ $j -ne 4 ]
#for j in $(seq 1 4)
do
 echo "1 – View usage status of system partitions"
 echo "2 – Display logged user list"
 echo "3 – show date/time"
 echo "4 – Exit

while [ $j -lt 1 ] || [ $j -gt 4 ]; do
echo "Option not available. Please try again."
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
