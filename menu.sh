#!/bin/bash

OP=1

until [[ $OP == 0 ]]; do
	#statements


	echo "Trabalho 2 - Aluno:Renata Machado"

	echo "[1] Listar conteúdo da pasta atual
		  [2] Ver conteúdo de um arquivo
		  [3] Testar se uma url está no ar
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
					echo "Informe o endereco da pagina"
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





Observações: 
- O menu sempre será mostrado após a execução de uma das opções
- O programa só termina quando o usuário escolhe a opção 0-sair
- No item 2, você deve perguntar o nome do arquivo
- No item 3, você deve perguntar o nome da url
