algoritmo "questao 97"

//Verifique se uma matriz quadrada é um quadrado magico,
//retorne 1 se for, 0 caso contrario.

var
   matriz: vetor[0..2, 0..2] de inteiro
   i, j, somaReferencia, somaLinha, somaColuna, somaDiagonal1, somaDiagonal2: inteiro
   eQuadradoMagico: logico

inicio

   // inserir os numeros
   para i de 0 ate 2 faca
      para j de 0 ate 2 faca
         escreva("")
         leia(matriz[i, j])
      fimpara
   fimpara

   //variáveis
   somaDiagonal1 <- 0
   somaDiagonal2 <- 0
   eQuadradoMagico <- verdadeiro

   // Calcular a soma da primeira linha (referencia)
   somaReferencia <- 0
   para j de 0 ate 2 faca
      somaReferencia <- somaReferencia + matriz[0, j]
   fimpara

   // Verificar somas das linhas, colunas e diagonais
   para i de 0 ate 2 faca
      somaLinha <- 0
      somaColuna <- 0

      para j de 0 ate 2 faca
         somaLinha <- somaLinha + matriz[i, j]
         somaColuna <- somaColuna + matriz[j, i]
      fimpara

      // Verificar se as somas da linha e coluna são iguais à soma de referência( a primeira linha)
      se (somaLinha <> somaReferencia) ou (somaColuna <> somaReferencia) entao
         eQuadradoMagico <- falso
      fimse

      // Calcular as diagonais
      somaDiagonal1 <- somaDiagonal1 + matriz[i, i]
      somaDiagonal2 <- somaDiagonal2 + matriz[i, 2 - i]
   fimpara

   // Verificar diagonais
   se (somaDiagonal1 <> somaReferencia) ou (somaDiagonal2 <> somaReferencia) entao
      eQuadradoMagico <- falso
   fimse

   escreval("")
   se eQuadradoMagico entao
      escreva("1")
   senao
      escreva("0")
   fimse

fimalgoritmo
