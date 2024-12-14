algoritmo "Quest�o-88"

// Dadas duas matrizes A e B (max 5x5)
// a. Mostre A + B
// b. Mostre a soma das diagonais de cada
// c. Mostre A * B
var
   A, B, soma, mult: vetor[0..4, 0..4] de inteiro
   i, j, k, n: inteiro
   diagonalA, diagonalB: inteiro
inicio

      escreva("Tamanho da Matriz: ")
      leia(n)

      escreval("Matriz A: ")
      para i de 0 ate n-1 faca
           para j de 0 ate n-1 faca
                escreva("")
                leia(A[i,j])
           fimpara
      fimpara

      escreval("Matriz B:")
      para i de 0 ate n-1 faca
           para j de 0 ate n-1 faca
                escreva("")
                leia(B[i,j])
           fimpara
      fimpara

      // a. Mostre A + B
      escreval()
      escreval("Soma:")
      para i de 0 ate n-1 faca
           para j de 0 ate n-1 faca
                soma[i,j] <- A[i,j] + B[i,j]
                escreva(soma[i,j])
           fimpara
           escreval("")
      fimpara

      // b. Mostre a soma das diagonais de cada
      diagonalA <- 0
      diagonalB <- 0
      para i de 0 ate n-1 faca
           diagonalA <- diagonalA + A[i,i]
           diagonalB <- diagonalB + B[i,i]
      fimpara

      escreval()
      escreval("Soma diag A:", diagonalA)
      escreval("Soma diag B:", diagonalB)

      // c. Mostre A * B
      escreval()
      escreval("Produto:")
      para i de 0 ate n-1 faca
           para j de 0 ate n-1 faca
                mult[i,j] <- 0
                para k de 0 ate n-1 faca
                     mult[i,j] <- mult[i,j] + A[i,k] * B[k,j]
                fimpara
                escreva(mult[i,j])
           fimpara
           escreval()
      fimpara

fimalgoritmo
