#!/bin/bash

# Uma das informações armazenadas no arquivo /etc/passwd é o shell utilizado por cada usuário do sistema (campo 7). Desenvolva um script que informe qual é o shell mais utilizado.
#Exemplo: /bin/sh => 17 usuários.

# EN: One of the information stored in the /etc/passwd file is the shell used by each user on the system (field 7). Develop a script that informs which is the most used shell.
# Example: /bin/sh => 17 users.

#recebe todos os shells em uso
# EN: get all shells in use
shelluso=$( cat /etc/passwd | cut -d : -f7)
shellvalid=$( cat /etc/shells | cut -d '#' -f1)

aux=0
cont=0

for i in $shellvalid
do
  match=0
  for j in $shelluso
  do 
   if [ $i = $j ];then
     let match++          
   fi
   if [ $cont -gt 0 ];then
     if [ $match -gt $aux ];then
      aux=$match
      pasta=$i
     fi
   fi
  done 
  let cont++
done
echo "$pasta => $aux usuários"
