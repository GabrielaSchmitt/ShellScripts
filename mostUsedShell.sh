#!/bin/bash

# Uma das informações armazenadas no arquivo /etc/passwd é o shell utilizado por cada usuário do sistema (campo 7). Desenvolva um script que informe qual é o shell mais utilizado.
#Exemplo: /bin/sh => 17 usuários.

#recebe todos os shells em uso
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