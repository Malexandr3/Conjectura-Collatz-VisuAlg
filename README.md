# Conjectura de Collatz em Portugol (VisuAlg)

## 🏛️ Universidade Estadual do Maranhão - UEMA  
**Curso:** Engenharia da Computação  
**Disciplina:** Matemática Discreta  
**Período:** 2025.2  
**Professor:** Daniel Gusmão Pereira  

**Autor:** Marcos Alexandre Araújo Gonçalves  
**Local:** São Luís - MA  
**Ano:** 2025  

---

## 📘 Introdução

Este projeto tem como objetivo demonstrar a aplicação da **Conjectura de Collatz** utilizando a linguagem **Portugol** no ambiente **VisuAlg**.  
A conjectura, proposta por **Lothar Collatz em 1937**, é um problema matemático simples em aparência, mas ainda sem solução geral comprovada.  

A implementação em VisuAlg busca **ilustrar o comportamento da conjectura** e a lógica envolvida no processo iterativo.

---

## 📖 Definição da Conjectura de Collatz

A **Conjectura de Collatz** afirma que, ao escolher um número natural `n` e aplicar repetidamente duas regras específicas, o resultado final será sempre **1**:

- Se o número atual for **par**, ele deve ser **dividido por 2**;  
- Se for **ímpar**, multiplica-se o número por **3** e soma-se **1** ao resultado.  

Esse processo é repetido até que o número alcance o valor **1**.

---

## 💻 Explicação do Código

A linguagem utilizada foi **Portugol**, e o código foi construído no **VisuAlg**.

### 🔹 Linhas 1–12  
- Definição dos tipos das variáveis:  
  - `numero` e `resultadoFinal`: vetores do tipo **inteiro**, com posições de `1 até 999`, permitindo testar grandes valores.  
  - `resultado`: variável intermediária usada nos cálculos.  
  - `numeroinicial`: armazena o valor inicial do número testado.  
  - `i`: usada no laço **para**.  
  - `n`: representa o valor máximo do intervalo de teste.  
  - `igualUm`: variável **lógica** (VERDADEIRO ou FALSO).  

### 🔹 Linhas 13–20  
Início do programa.  
O código exibe instruções ao usuário com `escreval` e lê o valor de `n`, que define o **universo de trabalho**.

### 🔹 Linhas 22–30  
Define o intervalo de teste de **1 até n**.  
Exemplo: se o usuário digitar `10`, o programa testará os números de `1` a `10`.

### 🔹 Linhas 31–58  
- Utiliza a estrutura `para` para incrementar `i` automaticamente.  
- Para cada número, define `resultado` e `numeroinicial`.  
- Exibe mensagem indicando que está testando a conjectura do número atual.  
- Usa a estrutura `enquanto resultado > 1` para aplicar as regras da conjectura:
  - Se `resultado % 2 == 0`, divide por 2 utilizando `div` (para manter tipo inteiro).  
  - Caso contrário, calcula `resultado = resultado * 3 + 1`.  
- Ao final, escreve o resultado final e armazena em `resultadoFinal[i]`.

### 🔹 Linhas 60–71  
- Define `igualUm` como **VERDADEIRO**.  
- Verifica se algum valor de `resultadoFinal[i]` é diferente de 1.  
  - Caso positivo, define `igualUm = FALSO`.  
- Exibe mensagem final indicando se todos os números testados resultaram em 1.  
- Finaliza com `Fimalgoritmo`.

---

## 🧮 Código em Portugol

```portugol
Algoritmo "Conjectura Collatz"
// Disciplina   : Matemática Discreta
// Descrição    : Programa que automatiza a verificação da Conjectura de Collatz
// Autor(a)     : Marcos Alexandre
// Data atual   : 2025

Var
   numero, resultadoFinal: Vetor [1..999] de inteiro
   resultado, numeroinicial, i, n: inteiro
   igualUm: logico

Inicio
   escreval("=== Conjectura de Collatz ===")
   escreval("Digite até qual número deseja testar: ")
   leia(n)

   para i de 1 ate n faca
      numero[i] <- i
   fimpara

   para i de 1 ate n faca
      resultado <- numero[i]
      numeroinicial <- resultado
      escreval("Realizando a conjectura do número: ", numeroinicial)
      
      enquanto resultado > 1 faca
         se resultado % 2 = 0 entao
            resultado <- resultado div 2
         senao
            resultado <- resultado * 3 + 1
         fimse
      fimenquanto

      escreval("Resultado final do número ", numeroinicial, ": ", resultado)
      resultadoFinal[i] <- resultado
   fimpara

   igualUm <- verdadeiro

   para i de 1 ate n faca
      se resultadoFinal[i] <> 1 entao
         igualUm <- falso
      fimse
   fimpara

   se igualUm entao
      escreval("Todos os números de 1 até ", n, " resultaram em 1.")
   senao
      escreval("Algum número não resultou em 1.")
   fimse

Fimalgoritmo
```

---

## 🧩 Conclusão

Através da implementação da **Conjectura de Collatz** no **VisuAlg**, foi possível observar seu funcionamento de forma lógica e automatizada.  
O projeto demonstra a importância da **computação na matemática**, evidenciando como ela simplifica e automatiza processos que seriam inviáveis manualmente.

---

## ⚙️ Tecnologias Utilizadas

- [VisuAlg](https://visualg3.com.br/)  
- Linguagem: **Portugol**  
- Conceito matemático: **Conjectura de Collatz (1937)**

---

## 📂 Estrutura do Projeto

```
📁 Conjectura-Collatz/
│
├── 📄 README.md
├── 📜 ConjecturaCollatz.alg
└── 📄 Conjectura Collatz - Resultado até 31.txt
```

---

## 🧠 Referência

> Lothar Collatz (1937) — Proposição matemática conhecida como **Problema 3x + 1**.
