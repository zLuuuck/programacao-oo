import './controle.dart';
import './televisao.dart';

void main() {
  var tv = Televisao(10,50);
  var controle = ControleRemoto(tv);

  tv.exibir();

  print('\nMudar volume e canal usando o controle remoto...\n');

  controle.aumentarVolume();
  controle.proximoCanal();

  tv.exibir();
}

// a) Por que o controle remoto consegue alterar diretamente o estado da televisão? 
// Por que ele recebe um objeto "Televisão" como parâmetro e armazena uma referencia para este mesmo objeto.

// b) O controle remoto possui uma cópia da televisão ou uma referência para o mesmo objeto? Como isso pode ser percebido no resultado?
// Por referencia, já que alteramos pelo controle, os números internos originais da TV mudam. O estado do objeto muda globalmente.