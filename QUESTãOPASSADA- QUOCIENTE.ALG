Algoritmo "Quest�oPassada- Quociente"

//Escreva um programa que calcule o quocioente e o resto da divis�o de dois
//numeros inteiros dados, usando apenas as opera��es de soma e/ou subtra��o

Var
   dividendo, divisor: inteiro
   quociente, resto: inteiro
   subtracao: inteiro

Inicio

   Escreva("Digite o dividendo: ")
   Leia(dividendo)

   Escreva("Digite o divisor: ")
   Leia(divisor)

      quociente <- 0
      resto <- dividendo
      subtracao <- dividendo

      // Enquanto for poss�vel subtrair o divisor
      Enquanto subtracao >= divisor Faca
         subtracao <- subtracao - divisor
         quociente <- quociente + 1
      FimEnquanto

      // O �ltimo valor de subtra��o � o resto
      resto <- subtracao

      // Sa�da dos resultados
      Escreval("")
      Escreval("Quociente = ", quociente)
      Escreval("Resto = ", resto)

FimAlgoritmo

