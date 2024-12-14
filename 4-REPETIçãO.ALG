algoritmo "4-repetição"

//Leia um vetor de 5 numeros inteiros, identifique e mostre quais numeros são repetidos,
//alem de contar quantas vezes cada valor se repete e listar os valores unicos
var
   numeros: vetor[0..4] de inteiro
   i, j, cont: inteiro
   repetidos: logico
inicio

   para i de 0 ate 4 faca
      escreva("")
      leia(numeros[i])
   fimpara

   para i de 0 ate 4 faca
      repetidos <- falso
      cont <- 0

      para j de 0 ate 4 faca
         se numeros[i] = numeros[j] então
            cont <- cont + 1
         fimse
      fimpara

      se cont > 1 entao
         escreval("O número ", numeros[i], " se repete ", cont, " vezes.")
         repetidos <- verdadeiro
      fimse
   fimpara

   escreval("Números únicos: ")
   para i de 0 ate 4 faca
      cont <- 0
      para j de 0 ate 4 faca
         se numeros[i] = numeros[j] então
            cont <- cont + 1
         fimse
      fimpara
      se cont = 1 então
         escreva(numeros[i], " ")
      fimse
   fimpara
fimalgoritmo
