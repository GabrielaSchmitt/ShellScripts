#!/bin/bash

#Desenvolva um script que apresente na tela os usuários cadastrados no sistema e os seus respectivos diretórios home.

#recebe todos os usuários
usuarios=$( cat /etc/passwd | cut -d : -f1)

  for usuario in $usuarios
  do
     #coloca o home de cada usuário em uma variável
     pasta=$(eval echo "~$usuario") 
     echo "$usuario => $pasta"
  done