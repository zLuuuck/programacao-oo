// MODEL
//
// Representa um livro da biblioteca.
// Armazena os dados do livro e se ele está emprestado ou não.

class Livro {
  String titulo;
  String autor;
  bool estaEmprestado;
  String? nomeUsuario;

  Livro({required this.titulo, required this.autor, this.estaEmprestado = false, this.nomeUsuario});

  @override
  String toString() {
    if (estaEmprestado) {
      return '$titulo - $autor [Emprestado para: $nomeUsuario]';
    }
    return '$titulo - $autor [Disponível]';
  }
}
