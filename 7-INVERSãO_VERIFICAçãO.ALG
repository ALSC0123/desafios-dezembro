algoritmo "7-invers�o_verifica��o"

//Leia um vetor de 8 numeros inteiros,mostre-os em ordem inversa
//(do ultimo para o primeiro) e verifique se o vetor esta ordenado de 
//forma crescente ou decrescente

var
   veto: vetor[0..7] de inteiro
   i, crescente, decrescente: inteiro
inicio

   escreval("Digite 8 n�meros inteiros:")
   para i de 0 ate 7 faca
      escreva("")
      leia(veto[i])
   fimpara

   escreval("")
   escreval("Vetor em ordem inversa:")
   para i de 7-1 ate 0 passo -1 faca
      escreva(veto[i], " ")
   fimpara
   escreval("")

   crescente <- 1
   decrescente <- 1

   para i de 0 ate 6 faca
      se veto[i] > veto[i + 1] entao
         crescente <- 0
      fimse
      se veto[i] < veto[i + 1] entao
         decrescente <- 0
      fimse
   fimpara

   escreval("")
   se crescente = 1 entao
      escreval("O vetor esta ordenado de forma crescente.")
   senao
      se decrescente = 1 entao
         escreval("O vetor est� ordenado de forma decrescente.")
      senao
         escreval("O vetor n�o est� ordenado.")
      fimse
   fimse

fimalgoritmo
