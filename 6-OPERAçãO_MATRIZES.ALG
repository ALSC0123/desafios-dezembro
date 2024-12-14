algoritmo "6-operação_matrizes"

//leia duas matrizes 2x2 de numeros inteiros, calcule e mostre a
//matriz resultante da soma e da multiplicação dessas duas matrizes.

var
   matriz1, matriz2, resultadosoma, resultadomultiplicacao: vetor[0..1, 0..1] de inteiro
   i, j, k: inteiro
   
inicio
   escreval("Primeira Matriz")
   para i de 0 ate 1 faca
      para j de 0 ate 1 faca
         escreva("")
         leia(matriz1[i, j])
      fimpara
   fimpara

   escreval("segunda Matriz:")
   para i de 0 ate 1 faca
      para j de 0 ate 1 faca
         escreva("")
         leia(matriz2[i, j])
      fimpara
   fimpara

   para i de 0 ate 1 faca
      para j de 0 ate 1 faca
         resultadosoma[i, j] <- matriz1[i, j] + matriz2[i, j]
      fimpara
   fimpara

   para i de 0 ate 1 faca
      para j de 0 ate 1 faca
         resultadomultiplicacao[i, j] <- 0
         para k de 0 ate 1 faca
            resultadomultiplicacao[i, j] <- resultadomultiplicacao[i, j] + matriz1[i, k] * matriz2[k, j]
         fimpara
      fimpara
   fimpara

   escreval("")
   escreval("Matriz soma:")
   para i de 0 ate 1 faca
      para j de 0 ate 1 faca
         escreva(resultadosoma[i, j], " ")
      fimpara
      escreval("")
   fimpara

   escreval("Matriz multiplicação:")
   para i de 0 ate 1 faca
      para j de 0 ate 1 faca
         escreva(resultadomultiplicacao[i, j], " ")
      fimpara
      escreval("")
   fimpara

fimalgoritmo

