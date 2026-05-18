import '../lista_generica.dart';
import 'ligavel.dart';
import 'notebook.dart';
import 'smartphone.dart';
import 'televisao.dart';

void main() {
  ListaGenerica<Ligavel> dispositivos = ListaGenerica<Ligavel>();

  dispositivos.adicionar(Smartphone('Samsung', 'Galaxy S24', 'Android'));
  dispositivos.adicionar(Smartphone('Apple', 'iPhone 15', 'iOS'));
  dispositivos.adicionar(Notebook('Dell', 'Inspiron', 16));
  dispositivos.adicionar(Notebook('Lenovo', 'ThinkPad', 32));
  dispositivos.adicionar(Televisao('LG', 'OLED55', 55));

  print('--- Impressão dos dispositivos ---');
  dispositivos.imprimirItens();

  print('\n--- Ligando e desligando ---');
  for (var dispositivo in dispositivos.obterItens()) {
    dispositivo.ligar();
    dispositivo.desligar();
  }
}
