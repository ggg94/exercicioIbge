/*
*O IBGE (Instituto Brasileiro de Geografia e Estatística) desejou realizar uma estatística nas cidades pertencentes ao estado do Paraná,
*verificando dados sobre acidentes de trânsito. Neste estudo, precisava-se obter alguns dados, que podemos verificar abaixo:
*
*código da cidade;
*número de veículos de passeio;
*número de acidentes de trânsito com vítimas.
*Desejava-se saber ainda:
*
*qual o maior e o menor índice de acidentes de trânsito e a que cidades pertencem;
*qual a média de veículos nas cidades juntas;
*qual a média de acidentes de trânsito nas cidades com menos de 2000 veículos de passeio.
*/

programa {
	funcao inicio() {
	    
	    
	    inteiro codigoCidade = 0
	    inteiro codigoMenor = 0
	    inteiro codigoMaior = 0
	    
	    inteiro numeroVeiculos = 0
	    inteiro totalVeiculos = 0
	    real mediaVeiculos = 0.0
	    
	    inteiro numeroAcidentes = 0
	    inteiro totalAcidentes = 0
	    inteiro acidentesMenor = 2147483647
	    inteiro acidentesMaior = 0
	    real mediaAcidentes = 0.0
	    
	    inteiro contador = 0
	    inteiro contadorMenor = 0
	    
	    caracter continuaPrograma = 's'
	    
	    enquanto (continuaPrograma == 's') {
	        
	        escreva ("\nDigite o código da cidade: ")
	        leia (codigoCidade)
	        
	        escreva ("Digite a quandidade de veículos: ")
	        leia (numeroVeiculos)
	        
	        // Total veículos
	        totalVeiculos = totalVeiculos + numeroVeiculos
	        
	        escreva ("Digite a quantidade de acidentes de trânsito com vítima: ")
	        leia (numeroAcidentes)
	        
	        // Cidade com menor número de acidentes
	        se (numeroAcidentes < acidentesMenor) {
	            acidentesMenor = numeroAcidentes
	            codigoMenor = codigoCidade
	        }
	        
	        // Cidade com maior número de acidentes
	        se (numeroAcidentes > acidentesMaior) {
	            acidentesMaior = numeroAcidentes
	            codigoMaior = codigoCidade
	        }
	        
	        // Média de acidentes em cidades com menos de 2000 veículos
	        se (numeroVeiculos < 2000) {
	            totalAcidentes = totalAcidentes + numeroAcidentes
	            contadorMenor++
	        }
	        
	        escreva ("Deseja adicionar outra cidade? Digite s ou n: ")
	        leia (continuaPrograma)
	        
	        contador++
	  	}
	  	   		    
	    mediaVeiculos = totalVeiculos / contador
	    escreva ("\n Média de veículos em todas as cidades: ", mediaVeiculos)
	    
	    mediaAcidentes = totalAcidentes / contadorMenor
	    escreva ("\n Média de acidentes de trânsito em cidades com menos de 2000 veículos: ", mediaAcidentes)
	    
	    escreva ("\n A cidade de código ", codigoMaior, " foi a cidade com maior número de acidentes, chegando à ", acidentesMaior, " acidentes")
	    
	    escreva ("\n A cidade de código ", codigoMenor, " foi a cidade com menor número de acidentes, chegando à ", acidentesMenor, " acidentes")
	}
}
