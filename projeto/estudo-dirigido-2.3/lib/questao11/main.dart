import 'arqueiro.dart';
import 'dragao.dart';
import 'goblin.dart';
import 'guerreiro.dart';
import 'mago.dart';

void main() {
  Guerreiro thoran = Guerreiro('Thoran', 150, 5, 30, 10);
  Arqueiro lia = Arqueiro('Lia', 100, 4, 25, 10);
  Mago merlin = Mago('Merlin', 90, 6, 20, 50);
  Goblin gob = Goblin('Gob', 60, 2, 30, 8);
  Dragao ignis = Dragao('Ignis', 300, 10, 500, 60);

  print('========================================');
  print('           INÍCIO DA BATALHA!           ');
  print('========================================\n');

  print('--- Thoran ataca Gob ---');
  thoran.atacar(gob);
  print('');

  print('--- Lia ataca Gob ---');
  lia.atacar(gob);
  print('');

  print('--- Merlin lança magia em Ignis ---');
  merlin.lancarMagia(ignis);
  print('');

  print('--- Ignis solta fogo em Thoran ---');
  ignis.soltarFogo(thoran);
  print('');

  print('========================================');
  print('           STATUS FINAL                 ');
  print('========================================\n');

  print('--- Status de Thoran ---');
  thoran.exibirStatus();
  print('');

  print('--- Status de Lia ---');
  lia.exibirStatus();
  print('');

  print('--- Status de Merlin ---');
  merlin.exibirStatus();
  print('');

  print('--- Status de Gob ---');
  gob.exibirStatus();
  if (!gob.estaVivo()) {
    gob.exibirRecompensa();
  }
  print('');

  print('--- Status de Ignis ---');
  ignis.exibirStatus();
  if (!ignis.estaVivo()) {
    ignis.exibirRecompensa();
  }
}
