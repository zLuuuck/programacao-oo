import 'dart:io';

import '../model/contato.dart';

/// VIEW
///
/// A View é responsável pela interação com o usuário.
/// Neste projeto, isso significa:
/// - mostrar mensagens no terminal;
/// - exibir o menu;
/// - ler informações digitadas pelo usuário.
///
/// A View não deve decidir regras importantes do sistema.
/// Ela apenas mostra e coleta dados.
class ContatoView {
  /// Exibe o menu principal da agenda.
  void exibirMenu() {
    print('');
    print('=== Agenda de Contatos ===');
    print('1) Registrar contato');
    print('2) Listar contatos');
    print('3) Atualizar contato');
    print('4) Deletar contato');
    print('9) Sair');
    print('');
  }

  /// Lê a opção escolhida pelo usuário.
  ///
  /// `stdin.readLineSync()` sempre retorna uma String ou null.
  /// Por isso usamos `int.tryParse`, que tenta converter o texto para inteiro.
  /// Se a conversão falhar, retornamos -1 para indicar uma opção inválida.
  int lerOpcao() {
    stdout.write('Escolha uma opção: ');
    final entrada = stdin.readLineSync();

    return int.tryParse(entrada ?? '') ?? -1;
  }

  /// Lê os dados de um contato e devolve um objeto `Contato` pronto.
  Contato lerContato() {
    final nome = _lerTextoObrigatorio('Nome');
    final telefone = _lerTextoObrigatorio('Telefone');

    return Contato(nome: nome, telefone: telefone);
  }

  /// Lê o número do contato escolhido pelo usuário.
  ///
  /// Na tela, mostramos os contatos começando em 1.
  /// Internamente, listas em Dart começam em 0.
  /// Por isso subtraímos 1 antes de devolver o índice.
  int lerIndiceContato() {
    stdout.write('Digite o número do contato: ');
    final entrada = stdin.readLineSync();
    final numeroInformado = int.tryParse(entrada ?? '');

    if (numeroInformado == null) {
      return -1;
    }

    return numeroInformado - 1;
  }

  /// Exibe todos os contatos cadastrados.
  ///
  /// O parâmetro recebido é uma lista de contatos.
  /// A View apenas mostra essa lista, sem alterar seus dados.
  void exibirContatos(List<Contato> contatos) {
    if (contatos.isEmpty) {
      print('Nenhum contato cadastrado.');
      return;
    }

    print('');
    print('--- Contatos cadastrados ---');

    for (var i = 0; i < contatos.length; i++) {
      print('${i + 1}) ${contatos[i]}');
    }
  }

  /// Exibe uma mensagem genérica.
  ///
  /// Este método evita espalhar vários `print` pelo Controller.
  void exibirMensagem(String mensagem) {
    print(mensagem);
  }

  /// Exibe uma mensagem para opções que não existem no menu.
  void exibirOpcaoInvalida() {
    print('Opção inválida. Tente novamente.');
  }

  /// Exibe uma mensagem para quando o usuário escolher um contato inexistente.
  void exibirContatoNaoEncontrado() {
    print('Contato não encontrado. Verifique o número informado.');
  }

  /// Método auxiliar privado para ler textos obrigatórios.
  ///
  /// O underline antes do nome indica que o método é privado no arquivo.
  /// Assim, ele só deve ser usado dentro desta View.
  String _lerTextoObrigatorio(String campo) {
    while (true) {
      stdout.write('$campo: ');
      final valor = stdin.readLineSync()?.trim() ?? '';

      if (valor.isNotEmpty) {
        return valor;
      }

      print('$campo não pode ficar vazio.');
    }
  }
}
