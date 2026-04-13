import 'personagem.dart';

void main() {
  // criando um objeto
  var p1 = Personagem("Herói", 100, 50);

  // segunda variável apontando para o MESMO objeto
  var p2 = p1;

  print("ANTES da alteração:\n");
  p1.exibirEstado();

  // alterando usando p2
  print("\nAlterando vida usando p2...\n");
  p2.alterarVida(30);

  print("DEPOIS da alteração:\n");
  p1.exibirEstado();
}