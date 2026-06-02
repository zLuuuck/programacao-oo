import '../model/contato.dart';
import '../view/contato_view.dart';

/// CONTROLLER
///
/// O Controller faz a ligação entre Model e View.
/// Ele recebe comandos do usuário pela View, aplica as regras do sistema
/// e atualiza os dados guardados no Model.
///
/// Neste exemplo, a lista `_contatos` funciona como um banco de dados em memória.
/// Quando o programa é encerrado, os contatos são perdidos.
class ContatoController {
  /// A View é usada para mostrar mensagens e ler dados do usuário.
  final ContatoView _view = ContatoView();

  /// Lista que armazena os contatos cadastrados.
  ///
  /// Usamos `List<Contato>` para deixar claro que esta lista só aceita
  /// objetos do tipo `Contato`.
  final List<Contato> _contatos = [];

  /// Inicia o fluxo principal da aplicação.
  ///
  /// Enquanto o usuário não escolher a opção 9, o menu continua aparecendo.
  void executar() {
    var terminou = false;

    while (!terminou) {
      _view.exibirMenu();
      final opcao = _view.lerOpcao();

      switch (opcao) {
        case 1:
          _registrarContato();
          break;

        case 2:
          _listarContatos();
          break;

        case 3:
          _atualizarContato();
          break;

        case 4:
          _deletarContato();
          break;

        case 9:
          terminou = true;
          _view.exibirMensagem('Programa encerrado.');
          break;

        default:
          _view.exibirOpcaoInvalida();
      }
    }
  }

  /// Cadastra um novo contato.
  ///
  /// A View coleta os dados e o Controller decide adicioná-los à lista.
  void _registrarContato() {
    final contato = _view.lerContato();
    _contatos.add(contato);

    _view.exibirMensagem('Contato cadastrado com sucesso.');
  }

  /// Lista todos os contatos cadastrados.
  void _listarContatos() {
    _view.exibirContatos(_contatos);
  }

  /// Atualiza um contato existente.
  ///
  /// Primeiro mostramos os contatos, depois pedimos o número do contato
  /// e por fim substituímos o contato antigo pelo novo.
  void _atualizarContato() {
    if (_contatos.isEmpty) {
      _view.exibirMensagem('Não há contatos para atualizar.');
      return;
    }

    _view.exibirContatos(_contatos);
    final indice = _view.lerIndiceContato();

    if (!_indiceValido(indice)) {
      _view.exibirContatoNaoEncontrado();
      return;
    }

    final contatoAtualizado = _view.lerContato();
    _contatos[indice] = contatoAtualizado;

    _view.exibirMensagem('Contato atualizado com sucesso.');
  }

  /// Remove um contato da lista.
  void _deletarContato() {
    if (_contatos.isEmpty) {
      _view.exibirMensagem('Não há contatos para deletar.');
      return;
    }

    _view.exibirContatos(_contatos);
    final indice = _view.lerIndiceContato();

    if (!_indiceValido(indice)) {
      _view.exibirContatoNaoEncontrado();
      return;
    }

    final contatoRemovido = _contatos.removeAt(indice);
    _view.exibirMensagem('Contato removido: $contatoRemovido');
  }

  /// Verifica se o índice informado existe na lista de contatos.
  bool _indiceValido(int indice) {
    return indice >= 0 && indice < _contatos.length;
  }
}
