import './televisao.dart';

class ControleRemoto {
  Televisao tv;
  ControleRemoto(this.tv);

  void aumentarVolume() => tv.volume++;
  void diminuirVolume() => tv.volume--;
  void proximoCanal() => tv.canal++;
  void canalAnterior() => tv.canal--;
}