import 'combatente.dart';
import 'inimigo.dart';

void main() {
  // --- Criação dos personagens ---
  Guerreiro thoran = Guerreiro('Thoran', 150, 5, 30, 10);
  Arqueiro lia     = Arqueiro('Lia', 100, 4, 25, 10);
  Mago merlin      = Mago('Merlin', 90, 6, 20, 50);
  Goblin gob       = Goblin('Gob', 60, 2, 30, 15, 10, 8);
  Dragao ignis     = Dragao('Ignis', 300, 10, 500, 200, 40, 60);

  print('========================================');
  print('           INÍCIO DA BATALHA!           ');
  print('========================================\n');

  // 1. Guerreiro ataca o Goblin
  print('--- Thoran ataca Gob ---');
  thoran.atacar(gob);
  print('');

  // 2. Arqueiro ataca o Goblin
  print('--- Lia ataca Gob ---');
  lia.atacar(gob);
  print('');

  // 3. Mago lança magia no Dragão
  print('--- Merlin lança feitiço em Ignis ---');
  merlin.lancarFeitico(ignis);
  print('');

  // 4. Dragão solta fogo no Guerreiro
  print('--- Ignis solta fogo em Thoran ---');
  ignis.atacar(thoran);
  print('');

  // --- Status final de todos os personagens ---
  print('========================================');
  print('           STATUS FINAL                 ');
  print('========================================\n');

  print('--- Status de Thoran ---');
  thoran.exibirStatusPersonagem();
  print('');

  print('--- Status de Lia ---');
  lia.exibirStatusPersonagem();
  print('');

  print('--- Status de Merlin ---');
  merlin.exibirStatusPersonagem();
  print('');

  print('--- Status de Gob ---');
  gob.exibirStatusPersonagem();
  print('');

  print('--- Status de Ignis ---');
  ignis.exibirStatusPersonagem();
}