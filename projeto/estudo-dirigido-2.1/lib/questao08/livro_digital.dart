import 'livro.dart';

class LivroDigital extends Livro {
  double tamanho;

  LivroDigital(super.titulo, super.autor, this.tamanho);

  @override
  void exibir() {
    super.exibir();
    print("Tamanho: $tamanho MB");
  }
}