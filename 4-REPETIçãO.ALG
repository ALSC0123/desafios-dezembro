algoritmo "4-repeti��o"

//Leia um vetor de 5 numeros inteiros, identifique e mostre quais numeros s�o repetidos,
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
         se numeros[i] = numeros[j] ent�o
            cont <- cont + 1
         fimse
      fimpara

      se cont > 1 entao
         escreval("O n�mero ", numeros[i], " se repete ", cont, " vezes.")
         repetidos <- verdadeiro
      fimse
   fimpara

   escreval("N�meros �nicos: ")
   para i de 0 ate 4 faca
      cont <- 0
      para j de 0 ate 4 faca
         se numeros[i] = numeros[j] ent�o
            cont <- cont + 1
         fimse
      fimpara
      se cont = 1 ent�o
         escreva(numeros[i], " ")
      fimse
   fimpara
fimalgoritmo
