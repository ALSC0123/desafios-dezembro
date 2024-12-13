Algoritmo "Media_Mediana"

//leia um vetor de 10 numeros inteiros, calcule a media e a mediana desses valores,
//e mostre quantos valores estao acima da media e quantos estao abaixo da mediana
Var
    veto: vetor[0..9] de inteiro
    soma, acimaMedia, abaixoMediana, i, j, temp: inteiro
    media, mediana: real
Inicio

    escreval("")
    para i de 0 ate 9 faca
        leia(veto[i])
    fimpara

    soma <- 0
    para i de 0 ate 9 faca
        soma <- soma + veto[i]
    fimpara
    media <- soma / 10

    para i de 0 ate 8 faca
        para j de i+1 ate 9 faca
            se veto[i] > veto[j] entao
                temp <- veto[i]
                veto[i] <- veto[j]
                veto[j] <-temp
            fimse
        fimpara
    fimpara

    mediana <- (veto[4] + veto[5]) / 2

    acimaMedia <- 0
    para i de 0 ate 9 faca
        se veto[i] > media entao
            acimaMedia <- acimaMedia + 1
        fimse
    fimpara

    abaixoMediana <- 0
    para i de 0 ate 9 faca
        se veto[i] < mediana entao
            abaixoMediana <- abaixoMediana + 1
        fimse
    fimpara

    escreval("Média: ", media)
    escreval("Mediana: ", mediana)
    escreval("Valores acima da média: ", acimaMedia)
    escreval("Valores abaixo da mediana: ", abaixoMediana)
    
Fimalgoritmo