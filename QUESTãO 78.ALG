algoritmo "Quest�o 78"

//Um vetor de 60 posi��es contem velocidades instantaneas (em m/s) de um veiculo
//uma por sengundo,totalizando 60 segundos;
//escreva um programa que mostre:
// a. Maior per�odo de tempo sem diminuir a velocidade
// b. Instante de in�cio da frenagem mais abrupta
// c. Maior acelera��o positiva e o instante que se iniciou
// d. Maior per�odo de tempo com velocidade constante

var
   velocidades: vetor[0..59] de inteiro
   i, maiorPeriodo, inicioFrenagem, maiorAceleracao, instanteAceleracao, periodoConstante: inteiro
   aceleracao: inteiro
   
inicio
   para i de 0 ate 59 faca
      escreva("Digite a velocidade no segundo ", i, ": ")
      leia(velocidades[i])
   fimpara

   // a. Maior per�odo de tempo sem diminuir a velocidade
   maiorPeriodo <- 0
   periodoConstante <- 0
   para i de 1 ate 59 faca
      se velocidades[i] >= velocidades[i-1] ent�o
         periodoConstante <- periodoConstante + 1
      senao
         se periodoConstante > maiorPeriodo ent�o
            maiorPeriodo <- periodoConstante
         fimse
      fimse
   fimpara
   se periodoConstante > maiorPeriodo ent�o
      maiorPeriodo <- periodoConstante

   escreval("a: ", maiorPeriodo + 1)

   // b. Instante de in�cio da frenagem mais abrupta
   maiorAceleracao <- 0
   inicioFrenagem <- 0
   para i de 1 ate 59 faca
      aceleracao <- velocidades[i] - velocidades[i-1]
      se aceleracao < maiorAceleracao ent�o
         maiorAceleracao <- aceleracao
         inicioFrenagem <- i
      fimse
   fimpara
   escreval("b: ", inicioFrenagem )

   // c. Maior acelera��o positiva e o instante que se iniciou
   maiorAceleracao <- 0
   instanteAceleracao <- 0
   para i de 1 ate 59 faca
      aceleracao <- velocidades[i] - velocidades[i-1]
      se aceleracao > maiorAceleracao ent�o
         maiorAceleracao <- aceleracao
         instanteAceleracao <- i
      fimse
   fimpara
   escreval("c: ", maiorAceleracao, " no instante ", instanteAceleracao )

   // d. Maior per�odo de tempo com velocidade constante
   periodoConstante <- 0
   maiorPeriodo <- 0
   para i de 1 ate 59 faca
      se velocidades[i] = velocidades[i-1] ent�o
         periodoConstante <- periodoConstante + 1
      senao
         se periodoConstante > maiorPeriodo ent�o
            maiorPeriodo <- periodoConstante
         fimse
         periodoConstante <- 0
      fimse
   fimpara

   se periodoConstante > maiorPeriodo ent�o
      maiorPeriodo <- periodoConstante
      
   escreval("d: ", maiorPeriodo + 1)
   fimse

fimalgoritmo
