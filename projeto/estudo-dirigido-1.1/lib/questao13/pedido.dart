import '../questao06/produto.dart';

class Pedido {

  int numero;
  Produto produto;
  int quantidade;

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
    if (quantidade <= produto.qtdeEstoque) { //só deixa completar o pedido se estiver item no estoque
      produto.qtdeEstoque -= quantidade;
      return true;
    }
    return false;
  }

  double calcularTotal() {
    return quantidade * produto.precoUnitario;
  }

  void exibirPedido() {
    print("========= PEDIDO =========");
    print("Número: $numero");
    print("Produto: ${produto.nome}");
    print("Preço unitário: ${produto.precoUnitario}");
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
