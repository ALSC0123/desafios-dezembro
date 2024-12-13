Algoritmo "DIFICULDADE1-4-PARES_IMPARES"

//Leia um vetor de 5 numeros inteiros e mostre quantos desses numeros s�o pares
//e quantos sao impares, listando tambem os respectivos valores

Var
   veto: vetor[0..4] de inteiro
   qntpar, qntimpar, i: inteiro

Inicio
   qntpar <- 0
   qntimpar <-  0

   para i de 0 ate 4 faca
      escreva("")
      leia(veto[i])
   fimpara

   escreva("Numeros pares: ")
   para i de 0 ate 4 faca
      se veto[i] % 2 = 0 entao
         escreva(veto[i], " ")
         qntpar <- qntpar + 1
      fimse
   fimpara
   escreva("(", qntpar," )")
   
   escreval
   escreva("Numeros impares: ")
   para i de 0 ate 4 faca
      se veto[i] % 2 <> 0 entao
         escreva(veto[i], " ")
         qntimpar <- qntimpar + 1
      fimse
   fimpara
   escreva("(", qntimpar, " )")

Fimalgoritmo
