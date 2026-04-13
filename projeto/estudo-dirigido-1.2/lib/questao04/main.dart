import './usuario.dart';

void main() {
  var u1 = Usuario('Ana', 'ana@email.com');
  var u2 = Usuario('Bruno', 'bruno@email.com', 'Bruninho');
  u1.exibirPerfil();
  u2.exibirPerfil();
}
