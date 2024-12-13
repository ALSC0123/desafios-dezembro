algoritmo "questao_75"

//Escreva um programa para:
//a. pedir 10 números ao usuário e armazenar esses valores em um array
//b. pedir outro número ao usuário e calcular quantos números do array são inferiores a esse. número

var

    veto: vetor[0..9] de inteiro
    numero_extra, i, contador: inteiro
inicio

    escreval("Digite 10 números:") //pedir para que informe os 10 numeros
    para i de 0 ate 9 faca
        escreva(" ", i, )
        leia(veto[i])
    fimpara

    // Número adicional
    escreva("")
    leia(numero_extra)

    // Contar os números menores que o número adicionado
    contador <- 0
    para i de 0 ate 9 faca
        se veto[i] < numero_extra entao
            contador <- contador + 1
        fimse
    fimpara

    escreval(" ")
    // saida com a quantidade de números menores
    escreval(" ", contador)
fimalgoritmo