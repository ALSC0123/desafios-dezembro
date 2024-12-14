Algoritmo "3-soma_diagonais"

//Leia uma matrix 3x3 de numeros inteiros, calcule e mostre a soma dos valores
//da diagonal principal e da diagonal secundaria

Var
   matriz: vetor[0..2,0..2] de Inteiro
   somaprincipal, somasecundaria, i, j: Inteiro
Inicio

   somaprincipal <- 0
   somasecundaria <- 0

   para i de 0 ate 2 faca
      para j de 0 ate 2 faca
         escreva("")
         leia(matriz[i,j])
      fimpara
   fimpara

   escreval("")
   escreva("Soma da diagonal principal: ")
   para i de 0 ate 2 faca
      somaprincipal <- somaprincipal + matriz[i,i]
      se i > 0 entao
         escreva(" + ")
      fimse
      escreva(matriz[i,i])
   fimpara
   escreval(" = ", somaprincipal)


   escreva("Soma da diagonal secundária: ")
   para i de 0 ate 2 faca
      somasecundaria <- somasecundaria + matriz[i,2-i]
      se i > 0 entao
         escreva(" + ")
      fimse
      escreva(matriz[i,2-i])
   fimpara
   escreval(" = ", somasecundaria)

Fimalgoritmo
