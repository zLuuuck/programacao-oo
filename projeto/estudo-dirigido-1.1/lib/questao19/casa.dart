import 'comodo.dart';

class Casa {
  String proprietario;
  Comodo c1;
  Comodo c2;
  Comodo c3;

  Casa(this.proprietario, this.c1, this.c2, this.c3) {
    if (proprietario.isEmpty) proprietario = "Dono";
  }

  double calcularAreaTotal() {
    return c1.tamanho + c2.tamanho + c3.tamanho;
  }

  void exibirCasa() {
    print("Proprietário: $proprietario");
    c1.exibir();
    c2.exibir();
    c3.exibir();
    print("Área total: ${calcularAreaTotal()}");
  }
}