import 'endereco.dart';

class Cliente {
  String _nome;
  Endereco _endereco;

  Cliente(String nome, Endereco endereco)
      : _nome = '',
        _endereco = Endereco('', 0, '') {
    this.nome = nome;
    this.endereco = endereco;
  }

  // Construtor de cópia (cópia profunda)
  Cliente.copia(Cliente outro)
      : _nome = outro._nome,
        _endereco = Endereco(
          outro._endereco.rua,
          outro._endereco.numero,
          outro._endereco.cidade,
        );

  // Getters
  String get nome => _nome;
  Endereco get endereco => _endereco;

  // Setters com validação
  set nome(String valor) {
    if (valor.trim().isEmpty) {
      print("Nome inválido! Definindo como 'Cliente'");
      _nome = 'Cliente';
    } else {
      _nome = valor;
    }
  }

  set endereco(Endereco valor) {
    _endereco = valor; // Aqui você poderia validar se valor é null, etc.
  }

  void exibir() {
    print("======================");
    print("Nome: $_nome");
    _endereco.exibir();
    print("======================");
  }

  void alterarEndereco(String rua, int numero, String cidade) {
    _endereco = Endereco(rua, numero, cidade);
  }
}