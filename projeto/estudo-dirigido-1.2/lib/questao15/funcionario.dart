class Funcionario {
  String _nome;
  String _cargo;
  double _salario;

  // Construtor nomeado: Estagiário (salário fixo R$ 1500)
  Funcionario.estagiario(String nome)
      : _nome = nome,
        _cargo = "Estagiário",
        _salario = 1500.0;

  // Construtor nomeado: Pleno (recebe salário personalizado)
  Funcionario.pleno(String nome, double salario)
      : _nome = nome,
        _cargo = "Pleno",
        _salario = salario;

  // Construtor nomeado: Gerente (nome obrigatório, bônus opcional com valor padrão 1000)
  Funcionario.gerente({required String nome, double bonus = 1000})
      : _nome = nome,
        _cargo = "Gerente",
        _salario = 5000.0 + bonus; // salário base + bônus

  // Getters (opcionais para acesso)
  String get nome => _nome;
  String get cargo => _cargo;
  double get salario => _salario;

  double calcularPagamentoMensal() {
    // Para este exemplo, o pagamento mensal é o salário integral.
    // Se houvesse descontos ou horas extras, seria calculado aqui.
    return _salario;
  }

  void exibirDados() {
    print("======================");
    print("Nome: $_nome");
    print("Cargo: $_cargo");
    print("Salário: R\$ ${_salario.toStringAsFixed(2)}");
    print("Pagamento mensal: R\$ ${calcularPagamentoMensal().toStringAsFixed(2)}");
    print("======================");
  }
}