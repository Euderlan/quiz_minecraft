import 'dart:io';

const Set<String> _opcoesValidas = {'A', 'B', 'C', 'D'};

String lerNomeJogador() {
  while (true) {
    stdout.write('Digite o seu nome para começar a aventura: ');
    final String? entrada = stdin.readLineSync();
    final String nome = (entrada ?? '').trim();

    if (nome.isNotEmpty) {
      return nome;
    }

    print('Ops! O nome não pode ficar vazio. Digite novamente.\n');
  }
}

String lerAlternativaValida() {
  while (true) {
    stdout.write('Sua resposta (A, B, C ou D): ');
    final String? entrada = stdin.readLineSync();
    final String resposta = (entrada ?? '').trim().toUpperCase();

    if (_opcoesValidas.contains(resposta)) {
      return resposta;
    }

    print(
        'Entrada inválida! Digite apenas A, B, C ou D (maiúscula ou minúscula).\n');
  }
}