/// MODEL
///
/// O Model representa os dados da aplicação.
/// Neste exemplo, um contato possui apenas nome e telefone.
///
/// Repare que esta classe não lê dados do teclado, não imprime mensagens
/// e não controla o menu. Ela apenas descreve o que é um contato.
class Contato {
  String nome;
  String telefone;

  /// Construtor nomeado para deixar claro quais dados estão sendo enviados.
  Contato({
    required this.nome,
    required this.telefone,
  });

  /// Define como o contato será convertido para texto.
  /// Isso facilita a exibição quando usamos `print(contato)`.
  @override
  String toString() {
    return '$nome - $telefone';
  }
}
