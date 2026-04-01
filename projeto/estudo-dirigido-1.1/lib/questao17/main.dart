import 'semaforo.dart';

void main() {
  var s = Semaforo("vermelho", 5);

  print("=== INÍCIO DO SEMÁFORO ===\n");

  for (int i = 0; i < 20; i++) {
    s.exibirEstado();
    s.reduzirTempo();
  }

  print("\n=== FIM DA SIMULAÇÃO ===");
}