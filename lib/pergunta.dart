class Pergunta {
  final String enunciado;
  final Map<String, String> alternativas;
  final String respostaCorreta;
  final String mensagemAcerto;
  final String mensagemErro;

  const Pergunta({
    required this.enunciado,
    required this.alternativas,
    required this.respostaCorreta,
    required this.mensagemAcerto,
    required this.mensagemErro,
  });
}