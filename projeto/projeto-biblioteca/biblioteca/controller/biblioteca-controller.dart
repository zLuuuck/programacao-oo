import '../model/livro.dart';
import '../model/usuario.dart';
import '../view/biblioteca_view.dart';

/// CONTROLLER
///
/// Controla o fluxo da aplicação.
/// Armazena as listas de livros e usuários e executa as operações do sistema.
class BibliotecaController {
  final BibliotecaView _view = BibliotecaView();

  final List<Livro> _livros = [];
  final List<Usuario> _usuarios = [];

  void executar() {
    var terminou = false;

    while (!terminou) {
      _view.exibirMenu();
      final opcao = _view.lerOpcao();

      switch (opcao) {
        case 1:
          _cadastrarLivro();
          break;
        case 2:
          _listarLivrosEmprestados();
          break;
        case 3:
          _cadastrarUsuario();
          break;
        case 4:
          _listarUsuarios();
          break;
        case 5:
          _emprestarLivro();
          break;
        case 6:
          _devolverLivro();
          break;
        case 9:
          terminou = true;
          _view.exibirMensagem('Sistema encerrado.');
          break;
        default:
          _view.exibirOpcaoInvalida();
      }
    }
  }

  void _cadastrarLivro() {
    final livro = _view.lerLivro();
    _livros.add(livro);
    _view.exibirMensagem('Livro cadastrado com sucesso.');
  }

  void _listarLivrosEmprestados() {
    final emprestados = _livros.where((l) => l.estaEmprestado).toList();

    if (emprestados.isEmpty) {
      _view.exibirMensagem('Nenhum livro emprestado no momento.');
      return;
    }

    _view.exibirLivros(emprestados);
  }

  void _cadastrarUsuario() {
    final usuario = _view.lerUsuario();
    _usuarios.add(usuario);
    _view.exibirMensagem('Usuário cadastrado com sucesso.');
  }

  void _listarUsuarios() {
    _view.exibirUsuarios(_usuarios);
  }

  void _emprestarLivro() {
    final disponiveis = _livros.where((l) => !l.estaEmprestado).toList();

    if (disponiveis.isEmpty) {
      _view.exibirMensagem('Nenhum livro disponível para empréstimo.');
      return;
    }

    if (_usuarios.isEmpty) {
      _view.exibirMensagem('Nenhum usuário cadastrado. Cadastre um usuário primeiro.');
      return;
    }

    _view.exibirLivros(disponiveis);
    final indiceLivro = _view.lerIndice('Digite o número do livro');

    if (!_indiceValido(indiceLivro, disponiveis.length)) {
      _view.exibirMensagem('Livro não encontrado. Verifique o número informado.');
      return;
    }

    _view.exibirUsuarios(_usuarios);
    final indiceUsuario = _view.lerIndice('Digite o número do usuário');

    if (!_indiceValido(indiceUsuario, _usuarios.length)) {
      _view.exibirMensagem('Usuário não encontrado. Verifique o número informado.');
      return;
    }

    final livro = disponiveis[indiceLivro];
    final usuario = _usuarios[indiceUsuario];

    livro.estaEmprestado = true;
    livro.nomeUsuario = usuario.nome;

    _view.exibirMensagem('Livro "${livro.titulo}" emprestado para ${usuario.nome}.');
  }

  void _devolverLivro() {
    final emprestados = _livros.where((l) => l.estaEmprestado).toList();

    if (emprestados.isEmpty) {
      _view.exibirMensagem('Nenhum livro emprestado para devolver.');
      return;
    }

    _view.exibirLivros(emprestados);
    final indice = _view.lerIndice('Digite o número do livro a devolver');

    if (!_indiceValido(indice, emprestados.length)) {
      _view.exibirMensagem('Livro não encontrado. Verifique o número informado.');
      return;
    }

    final livro = emprestados[indice];
    livro.estaEmprestado = false;
    livro.nomeUsuario = null;

    _view.exibirMensagem('Livro "${livro.titulo}" devolvido com sucesso.');
  }

  bool _indiceValido(int indice, int tamanho) {
    return indice >= 0 && indice < tamanho;
  }
}
