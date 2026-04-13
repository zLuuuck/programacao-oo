import './usuario.dart';

void main() {
  var u1 = Usuario('Ana', 'ana@email.com');
  var u2 = Usuario('Bruno', 'bruno@email.com', 'brun0x');
  u1.exibirPerfil();
  u2.exibirPerfil();
}
