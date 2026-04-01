import 'endereco.dart';

void main() {
  var end1 = Endereco('rua 1', 1234, 'sei la', 'oh gloria', 'parana', '80000987');
  var end2 = Endereco('rua 2', 5143, 'ali do lado', 'ciri fazendo barra', 'rio of janeiro', '80333981');
  var end3 = Endereco('rua 3', 23, 'anda 10m', 'eeeeeeeeeeeeee', 'rio grnade do norte', '84583989');

  end1.exibirEndereco();
  end2.exibirEndereco();
  end3.exibirEndereco();
}
