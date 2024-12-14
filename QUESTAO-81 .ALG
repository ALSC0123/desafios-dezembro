algoritmo "questao-81 "

//Um cinema com 20 lugares, todos ocupados. Cada espectador respondeu:
//• sua idade • sua opinião (ótimo, bom, regular, ruim ou péssimo)
//Calcular e mostrar: a. quantidade de ótimos
//b. diferença percentual entre bom e regular
// c. média de idade de quem respondeu ruim
//d. porcentagem de péssimo e maior idade entre eles
//e. diferença de idade entre a maior idade que respondeu ótimo e a maior idade que respondeu ruim


var
   idade, totalIdadeRuim, maiorIdade, maiorIdadeOtimo, maiorIdadeRuim, maiorIdadePessimo: inteiro
   contOtimo, contBom, contRegular, contRuim, contPessimo, totalOtimo, totalRespostas: inteiro
   percBom, percRegular, percPessimo, mediaIdadeRuim, diferencaIdadeOtimoRuim: real
   i: inteiro
   opiniao: caractere

inicio
   // Iniciar as variaveis
   contOtimo <- 0
   contBom <- 0
   contRegular <- 0
   contRuim <- 0
   contPessimo <- 0
   totalIdadeRuim <- 0
   maiorIdadeOtimo <- 0
   maiorIdadeRuim <- 0
   maiorIdadePessimo <- 0
   maiorIdade <- 0
   totalRespostas <- 20

   escreval("Digite a idade e a opiniao dos 20 espectadores")
   para i de 1 ate 20 faca
      escreva("Idade: ")
      leia(idade)
      escreva("Opiniao: ")
      leia(opiniao)

      // idades geral
      se idade > maiorIdade entao
         maiorIdade <- idade
      fimse

      // quantidade de otimos
      se opiniao = "otimo" entao
         contOtimo <- contOtimo + 1
         se idade > maiorIdadeOtimo entao
            maiorIdadeOtimo <- idade
         fimse
      fimse

      //quantidade de bom
      se opiniao = "bom" entao
         contBom <- contBom + 1
      fimse

      //quantidade de regular
      se opiniao = "regular" entao
         contRegular <- contRegular + 1
      fimse

      //quantidade de ruim
      se opiniao = "ruim" entao
         contRuim <- contRuim + 1
         totalIdadeRuim <- totalIdadeRuim + idade
         se idade > maiorIdadeRuim entao
            maiorIdadeRuim <- idade
         fimse
      fimse

      //quantidade de pessimo
      se opiniao = "pessimo" entao
         contPessimo <- contPessimo + 1
         // Atualiza a maior idade de quem respondeu "pessimo"
         se idade > maiorIdadePessimo entao
            maiorIdadePessimo <- idade
         fimse
      fimse
   fimpara

   escreval("")

   // a. Quantidade de otimo
   escreval(contOtimo)

   // b. Diferenca percentual entre bom e regular
   percBom <- (contBom / totalRespostas) * 100
   percRegular <- (contRegular / totalRespostas) * 100
   escreval((percBom - percRegular), "%")

   // c. Media de idade de quem respondeu ruim
   se contRuim > 0 entao
      mediaIdadeRuim <- totalIdadeRuim / contRuim
      escreval(mediaIdadeRuim)
   senao
      escreval("0")
   fimse

   // d. porcentagem de pessimo e maior idade
   percPessimo <- (contPessimo / totalRespostas) * 100
   escreval(percPessimo, "%", maiorIdadePessimo)

   // f. Diferenca de idade entre maior idade "otimo" e maior idade "ruim"
   diferencaIdadeOtimoRuim <- maiorIdadeOtimo - maiorIdadeRuim
   escreval(diferencaIdadeOtimoRuim)

fimalgoritmo
