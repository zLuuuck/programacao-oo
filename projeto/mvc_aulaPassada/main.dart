import 'contato/controller/contato_controller.dart';

/// Ponto de entrada da aplicação.
///
/// Em uma aplicação organizada no padrão MVC, o `main` deve ficar simples.
/// Ele apenas cria o controller principal e inicia o fluxo do programa.
void main() {
  final contatoController = ContatoController();
  contatoController.executar();
}
