Algoritmo "dificuldade2-1-vetores_matrizes"

//leia um vetor de 10 numeros inteiros, ordene-os em ondem crescente e
//exiba cada valor juntamente com sua posição original no vetor

Var
   i, j, temp: Inteiro
   veto, posicoes: vetor [0..9] de inteiro

Inicio

   para i <- 0 ate 9 faca
      Escreva("")
      Leia(veto[i])
      posicoes[i] <- i
   fimpara

   para i <- 0 ate 8 faca
      para j <- i+1 ate 9 faca
         se veto[i] > veto[j] entao
            temp <- veto[i]
            veto[i] <- veto[j]
            veto[j] <- temp

            temp <- posicoes[i]
            posicoes[i] <- posicoes[j]
            posicoes[j] <- temp
         fimse
      fimpara
   fimpara

   escreval("")
   escreval("Vetor Ordenado:")
   para i <- 0 ate 9 faca
      escreval(veto[i], " (Posição Original: ", posicoes[i], ") ")
   fimpara
   
FimAlgoritmo
