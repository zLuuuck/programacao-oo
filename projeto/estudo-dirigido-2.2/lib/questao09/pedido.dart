class Pedido {
  String codigo;
  double valor;

  Pedido(this.codigo, this.valor);

  void exibir() {
    print("Código: $codigo");
    print("Valor: $valor");
  }
}