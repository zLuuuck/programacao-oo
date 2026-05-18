import '../lista_generica.dart';
import 'arqueiro.dart';
import 'atacavel.dart';
import 'dragao.dart';
import 'flamejante.dart';
import 'goblin.dart';
import 'guerreiro.dart';
import 'magico.dart';
import 'mago.dart';
import 'personagem.dart';

void main() {
  Guerreiro thoran = Guerreiro('Thoran', 120, 5, 20, 15);
  Arqueiro lia = Arqueiro('Lia', 80, 4, 15, 10);
  Mago merlin = Mago('Merlin', 70, 6, 10, 50);
  Goblin gob = Goblin('Gob', 40, 2, 100, 25);
  Dragao ignis = Dragao('Ignis', 200, 10, 1000, 35);

  ListaGenerica<Atacavel> atacaveis = ListaGenerica<Atacavel>();
  atacaveis.adicionar(thoran);
  atacaveis.adicionar(lia);
  atacaveis.adicionar(merlin);

  ListaGenerica<Magico> magicos = ListaGenerica<Magico>();
  magicos.adicionar(merlin);

  ListaGenerica<Flamejante> flamejantes = ListaGenerica<Flamejante>();
  flamejantes.adicionar(ignis);

  ListaGenerica<Personagem> personagens = ListaGenerica<Personagem>();
  personagens.adicionar(thoran);
  personagens.adicionar(lia);
  personagens.adicionar(merlin);
  personagens.adicionar(gob);
  personagens.adicionar(ignis);

  print('--- Estado inicial dos personagens ---');
  personagens.imprimirItens();

  print('\n--- Atacando ---');
  for (var atacavel in atacaveis.obterItens()) {
    atacavel.atacar(gob);
  }

  print('\n--- Lançando magias ---');
  for (var magico in magicos.obterItens()) {
    magico.lancarMagia(ignis);
  }

  print('\n--- Soltando fogo ---');
  for (var flamejante in flamejantes.obterItens()) {
    flamejante.soltarFogo(thoran);
  }

  print('\n--- Estado final dos personagens ---');
  personagens.imprimirItens();
}
