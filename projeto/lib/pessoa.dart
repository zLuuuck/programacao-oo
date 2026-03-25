// Definição da classe
// - representa uma pessoa

class Pessoa {
  // Atributos
  // - Características que definem os objetos desta Classe
  late String nome;
  late int idade;
  late String cpf;
  late String rg;
  late String tipoSanguineo;
  late double altura;
  late double peso;
  late double imc;

  // Construtor default
  // - Inicializa os atributos com valores padrão
  Pessoa() {
    nome = "";
    idade = 0;
    cpf = "";
    rg = "";
    tipoSanguineo = "";
    altura = 0;
    peso = 0;
    imc = 0;
  }

  void PessoaComArgumentos(String nome, int idade, String cpf) {
    this.nome = nome;
    this.idade = idade;
    this.cpf = cpf;
  }

  // Métodos
  // Ações realizadas pelo objeto

  void apresentacao() {
    print('Meu nome é $nome e tenho $idade anos!');
  }

  void desloqueSe(String destino) {
    print('Estou me deslocando para $destino');
  }

  // Setters (métodos para modificar atributos com validação)
  void setNome(String nome) {
    this.nome = nome;
  }

  void setIdade(int idade) {
    if (idade >= 0) {
      this.idade = idade;
    }
  }

  void setAltura(double altura) {
    if (altura >= 0) {
      this.altura = altura;
    }
  }

  void setPeso(double peso) {
    if (peso >= 0) {
      this.peso = peso;
    }
  }

  void setIMC(double imc) {
    if (imc >= 0) {
      this.imc = imc; // Correção: agora atribui corretamente
    }
  }

  // Calcula o IMC com base na altura e peso atuais do objeto
  double calculeIMC() {
    double imcCalculado = peso / (altura * altura);
    setIMC(imcCalculado);
    print('O meu IMC é: $imcCalculado');
    return imcCalculado;
  }

  // Exibe o status do IMC usando if-else (switch não suporta intervalos)
  void calculeStatusIMC(double imc) {
    if (imc >= 19 && imc <= 24) {
      print("Peso Ideal");
    } else if (imc >= 25 && imc <= 29) {
      print("Sobrepeso");
    } else if (imc >= 30 && imc <= 34) {
      print("Obesidade I");
    } else if (imc >= 35 && imc <= 39) {
      print("Obesidade II");
    } else {
      print("Obesidade III"); // Corrigido o typo
    }
  }

  //acessores
}
