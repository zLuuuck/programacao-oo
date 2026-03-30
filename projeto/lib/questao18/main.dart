import 'musica.dart';
import 'playlist.dart';

void main() {
  var m1 = Musica("Hacker", "Death Grips", 276);
  var m2 = Musica("Make-up is a lie", "Morrissey", 190);
  var m3 = Musica("Revolution", "Pennywise", 216);

  var p = Playlist("Viagem - São Paulo", m1, m2, m3);

  p.exibirPlaylist();
  p.tocarPlaylist();
}