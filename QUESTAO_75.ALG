algoritmo "questao_75"

//Escreva um programa para:
//a. pedir 10 n�meros ao usu�rio e armazenar esses valores em um array
//b. pedir outro n�mero ao usu�rio e calcular quantos n�meros do array s�o inferiores a esse. n�mero

var

    veto: vetor[0..9] de inteiro
    numero_extra, i, contador: inteiro
inicio

    escreval("Digite 10 n�meros:") //pedir para que informe os 10 numeros
    para i de 0 ate 9 faca
        escreva(" ", i, )
        leia(veto[i])
    fimpara

    // N�mero adicional
    escreva("")
    leia(numero_extra)

    // Contar os n�meros menores que o n�mero adicionado
    contador <- 0
    para i de 0 ate 9 faca
        se veto[i] < numero_extra entao
            contador <- contador + 1
        fimse
    fimpara

    escreval(" ")
    // saida com a quantidade de n�meros menores
    escreval(" ", contador)
fimalgoritmo