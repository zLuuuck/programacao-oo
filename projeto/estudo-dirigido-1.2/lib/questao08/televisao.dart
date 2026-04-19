class Televisao {
  int _canal;
  int _volume;

  // Construtor padrão com validação via setters
  Televisao(int canal, int volume)
      : _canal = 1,      // valores provisórios
        _volume = 50 {
    this.canal = canal;  // aplica validação do setter
    this.volume = volume;
  }

  // Getters
  int get canal => _canal;
  int get volume => _volume;

  // Setters com validação
  set canal(int novoCanal) {
    if (novoCanal < 1) {
      print("Canal inválido! Mantendo canal $_canal");
    } else {
      _canal = novoCanal;
    }
  }

  set volume(int novoVolume) {
    if (novoVolume < 0) {
      print("Volume não pode ser negativo! Mantendo volume $_volume");
    } else if (novoVolume > 100) {
      print("Volume máximo é 100! Mantendo volume $_volume");
    } else {
      _volume = novoVolume;
    }
  }

  void aumentarVolume() {
    if (_volume < 100) {
      _volume++;
    } else {
      print("Volume já está no máximo (100)");
    }
  }

  void diminuirVolume() {
    if (_volume > 0) {
      _volume--;
    } else {
      print("Volume já está no mínimo (0)");
    }
  }

  void proximoCanal() {
    this.canal = _canal++;  // permite qualquer inteiro positivo; o setter não é chamado
  }

  void canalAnterior() {
    if (_canal > 1) {
      _canal--;
    } else {
      print("Já está no primeiro canal");
    }
  }

  void exibir() {
    print("Canal: $_canal | Volume: $_volume");
  }
}