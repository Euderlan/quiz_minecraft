# Quiz Minecraft: Desafio do Overworld

Jogo interativo de perguntas e respostas (quiz) desenvolvido em **Dart** para execução no terminal, com o tema **Minecraft**. O projeto apresenta 10 questões sobre mecânicas, itens, dimensões e criaturas do jogo, com mensagens personalizadas e embaralhamento da ordem das perguntas a cada partida.

---

## Identificação
* **Projeto:** Quiz Minecraft: Desafio do Overworld (`quiz_minecraft`)
* **Integrante:** Euderlan Freire da Silva Abreu
* **Trilha:** Desenvolvimento mobeli

---

## Apresentação do Quiz

O **Quiz Minecraft: Desafio do Overworld** recebe o jogador pelo nome, exibe as perguntas armazenadas em lista utilizando uma estrutura de repetição `for`, valida as respostas (aceitando letras maiúsculas e minúsculas e bloqueando entradas inválidas ou vazias) e, ao final, mostra a pontuação obtida junto com uma mensagem personalizada de acordo com o desempenho.

* **Tema escolhido:** Minecraft (ferramentas, portais, criaturas, dimensões, alquimia e chefes).
* **Funcionalidade extra incluída:** Embaralhamento automático da ordem das perguntas a cada execução (`List.of(perguntasMinecraft)..shuffle()`).

### Exemplo de pergunta

```text
-------------------------------------------------
Pergunta 1 de 10:
Qual ferramenta é necessária para minerar minério de Diamante e obter o item?

  A) Picareta de Pedra
  B) Picareta de Ferro
  C) Picareta de Ouro
  D) Pá de Diamante

Sua resposta (A, B, C ou D): B

[ACERTOU] Mandou bem, Euderlan! Com a picareta de ferro você garante seu diamante sem desperdício.
```

### Como Executar

**1. Abra o terminal e navegue até a pasta do projeto:**
```text
cd quiz_minecraft
```
**2. Execute o jogo com o comando:**
```text
cd quiz_minecraft
```

## Uso de Inteligência Artificial (IA)

Utilizei a IA como apoio para ter ideias iniciais, organizar a separação dos arquivos em bin/ e lib/, estruturar a validação das respostas e o embaralhamento das perguntas em Dart. Adaptei as mensagens temáticas e os textos às minhas preferências.



