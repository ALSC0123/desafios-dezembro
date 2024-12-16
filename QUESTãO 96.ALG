Algoritmo "questão 96"

//ere uma matriz NxN preenchida em espiral( sentido horario), comeando do canto
//superior esquerdo com valores consecutivos

Var
   matriz: vetor[1..10, 1..10] de inteiro
   n, valor, linha_inicio, linha_fim, coluna_inicio, coluna_fim: inteiro
   i, j: inteiro

Inicio

   Escreva("")
   Leia(n)

   valor <- 1
   linha_inicio <- 1
   linha_fim <- n
   coluna_inicio <- 1
   coluna_fim <- n

   Enquanto (linha_inicio <= linha_fim) e (coluna_inicio <= coluna_fim) faca
      //esquerda para direita
      Para j de coluna_inicio ate coluna_fim faca
         matriz[linha_inicio, j] <- valor
         valor <- valor + 1
      FimPara
      linha_inicio <- linha_inicio + 1

      //cima para baixo
      Para i de linha_inicio ate linha_fim faca
         matriz[i, coluna_fim] <- valor
         valor <- valor + 1
      FimPara
      coluna_fim <- coluna_fim - 1

      Se linha_inicio <= linha_fim entao
         //direita para esquerd
         Para j de coluna_fim ate coluna_inicio passo -1 faca
            matriz[linha_fim, j] <- valor
            valor <- valor + 1
         FimPara
         linha_fim <- linha_fim - 1
      FimSe

      Se coluna_inicio <= coluna_fim entao
         // baixo para cima
         Para i de linha_fim ate linha_inicio passo -1 faca
            matriz[i, coluna_inicio] <- valor
            valor <- valor + 1
         FimPara
         coluna_inicio <- coluna_inicio + 1
      FimSe
   FimEnquanto

   Escreval("")
   Para i de 1 ate n faca
      Para j de 1 ate n faca
         Escreva(matriz[i,j]:4)
      FimPara
      Escreval()
   FimPara

FimAlgoritmo