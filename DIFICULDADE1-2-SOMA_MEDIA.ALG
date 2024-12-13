Algoritmo "Dificuldade1-2-soma_media"

//Leia um vetor de 10 numeros inteiros,
//calcule e mostre a soma e a media desses valores

Var
   veto: Vetor[0..9] De Inteiro
   soma, media: Real
   i: Inteiro
   
Inicio
   soma <- 0

   Para i <- 0 Ate 9 Faca
      Escreva("")
      Leia(veto[i])
      soma <- soma + veto[i]
   FimPara

   media <- soma / 10

   Escreval("Soma: ", soma)
   Escreval("Media: ", media)
   
FimAlgoritmo