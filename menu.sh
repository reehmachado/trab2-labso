#!/bin/bash

OP=1

until [[ $OP == 0 ]]; do
	#statements


	echo "Trabalho 2 - Aluno:Renata Machado"

	echo "[1] Listar conteúdo da pasta atual
		  [2] Ver conteúdo de um arquivo
		  [3] Testar se um IP está ativo
		  [0] Sair"

	echo "Informe a opcao desejada"

	read OP

		if [[ $OP == 0 ]]; then
			echo "ateh mais"
		else

			case $OP in
				1)
					ls
				;;
				2)
					echo "Informe o nome do arquivo"
						read arq

					cat $arq |more
				;;
				3)
					echo "Informe o IP a ser verificado"
						read ip

						if [ ! -z $ip ];then 
							ping -c 1 $ip
	
						if [ $? -eq 0 ];then
							echo "maquina esta retotnando ip"
						else
							echo "maquina fora do ar"
						fi
				;;
			#	0)
			#		echo "ateh mais"
			#	;;
				* )
				echo "Por favor, informe uma opcao valida"
				 ;;
			esac	

		fi

done






