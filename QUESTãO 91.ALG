Algoritmo "quest�o 91"

//a. Obter tabela de dist�ncias entre cidades sem redund�ncias
//b. Obter um percurso (m�x. 10 cidades)
//c. Mostrar dist�ncia percorrida

Var
   cidades: vetor[1..10] de caractere
   distancias: vetor[1..10, 1..10] de inteiro
   percurso: caractere
   n, i, j, dist_total: inteiro
   cidade1, cidade2: caractere
   dist: inteiro
   pos1, pos2: inteiro

Inicio

   escreva("n�mero de cidades: ")
   leia(n)

   para i de 1 ate n faca
      escreva("nome da cidade ", i, ": ")
      leia(cidades[i])
   fimpara

   para i de 1 ate n faca
      para j de 1 ate n faca
         distancias[i,j] <- 0
      fimpara
   fimpara

   para i de 1 ate n-1 faca
      para j de i+1 ate n faca
         escreva("Dist�ncia entre ", cidades[i], " e ", cidades[j], ": ")
         leia(dist)
         distancias[i,j] <- dist
         distancias[j,i] <- dist
      fimpara
   fimpara

   escreva("percurso(digitar sem espa�o): ")
   leia(percurso)

   dist_total <- 0
   para i de 1 ate compr(percurso)-1 faca
      cidade1 <- copia(percurso, i, 1)
      cidade2 <- copia(percurso, i+1, 1)

      pos1 <- 0
      pos2 <- 0
      para j de 1 ate n faca
         se cidades[j] = cidade1 entao
            pos1 <- j
         fimse
         se cidades[j] = cidade2 entao
            pos2 <- j
         fimse
      fimpara
      
      dist_total <- dist_total + distancias[pos1,pos2]
   fimpara

   escreval("")
   escreval( dist_total)

FimAlgoritmo