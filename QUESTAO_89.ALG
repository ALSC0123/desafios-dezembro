algoritmo "Questão 89"

//a. Ler M,N e matriz A
//Ler J,K e matriz B(J=N)
//c. Mostrar A*B(C MxK)
var
    M, N, Z, i, j, k: inteiro
    A: vetor[0..9, 0..9] de inteiro
    B: vetor[0..9, 0..9] de inteiro
    C: vetor[0..9, 0..9] de inteiro
    
inicio
    //Matriz A
    escreval("Matriz A: ")
    leia(M, N)

    escreval("")
    para i de 1 ate M faca
        para j de 1 ate N faca
            leia(A[i, j])
        fimpara
    fimpara

    //MAtriz B
    escreval("Matriz B: ")
    leia(j, Z)
    escreval("")
    para i de 1 ate j faca
        para j de 1 ate Z faca
            leia(B[i, j])
        fimpara
    fimpara

    // Multiplicação das Matrizes
    para i de 1 ate M faca
        para j de 1 ate Z faca
            para k de 1 ate N faca
                C[i, j] <- C[i, j] + A[i, k] * B[k, j]
            fimpara
        fimpara
    fimpara

    //
    escreval("")
    para i de 1 ate M faca
        para j de 1 ate Z faca
            escreva(C[i, j], " ")
        fimpara
        escreval("")
    fimpara

fimalgoritmo