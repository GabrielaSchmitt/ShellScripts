#!/bin/bash

#Considere um determinado diretório que possui vários arquivos textos. Esses arquivos possuem
#nomes variados, não obedecendo a qualquer critério. Escreva um script que renomeie 
#cada arquivo desse diretório, dando ao arquivo o nome correspondente à primeira 
#palavra encontrada no conteúdo do próprio arquivo.

# EN: Consider a certain directory that has several text files. These files have various names, 
#not obeying any criteria. Write a script that renames each file in that directory, giving the 
#file the name corresponding to the first word found in the contents of the file itself.

for nome in ./arquivos/*.txt
do
  novoNome=$(echo $(cat $nome | cut -d ' ' -f1))
  mv $nome $novoNome.txt
done
