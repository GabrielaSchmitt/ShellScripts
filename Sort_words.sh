#!/bin/bash

# Objetivo: Desenvolva um script que receba palavras interativamente e, a cada palavra recebida, exiba, como resultado, essas palavras ordenadas. Ao ser informada a palavra “sair”, o script é finalizado.
# EN: Instruction: Develop a script that receives words interactively and, for each word received, shows on the screen as a result all the words given and sorted alphabetically. When the word "exit" (means "exit") is written, the script ends.

words=($@)
let index=0

# EN: echo 'Type a word to be included in the ordered list or type [exit] to close the application: '
echo 'Informe a palavra a ser incluída na lista ordenada ou digite [sair] para fechar a aplicação:'

#EN: while read word && [ "$word" != exit ]; do
while read word && [ "$word" != sair ]; do
  : 

  words[$index]="$word"
  index=$((index+1))
  echo -e "\n" 
  echo ${words[@]} | fmt -1 | sort
  echo -e "\n" 
done
