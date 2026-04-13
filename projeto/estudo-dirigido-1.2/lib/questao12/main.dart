import './agenda.dart';
import 'contato.dart';

void main() {
  var agenda1 = Agenda.vazia();
  agenda1.adicionarContato(Contato("Lucas", "123"));

  var lista = [Contato("Douglas", "999")];
  var agenda2 = Agenda.comContatos(lista);
  agenda2.adicionarContato(Contato("Caio", "123"));


  agenda1.listarContatos();
  agenda2.listarContatos();
}

// a) Qual é a diferença prática entre criar uma agenda vazia e criar uma agenda já com contatos?
// agenda vazia -> vai criar uma lista vazia, nova, sem dados.
// quando usamos agenda com contatos, utilizamos a lista atual, a lista já existente.

// b) Quando uma lista de objetos é passada para o construtor, os contatos são recriados ou a agenda passa a usar as referências recebidas?
// A agenda passa a usar as referencias recebidas. Não são feitas uma cópia da agenda. Ou seja, se alterarmos um contato fora dela, refletimos na agenda.
