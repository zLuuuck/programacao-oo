import 'dart:io';

import '../model/livro.dart';
import '../model/usuario.dart';

class BibliotecaView {
  void exibirMenu() {
    print('');
    print('=== Sistema de Biblioteca ===');
    print('1 - Cadastrar livro disponível');
    print('2 - Listar livros emprestados');
    print('3 - Cadastrar usuário');
    print('4 - Listar usuários');
    print('5 - Emprestar livro');
    print('6 - Devolver livro');
    print('9 - Sair');
    print('');
  }

  int lerOpcao() {
    stdout.write('Escolha uma opção: ');
    final entrada = stdin.readLineSync();
    return int.tryParse(entrada ?? '') ?? -1;
  }

  Livro lerLivro() {
    final titulo = _lerTextoObrigatorio('Título');
    final autor = _lerTextoObrigatorio('Autor');
    return Livro(titulo: titulo, autor: autor);
  }

  Usuario lerUsuario() {
    final nome = _lerTextoObrigatorio('Nome');
    final matricula = _lerTextoObrigatorio('Matrícula');
    return Usuario(nome: nome, matricula: matricula);
  }

  int lerIndice(String label) {
    stdout.write('$label: ');
    final entrada = stdin.readLineSync();
    final numero = int.tryParse(entrada ?? '');
    if (numero == null) return -1;
    return numero - 1;
  }

  void exibirLivros(List<Livro> livros, {bool apenasDisponiveis = false}) {
    if (livros.isEmpty) {
      print('Nenhum livro encontrado.');
      return;
    }

    print('');
    print('--- Livros ---');
    for (var i = 0; i < livros.length; i++) {
      print('${i + 1}) ${livros[i]}');
    }
  }

  void exibirUsuarios(List<Usuario> usuarios) {
    if (usuarios.isEmpty) {
      print('Nenhum usuário cadastrado.');
      return;
    }

    print('');
    print('--- Usuários cadastrados ---');
    for (var i = 0; i < usuarios.length; i++) {
      print('${i + 1}) ${usuarios[i]}');
    }
  }

  void exibirMensagem(String mensagem) {
    print(mensagem);
  }

  void exibirOpcaoInvalida() {
    print('Opção inválida. Tente novamente.');
  }

  String _lerTextoObrigatorio(String campo) {
    while (true) {
      stdout.write('$campo: ');
      final valor = stdin.readLineSync()?.trim() ?? '';
      if (valor.isNotEmpty) return valor;
      print('$campo não pode ficar vazio.');
    }
  }
}
