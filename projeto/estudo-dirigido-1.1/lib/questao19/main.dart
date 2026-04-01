import 'comodo.dart';
import 'casa.dart';

void main() {
  var c1 = Comodo("Sala", 40.00);
  var c2 = Comodo("Cozinha", 25.00);
  var c3 = Comodo("Quarto", 20.00);

  var casa = Casa("Lucas", c1, c2, c3);

  casa.exibirCasa();
}