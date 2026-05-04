import 'livro.dart';

class LivroDigital extends Livro {
  double tamanho;

  LivroDigital(String titulo, String autor, this.tamanho)
      : super(titulo, autor);

  @override
  void exibir() {
    super.exibir();
    print("Tamanho: $tamanho MB");
  }
}