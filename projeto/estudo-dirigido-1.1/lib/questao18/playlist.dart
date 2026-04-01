import 'musica.dart';

class Playlist {
  String nome;
  Musica m1;
  Musica m2;
  Musica m3;

  Playlist(this.nome, this.m1, this.m2, this.m3) {
    if (nome.isEmpty) {
      nome = "Playlist";
    }
  }

  int calcularDuracaoTotal() {
    return m1.duracao + m2.duracao + m3.duracao;
  }

  void exibirPlaylist() {
    print("Playlist: $nome");
    m1.exibir();
    m2.exibir();
    m3.exibir();
    print("Total: ${calcularDuracaoTotal()}s");
  }

  void tocarPlaylist() {
    print("\nTocando agora...\n");
    m1.exibir();
    print("\nMúsicas na sequência:\n");
    m2.exibir();
    m3.exibir();
  }
}
