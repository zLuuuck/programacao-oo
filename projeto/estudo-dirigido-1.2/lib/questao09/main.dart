import 'carro.dart';
import 'oficina.dart';

void main() {
  var carro = Carro("Civic", 50000);
  var oficina = Oficina();

  print("ANTES da revisão:\n");
  carro.exibirEstado();

  oficina.revisar(carro);

  print("DEPOIS da revisão:\n");
  carro.exibirEstado();
}

// a)Por que a quilometragem do carro foi alterada mesmo sem retornar um novo objeto?
// Porque o objeto foi passado por referência para o método, permitindo que ele seja alterado diretamente sem necessidade de retorno.

// b)O parâmetro recebido pelo método revisar() representa um novo carro ou o mesmo objeto criado no main?
// Não. O método utiliza o mesmo objeto criado no main, não cria uma nova instância.