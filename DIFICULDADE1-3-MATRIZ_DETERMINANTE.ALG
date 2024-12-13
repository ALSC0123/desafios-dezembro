Algoritmo "3-matriz_determinante"

//Leia um matriz 2x2 de numeros inteiros, exiba a matriz completa na tela e calcule sua determinante

Var
   matri: vetor[0..1, 0..1] de Inteiro
   determinante: Inteiro
   i, j: Inteiro

Inicio
   para i <- 0 ate 1 faca
      para j <- 0 ate 1 faca
         escreva("")
         leia(matri[i, j])
      fimpara
   fimpara

   escreval("Matriz:")
   para i <- 0 ate 1 faca
      para j <- 0 ate 1 faca
         escreva(matri[i, j]:4)
      fimpara
      escreval("")
   fimpara

   determinante <- (matri[0, 0] * matri[1, 1]) - (matri[0, 1] * matri[1, 0])

   Escreval("Determinante: ", determinante)

Fimalgoritmo
