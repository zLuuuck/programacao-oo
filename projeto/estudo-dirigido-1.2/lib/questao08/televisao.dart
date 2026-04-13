class Televisao {
  int _canal;
  int _volume;

  Televisao(this._canal, this._volume);

  get volume => _volume;
  get canal => _canal;

  set canal(int canal){
    _canal = canal;
  }

  set volume(int volume){
    _volume = volume;
  }

  void exibir() {
    print("Canal: $_canal | Volume: $_volume");
  }
}