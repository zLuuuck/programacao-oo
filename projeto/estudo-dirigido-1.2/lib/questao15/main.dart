import 'funcionario.dart';

void main() {
  var estagiario = Funcionario.estagiario("Ana");
  var pleno = Funcionario.pleno("Carlos", 4500.0);
  var gerente = Funcionario.gerente(nome: "Juliana", bonus: 2000);

  estagiario.exibirDados();
  pleno.exibirDados();
  gerente.exibirDados();
}

//a) Qual é a vantagem de usar construtores nomeados nesse caso?
//Permite criar objetos Funcionario com diferentes configurações iniciais de forma clara e direta, sem precisar de métodos extras ou parâmetros opcionais confusos.

//b) O que muda no estado inicial de cada objeto conforme o construtor utilizado?
//Estagiário: cargo = "Estagiário", salario = 1500.0 (fixo).
//Pleno: cargo = "Pleno", salario é definido pelo parâmetro passado.
//Gerente: cargo = "Gerente", salario = 5000.0 + bonus (onde o bônus é opcional, padrão 1000).
//Cada construtor atribui valor es diferentes aos atributos privados, refletindo a função do funcionário.

//c) Em vez de criar métodos separados para configurar o cargo depois, por que pode ser melhor definir isso já no construtor?
//Porque garante que o objeto já nasça em um estado consistente e válido, de acordo com sua função. Se usássemos métodos separados (ex.: definirCargo(), definirSalario()), correríamos o risco de esquecer de chamá-los ou de deixar o objeto em um estado incompleto

