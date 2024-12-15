Algoritmo "Questão-94"
//Função recebe um retangulo (golpe) e um conjunto de retangulos(adversarios).
//retorna 1 se ha sobreposição com algum retangulo do adversario, senão 0.

Var
   golpe_x1, golpe_y1, golpe_x2, golpe_y2: Inteiro
   adv_x1, adv_y1, adv_x2, adv_y2: Vetor[0..99] de Inteiro
   n, i: Inteiro
   sobrepoe: Inteiro

Inicio
   //
   Escreva("")
   Leia(golpe_x1, golpe_y1, golpe_x2, golpe_y2)
   
   escreval("")
   Escreva("")
   Leia(n)

   // adversarios
   Para i de 1 ate n faca
      Escreva("")
      Leia(adv_x1[i], adv_y1[i], adv_x2[i], adv_y2[i])
   FimPara

   //sobreposição
   sobrepoe <- 0
   Para i de 1 ate n faca
      Se (golpe_x2 >= adv_x1[i]) E (golpe_x1 <= adv_x2[i]) E (golpe_y2 >= adv_y1[i]) E (golpe_y1 <= adv_y2[i]) Entao
         sobrepoe <- 1
      FimSe
   FimPara

   //
   Escreval(sobrepoe)

FimAlgoritmo