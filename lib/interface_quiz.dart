import 'dados_quiz.dart';
import 'pergunta.dart';

void exibirBoasVindas() {
  print('=================================================');
  print('        QUIZ MINECRAFT: DESAFIO DO OVERWORLD');
  print('=================================================');
  print(
      'Bem-vindo(a)! Teste seus conhecimentos sobre blocos, dimensões, mobs e sobrevivência.\n');
}

void exibirPergunta(Pergunta pergunta, int indice, int total) {
  print('-------------------------------------------------');
  print('Pergunta ${indice + 1} de $total:');
  print(pergunta.enunciado);
  print('');

  pergunta.alternativas.forEach((letra, texto) {
    print('  $letra) $texto');
  });
  print('');
}

void exibirResultadoResposta({
  required bool acertou,
  required Pergunta pergunta,
  required String nomeJogador,
}) {
  if (acertou) {
    final String msg = pergunta.mensagemAcerto.replaceAll('{nome}', nomeJogador);
    print('\n[ACERTOU] $msg\n');
  } else {
    final String msg = pergunta.mensagemErro.replaceAll('{nome}', nomeJogador);
    print('\n[ERROU] $msg\n');
  }
}

void exibirResultadoFinal({
  required String nomeJogador,
  required int acertos,
  required int totalPerguntas,
}) {
  print('=================================================');
  print('                 FIM DA PARTIDA');
  print('=================================================');
  print('Jogador: $nomeJogador');
  print('Pontuação final: $acertos de $totalPerguntas perguntas corretas.');
  print(mensagemFinalPorDesempenho(nomeJogador, acertos, totalPerguntas));
  print('=================================================');
}