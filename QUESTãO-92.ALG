algoritmo "questão-92"

//Receba uma matrix 5x5 de inteiros e imprima a transposta.

var
   matriz: vetor[0..4, 0..4] de inteiro
   i, j: inteiro
   
inicio
      escreval("Digite os números da matriz 5x5:")
      para i de 0 ate 4 faca
           para j de 0 ate 4 faca
                escreva("")
                leia(matriz[i,j])
           fimpara
      fimpara

      escreval()
      escreval("")
      para i de 0 ate 4 faca
           para j de 0 ate 4 faca
                escreva(matriz[j,i])
           fimpara
           escreval()
      fimpara
fimalgoritmo