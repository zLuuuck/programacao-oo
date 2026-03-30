import 'produto.dart';

class Pedido {
  int numero;
  Produto produto;
  int quantidade;

  Pedido(this.numero, this.produto, this.quantidade) {
    if (numero <= 0) {
      print("Número inválido! Definido como 1");
      numero = 1;
    }

    if (quantidade <= 0) {
      print("Quantidade inválida! Definida como 1");
      quantidade = 1;
    }
  }

  double calcularTotal() {
    return produto.preco * quantidade;
  }

  void exibirPedido() {
    print("Pedido: $numero");
    print("Produto: ${produto.nome}");
    print("Preço: ${produto.preco}");
    print("Quantidade: $quantidade");
    print("Total: ${calcularTotal()}");
    print("----------------------");
  }
}
