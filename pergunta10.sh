#!/bin/bash

# Faça um script que a cada 60 segundos verifique se um determinado usuário está "logado" no sistema, quando o usuário se logar o script deverá:
# 1 - Informar na tela que o acesso ocorreu.
# 2 - Enviar uma mensagem de log informando o acesso (hora e em qual console o acesso ocorreu).
# 3 - Envie uma mensagem para o usuário avisando que seu acesso foi bloqueado.
# 4 - Cancele todos os processos deste usuário.
# 5 - Altere seu shell para "/bin/false" e bloqueie sua conta utilizando um "!" no campo de senha do arquivo /etc/passwd.

##   ATENCAO --- PARA EXECUTAR CORRETAMENTE ESTE SCRIPT EH NECESSARIO ESTAR UTILIZANDO ACESSO ROOT   !!!!!!!!   ##

echo "Informe o usuario a ser verificado: "
read usuario
op=1

while [ $op -eq 1 ]
do
	sleep 2
	for usr in $(echo $(users))
	do
		if [ $usr = $usuario ]
		then
			# dia=$(who | grep $usuario | cut -d' ' -f16)
			# hora=$(who | grep $usuario | cut -d' ' -f17)
			# console=$(who | grep $usuario | cut -d: -f2 | cut -d' ' -f1)

			dia=$(date '+%Y-%m-%d')
			hora=$(echo $(ps aux | grep ^pedro | grep pts | cut -c 55-59))
			hora=$(echo $hora | cut -c -5)
			console=$(ps aux | grep ^pedro | grep pts | cut -c 41-45)

			echo "O usuario $usuario realizou acesso no dia $dia as $hora horas, no(s) seguinte(s) console(s):"
			echo "$console"
			echo ""

			for cons in $(echo $console)
			do
				echo "Voce realizou acesso no dia $dia as $hora horas, no console $cons." > /dev/$cons
				echo "Seu acesso foi bloqueado." > /dev/$cons
			done

			sudo kill -9 `ps -fu $usuario | awk '{ print $2 }' | grep -v PID`
			sudo chsh --shell /bin/false $usuario
			# sudo chsh --shell /bin/bash $usuario
			sudo usermod -L $usuario
			# sudo usermod -U $usuario

			op=0
		fi

		if [ $op = 0 ]
		then
			echo "Deseja verificar outro usuario? S ou N: "
			read op2
			if [ $op2 = "S" -o $op2 = "s" ]
			then
				echo "Informe o usuario a ser verificado: "
				read usuario
				op=1
			else
				echo "Finalizando..."
			fi
		fi
	done
done
