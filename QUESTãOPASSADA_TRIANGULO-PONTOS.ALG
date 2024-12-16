algoritmo "questãopassada_triangulo-pontos"

//fazer um triangulo perfeito com pontos

var
   n, espacos, pontos, i, j: inteiro
inicio
   Escreva("Digite um número: ")
   Leia(n)

   espacos <- n \ 2
   pontos <- 1

   Enquanto pontos <= n faca
      Para i de 1 ate espacos faca
         Escreva(" ")
      FimPara

      Para j de 1 ate pontos faca
         Escreva(".")
      FimPara

      Escreval()
      espacos <- espacos - 1
      pontos <- pontos + 2
   FimEnquanto
   
fimalgoritmo