Algoritmo "Quest�oPassada-MaiorPrimoMenor"

//Escrever um programa paraa ler um numero inteiro do usuario e exibir o maior
//numero primo que seja menor do que o numero digitado


Var
   numero, i, j: inteiro
   ehPrimo: logico

Inicio
   Escreva("Digite um n�mero inteiro: ")
   Leia(numero)

   // Procura o maior primo menor que o n�mero digitado
   Para i de (numero-1) ate 2 passo -1 faca
      ehPrimo <- verdadeiro

      // Verificar se � primo
      Para j de 2 ate i-1 faca
         Se (i MOD j = 0) entao
            ehPrimo <- falso
         FimSe
      FimPara

      Se ehPrimo = verdadeiro entao
         Escreval("O maior n�mero primo menor que ", numero, " �: ", i)
      FimSe
   FimPara
FimAlgoritmo