import './televisao.dart';

class ControleRemoto {
  Televisao tv;

  ControleRemoto(this.tv);

  void aumentarVolume() => tv.aumentarVolume();
  void diminuirVolume() => tv.diminuirVolume();
  void proximoCanal() => tv.proximoCanal();
  void canalAnterior() => tv.canalAnterior();
}