abstract class Funcionario {
  String _nome = 'Desconhecido';
  double _salario = 0;

  Funcionario(String nome, double salario) {
    this.nome = nome; 
    this.salario = salario;
  }

  set nome(String nome) {
    if (nome.isNotEmpty) {
      _nome = nome;
    } else {
      print("Nome não pode ser vazio. Mantido padrão 'Desconhecido'.");
      return;
    }
  }

  set salario(double valor) {
    if (valor >= 0) {
      _salario = valor;
    } else {
      print("Salário não pode ser negativo. Mantido R\$ 0.");
      return;
    }
  }

  String get nome => _nome;
  double get salario => _salario;

  void exibirdados();
}

