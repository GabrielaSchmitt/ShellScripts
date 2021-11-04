#!/bin/bash

#Considere um determinado diretório que possui vários arquivos textos. Esses arquivos possuem
#nomes variados, não obedecendo a qualquer critério. Escreva um script que renomeie 
#cada arquivo desse diretório, dando ao arquivo o nome correspondente à primeira 
#palavra encontrada no conteúdo do próprio arquivo.

for nome in ./arquivos/*.txt
do
  novoNome=$(echo $(cat $nome | cut -d ' ' -f1))
  mv $nome $novoNome.txt
done