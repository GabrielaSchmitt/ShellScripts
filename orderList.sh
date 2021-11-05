#!/bin/bash
# Instruções: Desenvolva um script que receba palavras interativamente e, a cada palavra recebida, exiba, como
#resultado, essas palavras ordenadas. Ao ser informada a palavra “sair”, o script é finalizado.

words=($@)
let index=0
echo 'Informe a palavra a ser incluída na lista ordenada ou digite [sair] para fechar a aplicação:'
while read word && [ "$word" != sair ]; do
 : 
   words[$index]="$word"
   index=$((index+1))
   echo -e "\n" 
   echo ${words[@]} | fmt -1 | sort
   echo -e "\n" 
done

# ENGLISH VERSION
# Instructions: Develop a script that receives words interactively and, for each word received, displays as
#result, those words sorted. When the word “exit” is informed, the script is terminated.

words=($@)
let index=0
echo 'Inform the word to be included in the ordered list, or type [ exit ] to close the application: '
while read word && [ "$word" != exit ]; do
 : 
   words[$index]="$word"
   index=$((index+1))
   echo -e "\n" 
   echo ${words[@]} | fmt -1 | sort
   echo -e "\n" 
done
