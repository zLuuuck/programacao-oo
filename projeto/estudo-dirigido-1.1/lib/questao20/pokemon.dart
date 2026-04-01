class Pokemon {
  int numero;
  String nome;
  String tipo;
  int nivel;
  int hp;

  Pokemon(this.numero, this.nome, this.tipo, this.nivel, this.hp) {
    if (numero <= 0) {
      numero = 1;
    }
    if (nome.isEmpty) {
      nome = "Pokemon";
      }
    if (tipo.isEmpty) {
      tipo = "Normal";
    }
    if (nivel < 1 || nivel > 100) {
      nivel = 1;
    }
    if (hp <= 0) {
      hp = 1;
    }
  }

  void exibir() {
    print("$nome (Nv: $nivel, HP: $hp, Tipo: $tipo)");
  }
}