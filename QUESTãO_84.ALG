algoritmo "quest�o_84"

//Embaralhar elementos distintos, por exemplo 0 a 51 em um vetor de 52 posi��es.
//a. Gera n�meros aleat�rios sem repeti��o e preencher o vetor.
//b. Teste com valor maior e observe o tempo.
//c. Conceba algoritmo mais eficiente.

var
    veto: vetor[0..51] de inteiro
    i, j, temp, N : inteiro

inicio
    //pedir para informar o numero
    escreva("N= ")
    leia(N)

    // come�ar o vetor com valores de 0 a N-1
    para i de 0 ate N-1 faca
        veto[i] <- i
    fimpara

    // Embaralhar os vetores
    para i de 0 ate N-1 faca
        // Gera um numero "aleat�rio" entre i e N-1
        j <- (i + (i * 2)) mod N  // Simula��o de um valor aleatorio

        // Troca os valores entre as posi��es i e j
        temp <- veto[i]
        veto[i] <- veto[j]
        veto[j] <- temp
    fimpara

    // saida
    escreva("Vetor embaralhado: ")
    para i de 0 ate N-1 faca
        escreva(veto[i], " ")
    fimpara
    escreval("")
    
fimalgoritmo

