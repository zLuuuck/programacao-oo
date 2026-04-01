import 'pokemon.dart';
import 'treinador.dart';

void main() {
  var p1 = Pokemon(1, "Lugia", "Psychic/Flying", 50, 166);
  var p2 = Pokemon(2, "Blaziken", "Fire/Fighting", 30, 105);
  var p3 = Pokemon(3, "Garchomp", "Dragon/Ground", 40, 199);

  var t = Treinador("Caio", p1, p2, p3);

  t.exibirTime();
  t.pokemonMaisForte();
}