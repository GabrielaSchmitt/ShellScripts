#!/bin/bash

# Escreva um script para gerar páginas no formato pdf das páginas de documentação (man).
# Esse script apenas deverá receber o comando e abrir de forma automática o arquivo pdf gerado.

echo "Convertendo manual $1 em pdf..."
echo "$(man $1)" >> ./man_$1.txt
libreoffice --convert-to pdf:writer_pdf_Export ./man_$1.txt
rm ./man_$1.txt
echo "Abrindo manual $1 em pdf..."
xdg-open ./man_$1.pdf