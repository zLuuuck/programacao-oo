import 'personagem.dart';

void main() {
  var p1 = Personagem("Caio", 35, 5);
  var p2 = Personagem("Lucas", 25, 5);

  print("=== INÍCIO DO COMBATE ===\n");

  int turno = 1;

  while (p1.estaVivo() && p2.estaVivo()) {
    print("----- TURNO $turno -----");

    p1.atacar(p2);
    if (!p2.estaVivo()) break;

    p2.atacar(p1);
    if (!p1.estaVivo()) break;

    turno++;
  }

  print("=== FIM DO COMBATE ===\n");

  p1.exibirStatus();
  p2.exibirStatus();

  if (p1.estaVivo()) {
    print("\n${p1.nome} venceu!");
  } else {
    print("\n${p2.nome} venceu!");
  }
}