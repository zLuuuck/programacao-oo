/// MODEL
///
/// Representa um usuário cadastrado na biblioteca.
class Usuario {
  String nome;
  String matricula;

  Usuario({required this.nome, required this.matricula});

  @override
  String toString() {
    return '$nome (Matrícula: $matricula)';
  }
}
