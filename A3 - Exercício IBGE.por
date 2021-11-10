/*
*O IBGE (Instituto Brasileiro de Geografia e Estat�stica) desejou realizar uma estat�stica nas cidades pertencentes ao estado do Paran�,
*verificando dados sobre acidentes de tr�nsito. Neste estudo, precisava-se obter alguns dados, que podemos verificar abaixo:
*
*c�digo da cidade;
*n�mero de ve�culos de passeio;
*n�mero de acidentes de tr�nsito com v�timas.
*Desejava-se saber ainda:
*
*qual o maior e o menor �ndice de acidentes de tr�nsito e a que cidades pertencem;
*qual a m�dia de ve�culos nas cidades juntas;
*qual a m�dia de acidentes de tr�nsito nas cidades com menos de 2000 ve�culos de passeio.
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
	        
	        escreva ("\nDigite o c�digo da cidade: ")
	        leia (codigoCidade)
	        
	        escreva ("Digite a quandidade de ve�culos: ")
	        leia (numeroVeiculos)
	        
	        // Total ve�culos
	        totalVeiculos = totalVeiculos + numeroVeiculos
	        
	        escreva ("Digite a quantidade de acidentes de tr�nsito com v�tima: ")
	        leia (numeroAcidentes)
	        
	        // Cidade com menor n�mero de acidentes
	        se (numeroAcidentes < acidentesMenor) {
	            acidentesMenor = numeroAcidentes
	            codigoMenor = codigoCidade
	        }
	        
	        // Cidade com maior n�mero de acidentes
	        se (numeroAcidentes > acidentesMaior) {
	            acidentesMaior = numeroAcidentes
	            codigoMaior = codigoCidade
	        }
	        
	        // M�dia de acidentes em cidades com menos de 2000 ve�culos
	        se (numeroVeiculos < 2000) {
	            totalAcidentes = totalAcidentes + numeroAcidentes
	            contadorMenor++
	        }
	        
	        escreva ("Deseja adicionar outra cidade? Digite s ou n: ")
	        leia (continuaPrograma)
	        
	        contador++
	  	}
	  	   		    
	    mediaVeiculos = totalVeiculos / contador
	    escreva ("\n M�dia de ve�culos em todas as cidades: ", mediaVeiculos)
	    
	    mediaAcidentes = totalAcidentes / contadorMenor
	    escreva ("\n M�dia de acidentes de tr�nsito em cidades com menos de 2000 ve�culos: ", mediaAcidentes)
	    
	    escreva ("\n A cidade de c�digo ", codigoMaior, " foi a cidade com maior n�mero de acidentes, chegando � ", acidentesMaior, " acidentes")
	    
	    escreva ("\n A cidade de c�digo ", codigoMenor, " foi a cidade com menor n�mero de acidentes, chegando � ", acidentesMenor, " acidentes")
	}
}
