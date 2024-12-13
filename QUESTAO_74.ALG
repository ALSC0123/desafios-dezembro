Algoritmo "questao_74"

//fa�a um programa que, dado o array unidimensional [2; 4; 35; 50; 23;17; 9; 12; 27;
//5] retorne:
//a. o maior valor
//b.a media dos valores
//c. os valores dispostos em ordem crescente
//d.o subconjunto de valores primos contido no array

Var
   array : vetor[0..9] de inteiro
   i, j, maior, soma, cont : inteiro
   media : real
   temp : inteiro
   primos : vetor[0..9] de inteiro
   qtd_primos : inteiro

Inicio
   // colocar os valores fixos de cada array
   array[0] <- 2
   array[1] <- 4
   array[2] <- 35
   array[3] <- 50
   array[4] <- 23
   array[5] <- 17
   array[6] <- 9
   array[7] <- 12
   array[8] <- 27
   array[9] <- 5

   // maior valor
   maior <- array[0]//iniciar com o valor do 1� array
   soma <- 0
   para i de 0 ate 9 faca
      soma <- soma + array[i]
      se array[i] > maior entao //caso o valor do array for maior que o anterior,
         maior <- array[i]   //o valor antigo � substituido
      fimse
   fimpara

   // media
   media <- soma / 10 //soma todos os valores e depois divide

   // deixar os valores em ordem crescente
   para i de 0 ate 9 faca
      para j de i+1 ate 9 faca
         se array[i] > array[j] entao //Se o valor de array[i] for maior que array[j] ent�o troca os valores
            temp <- array[i] //deixa temporariamente o valor de array[i] armazenado
            array[i] <- array[j]
            array[j] <- temp
         fimse
      fimpara
   fimpara

   //n�meros primos
   qtd_primos <- 0
   para i de 0 ate 9 faca
      cont <- 0
      para j de 0 ate array[i] faca
         se array[i] mod j = 0 entao  //Caso o array[i] for divis�vel por j, aumenta o contador cont
            cont <- cont + 1
         fimse
      fimpara
      
      se cont = 2 entao   //se o n�mero tiver exatamente dois divisores que seja 1 ou ele mesmo, ent�o � um n�mero primo
         qtd_primos <- qtd_primos + 1
         primos[qtd_primos] <- array[i] //deixa armazenado o valor do numero primo
      fimse
   fimpara

   // Saida
   escreval("Maior valor: ", maior)
   escreval("Media: ", media:0:1)
   escreva("Ordem crescente: ")
   Para i de 0 ate 9 faca
      escreva(array[i], " ")
   fimpara
   escreval()

   escreva("Primos: ")
   para i de 1 ate qtd_primos faca
      escreva(primos[i], " ")
   fimpara
   escreval()
   
FimAlgoritmo