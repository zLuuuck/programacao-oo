<<<<<<< HEAD
import '../questao06/produto.dart';

class Pedido {

=======
import 'produto.dart';

class Pedido {
>>>>>>> b8def7a6b2b3af73e5a1d9c90f020a455cb6059a
  int numero;
  Produto produto;
  int quantidade;

<<<<<<< HEAD
  Pedido(this.numero, this.quantidade, this.produto){
    if (numero <= 0){
      print("Numero deve ser maior que 0.");
    }
    if (quantidade <= 0){
      print("Quantidade deve ser maior que 0.");
    }
  }

  //função para verificar se a quantidade do item pedido tem disponível no estoque
  bool verificaQuantidadeEmEstoque() {
    if (quantidade <= produto.quantidadeEstoque) { //só deixa completar o pedido se estiver item no estoque
      produto.quantidadeEstoque -= quantidade;
      return true;
    }
    return false;
  }

  double calcularTotal() {
    return quantidade * produto.precoUni;
  }

  void exibirPedido() {
    print("========= PEDIDO =========");
    print("Número: $numero");
    print("Produto: ${produto.nome}");
    print("Preço unitário: ${produto.precoUni}");
    print("Quantidade: $quantidade");
    print("Total: ${calcularTotal()}");
    if(verificaQuantidadeEmEstoque()){
      print("Status: Aprovado!");
    } else{
      print("Status: Rejeitado por falta de estoque");
    }
    print("==========================\n");
  }
}
=======
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
>>>>>>> b8def7a6b2b3af73e5a1d9c90f020a455cb6059a
