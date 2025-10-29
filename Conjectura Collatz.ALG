Algoritmo "Conjectura Collatz"
// Disciplina   : Matemática Discreta
// Descrição    : Automatização da verificação da Conjectura de Collatz
// Autor(a)     : Marcos Alexandre
// Data atual   : 28/10/2025

Var
   numero, resultadoFinal: vetor [1..999] de inteiro
   resultado, numeroinicial: inteiro
   i, n: inteiro
   igualUm: logico

Inicio
   escreval("-------------------------")
   escreval("Conjectura de Collatz")
   escreval("-------------------------")

   escreval("Digite até qual número você deseja testar, por favor: ")
   escreval("O universo analisado será de 1 até o número escolhido.")
   leia(n)

   // Colocando os números do universo em um vetor
   para i de 1 ate n faca
      numero[i] <- i
   fimpara

   escreval(" ")
   escreval("Realizando os cálculos, por favor aguarde...")
   escreval("------------------------------")

   // Aplicação da Conjectura de Collatz
   para i de 1 ate n faca
      resultado <- numero[i]
      numeroinicial <- numero[i]

      escreval(" ")
      escreval("Realizando a conjectura para o número: ", resultado)
      escreval("------------------------------")

      enquanto (resultado > 1) faca
         se (resultado % 2 = 0) entao
            escreval(">> O ", resultado, " é par.")
            escreva(">> Logo, ", resultado, " / 2 resulta em: ")
            resultado <- resultado div 2
            escreval(resultado)
         senao
            escreval(">> O ", resultado, " é ímpar.")
            escreva(">> Logo, (", resultado, " x 3) + 1 resulta em: ")
            resultado <- (resultado * 3) + 1
            escreval(resultado)
         fimse
      fimenquanto

      escreval(" ")
      escreval(">> Sendo ", resultado, " o resultado final da conjectura do número ", numeroinicial)
      escreval("------------------------------")
      resultadoFinal[i] <- resultado
   fimpara

   // Verificação final
   igualUm <- verdadeiro
   para i de 1 ate n faca
      se (resultadoFinal[i] <> 1) entao
         igualUm <- falso
      fimse
   fimpara

   escreval(" ")
   escreval("Conclusão: É ", igualUm, " que todos os números até ", n, " resultam em 1.")
Fimalgoritmo
