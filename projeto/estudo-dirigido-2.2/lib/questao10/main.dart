import 'ligavel.dart';
import 'notebook.dart';
import 'smartphone.dart';

void main() {
  Ligavel smartphone = Smartphone('Samsung', 'S23', 'Android');
  Ligavel notebook = Notebook('Dell', 'Inspiron', 16);

  smartphone.ligar();
  smartphone.desligar();
  print('');
  notebook.ligar();
  notebook.desligar();
}
