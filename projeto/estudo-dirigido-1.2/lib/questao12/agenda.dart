import './contato.dart';

class Agenda {
  List<Contato> _contatos;

  Agenda.vazia() : _contatos = [];

  Agenda.comContatos(this._contatos);

  void adicionarContato(Contato c) {
    _contatos.add(c);
  }

  void removerContatoPorNome(String nome) {
    _contatos.removeWhere((c) => c.nome == nome);
  }

  void listarContatos() {
    for (var c in _contatos) {
      print("${c.nome} - ${c.telefone}");
    }
  }
}