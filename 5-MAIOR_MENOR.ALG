Algoritmo "5-maior_menor"

//leia uma matrix 4x4  de numeros inteiros e mostre o maior e o menor valor,
//juntamente com sua respectivas posi��es (linha e coluna)

var
   matriz: vetor[0..3, 0..3] de inteiro
   i, j, maior, menor, linha_maior, coluna_maior, linha_menor, coluna_menor: inteiro
inicio

   // Leitura da matriz
   para i de 0 ate 3 faca
      para j de 0 ate 3 faca
         escreva("")
         leia(matriz[i, j])
      fimpara
   fimpara

   maior <- matriz[0, 0]
   menor <- matriz[0, 0]
   linha_maior <- 0
   coluna_maior <- 0
   linha_menor <- 0
   coluna_menor <- 0

   para i de 0 ate 3 faca
      para j de 0 ate 3 faca
         se matriz[i, j] > maior ent�o
            maior <- matriz[i, j]
            linha_maior <- i
            coluna_maior <- j
         fimse
         se matriz[i, j] < menor ent�o
            menor <- matriz[i, j]
            linha_menor <- i
            coluna_menor <- j
         fimse
      fimpara
   fimpara

   escreval("O maior valor � ", maior, " na posi��o [", linha_maior, ",", coluna_maior, "]")
   escreval("O menor valor � ", menor, " na posi��o [", linha_menor, ",", coluna_menor, "]")

fimalgoritmo
