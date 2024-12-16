Algoritmo "QuestãoPassada- Quociente"

//Escreva um programa que calcule o quocioente e o resto da divisão de dois
//numeros inteiros dados, usando apenas as operações de soma e/ou subtração

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

      // Enquanto for possível subtrair o divisor
      Enquanto subtracao >= divisor Faca
         subtracao <- subtracao - divisor
         quociente <- quociente + 1
      FimEnquanto

      // O último valor de subtração é o resto
      resto <- subtracao

      // Saída dos resultados
      Escreval("")
      Escreval("Quociente = ", quociente)
      Escreval("Resto = ", resto)

FimAlgoritmo

