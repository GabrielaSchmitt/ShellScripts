#!/bin/bash

# Desenvolva um script que realize as operações aritméticas básicas (soma, subtração, divisão e multiplicação), recebendo a operação e os operadores como parâmetros.
# EN: Develop a script that can solve basic mathematical operations (addition, subtraction, division and multiplication), receiving the operation and operators as parameters.

echo "O resultado é: "

case $3 in
  #soma
  +)
    echo "scale=2;$1+$2" | bc
;;

  #subtracao
  -)
    echo "scale=2;$1-$2" | bc
;;

  #multiplicacao
  x)
    echo "scale=2;$1*$2" | bc
;;

  #divisao
  /)
    echo "scale=2;$1/$2" | bc
;;
esac
