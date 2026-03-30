import 'contador.dart';

void main() {
  print("--- Testando Contador 1 (Valor padrão) ---");
  // Testando o valor padrão (não passando argumentos)
  var c1 = Contador();
  c1.exibirValor();
  c1.incrementar();
  c1.incrementar();
  c1.exibirValor();
  c1.decrementar();
  c1.exibirValor();

  print("\n--- Testando Contador 2 (Valor inicial customizado) ---");
  var c2 = Contador(valorInicial: 10);
  c2.exibirValor();
  c2.decrementar();
  c2.decrementar();
  c2.decrementar();
  c2.exibirValor();
  c2.zerar();
  c2.exibirValor();

  print("\n--- Testando Restrição (Valor negativo) ---");
  var c3 = Contador(valorInicial: -5);
  c3.exibirValor();
  c3.decrementar();
}
