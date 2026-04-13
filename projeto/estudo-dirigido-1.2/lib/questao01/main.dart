import 'lampada.dart';

void main() {
  var lampada = Lampada();

  lampada.exibirEstado();

  lampada.ligar();
  lampada.aumentar();
  lampada.aumentar();

  lampada.exibirEstado();

  lampada.diminuir();
  lampada.desligar();

  lampada.exibirEstado();
}