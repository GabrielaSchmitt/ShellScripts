#!/bin/bash

# Desenvolva um script que apresente na tela os usuários cadastrados no sistema e os seus respectivos diretórios home.
# EN: Develop a script that shows in the screen the registered users in the system and their respective home directories.

# recebe todos os usuários
# EN: get all users
usuarios=$( cat /etc/passwd | cut -d : -f1)

  for usuario in $usuarios
  do
     # coloca o home de cada usuário em uma variável
     # EN: put each user's home in a variable
     pasta=$(eval echo "~$usuario") 
     echo "$usuario => $pasta"
  done
