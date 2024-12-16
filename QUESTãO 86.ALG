algoritmo "Questão 86"

//Função recebe um array de amostras, o número total de amostras, um min level e
// uma min_proportion.Retorna 1 se a proporção de amostras dentro do intervalo
//[-min_level, +min_level] for >= min_proportion, senão 0.
var
   amostras: vetor[1..100] de real
   n, i, qtd_dentro: inteiro
   min_level, min_proportion, proporcao: real

inicio
   leia(n)

   para i de 1 ate n faca
      leia(amostras[i])
   fimpara

   leia(min_level)
   leia(min_proportion)

   qtd_dentro <- 0
   para i de 1 ate n faca
      se (amostras[i] >= -min_level) e (amostras[i] <= min_level) entao
         qtd_dentro <- qtd_dentro + 1
      fimse
   fimpara

   proporcao <- qtd_dentro/n

   se proporcao >= min_proportion entao
      escreva(1)
   senao
      escreva(0)
   fimse

fimalgoritmo