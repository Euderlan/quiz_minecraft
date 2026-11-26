import 'package:quiz_minecraft/dados_quiz.dart';
import 'package:quiz_minecraft/entrada_usuario.dart';
import 'package:quiz_minecraft/interface_quiz.dart';

void main() {
  exibirBoasVindas();

  final String nomeJogador = lerNomeJogador();
  print('\nÓtimo te ver por aqui, $nomeJogador! Prepare seu inventário.\n');

  int acertos = 0;
  final int totalPerguntas = perguntasMinecraft.length;

  for (int i = 0; i < totalPerguntas; i++) {
    final pergunta = perguntasMinecraft[i];

    exibirPergunta(pergunta, i, totalPerguntas);

    final String escolha = lerAlternativaValida();
    final bool acertou = escolha == pergunta.respostaCorreta;

    if (acertou) {
      acertos++;
    }

    exibirResultadoResposta(
      acertou: acertou,
      pergunta: pergunta,
      nomeJogador: nomeJogador,
    );
  }

  exibirResultadoFinal(
    nomeJogador: nomeJogador,
    acertos: acertos,
    totalPerguntas: totalPerguntas,
  );
}