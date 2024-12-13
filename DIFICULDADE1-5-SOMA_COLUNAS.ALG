algoritmo "dificuldade1-5-Soma_Colunas"

//Leia uma matrix 3x3 de numeros inteiros e mostre a soma dos valores de cada
//linha e de cada coluna
var
   matriz: vetor[0..2, 0..2] de inteiro
   somaLinha, somaColuna: vetor[0..2] de inteiro
   i, j: inteiro

inicio

   para i de 0 ate 2 faca
      somaLinha[i] <- 0
      somaColuna[i] <- 0
   fimpara

   para i de 0 ate 2 faca
      para j de 0 ate 2 faca
         escreva("")
         leia(matriz[i, j])
      fimpara
   fimpara

   para i de 0 ate 2 faca
      para j de 0 ate 2 faca
         somaLinha[i] <- somaLinha[i] + matriz[i, j]
         somaColuna[j] <- somaColuna[j] + matriz[i, j]
      fimpara
   fimpara

   escreval("Soma das Linhas:")
   para i de 0 ate 2 faca
      escreval("Linha ", i, ": ", somaLinha[i])
   fimpara

   escreval("Soma das Colunas:")
   para j de 0 ate 2 faca
      escreval("Coluna ", j, ": ", somaColuna[j])
   fimpara
fimalgoritmo