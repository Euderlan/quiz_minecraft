import 'pergunta.dart';

const List<Pergunta> perguntasMinecraft = [
  Pergunta(
    enunciado:
        'Qual ferramenta é necessária para minerar minério de Diamante e obter o item?',
    alternativas: {
      'A': 'Picareta de Pedra',
      'B': 'Picareta de Ferro',
      'C': 'Picareta de Ouro',
      'D': 'Pá de Diamante',
    },
    respostaCorreta: 'B',
    mensagemAcerto:
        'Mandou bem, {nome}! Com a picareta de ferro você garante seu diamante sem desperdício.',
    mensagemErro:
        'Quase lá, {nome}! A resposta certa é B — picaretas de pedra e ouro não coletam diamante.',
  ),
  Pergunta(
    enunciado: 'Qual item é usado para acender um portal para o Nether?',
    alternativas: {
      'A': 'Pederneira e Aço (Isqueiro)',
      'B': 'Pó de Redstone',
      'C': 'Olho do Ender',
      'D': 'Vara de Blaze',
    },
    respostaCorreta: 'A',
    mensagemAcerto:
        'Boa, {nome}! Um clique de pederneira na obsidiana e o portal se abre.',
    mensagemErro:
        'Não foi dessa vez, {nome}! A alternativa correta é A (Pederneira e Aço).',
  ),
  Pergunta(
    enunciado:
        'Qual criatura explode quando chega perto do jogador sem fazer barulho de ataque antes?',
    alternativas: {
      'A': 'Esqueleto',
      'B': 'Creeper',
      'C': 'Enderman',
      'D': 'Zumbi',
    },
    respostaCorreta: 'B',
    mensagemAcerto:
        'Reflexo rápido, {nome}! Você identificou o clássico Creeper antes do "sssss".',
    mensagemErro:
        'Cuidado nas costas, {nome}! A resposta certa é B (Creeper).',
  ),
  Pergunta(
    enunciado: 'Qual item é necessário para domesticar um lobo no Minecraft?',
    alternativas: {
      'A': 'Peixe Cru',
      'B': 'Cenoura',
      'C': 'Osso',
      'D': 'Maçã Dourada',
    },
    respostaCorreta: 'C',
    mensagemAcerto:
        'Isso aí, {nome}! Dando ossos, o lobo vira seu companheiro fiel.',
    mensagemErro:
        'Quase, {nome}! A alternativa correta é C — lobos são domesticados com Osso.',
  ),
  Pergunta(
    enunciado: 'Qual dimensão é o lar do chefe Ender Dragon?',
    alternativas: {
      'A': 'Nether',
      'B': 'Overworld',
      'C': 'The End',
      'D': 'Cavernas Profundas',
    },
    respostaCorreta: 'C',
    mensagemAcerto: 'Lendário, {nome}! O Ender Dragon domina o The End.',
    mensagemErro:
        'Errou a dimensão, {nome}! A resposta certa é C (The End).',
  ),
  Pergunta(
    enunciado:
        'Quantos blocos de Obsidiana formam a estrutura padrão de um portal do Nether (sem contar os cantos)?',
    alternativas: {
      'A': '8 blocos',
      'B': '10 blocos',
      'C': '12 blocos',
      'D': '14 blocos',
    },
    respostaCorreta: 'B',
    mensagemAcerto:
        'Matemática de veterano, {nome}! São 4 de altura de cada lado e 2 no topo/base = 10 blocos.',
    mensagemErro:
        'Por pouco, {nome}! A alternativa correta é B (10 blocos na estrutura clássica sem os cantos).',
  ),
  Pergunta(
    enunciado:
        'Qual item permite teleportar o jogador a uma curta distância ao ser arremessado?',
    alternativas: {
      'A': 'Pérola do Ender (Ender Pearl)',
      'B': 'Bola de Slime',
      'C': 'Flecha Espectral',
      'D': 'Ovo',
    },
    respostaCorreta: 'A',
    mensagemAcerto:
        'Teletransporte ativado, {nome}! A Pérola do Ender manda você direto para onde caiu.',
    mensagemErro:
        'Não deu para teleportar dessa vez, {nome}! A resposta certa é A (Pérola do Ender).',
  ),
];

String mensagemFinalPorDesempenho(String nome, int acertos, int total) {
  final double aproveitamento = total == 0 ? 0 : acertos / total;

  if (aproveitamento == 1.0) {
    return 'MESTRE DO MINECRAFT, $nome! Você zerou o quiz com precisão de espada de Netherite encantada!';
  } else if (aproveitamento >= 0.7) {
    return 'Excelente aventura, $nome! Você já manda muito bem na sobrevivência e está pronto para encarar o Nether.';
  } else if (aproveitamento >= 0.4) {
    return 'Bom começo, $nome! Dá para sobreviver às primeiras noites, mas vale explorar mais algumas cavernas.';
  } else {
    return 'Cuidado com os Creepers, $nome! Parece que você ainda está na primeira noite socando árvore. Tente novamente!';
  }
}