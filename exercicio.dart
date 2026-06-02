// 1) crie um classe chamada pilha que simula o comportamento de uma pilha genérica (Pilha<T>), onde T é o tipo dos elementos armazenados na pilha. A classe deve ter os seguintes métodos:
// a) Crie a pilha para ser gerenérica <T>
// b) sobrescreva os operadores para realizar as seguintes operações:
// Pilha += item    -> empilha um item à pilha
// Pilha -= 1       -> desempilha um item da pilha (-- não é sobrescrevível em Dart)
// pilha[i]         -> retorna o item na posição i da pilha

class Pilha<T> {
  final List<T> _itens = [];
  static const int _capacidadeMaxima = 15;

  int get topo => _itens.length - 1;
  int get tamanho => _itens.length;
  bool get vazia => _itens.isEmpty;
  bool get cheia => _itens.length >= _capacidadeMaxima;

  // Pilha += item → empilha
  Pilha<T> operator +(T item) {
    if (cheia) {
      throw StateError('Pilha cheia! Capacidade máxima: $_capacidadeMaxima.');
    }
    _itens.add(item);
    return this;
  }

  // Pilha -= n → desempilha n itens (Pilha -= 1 simula o comportamento de --)
  Pilha<T> operator -(int n) {
    for (int i = 0; i < n; i++) {
      if (vazia) {
        throw StateError('Pilha vazia! Não é possível desempilhar.');
      }
      _itens.removeLast();
    }
    return this;
  }

  // pilha[i] → retorna o item na posição i (0 = fundo, topo = último)
  T operator [](int i) {
    if (i < 0 || i >= _itens.length) {
      throw RangeError.index(i, _itens, 'índice', null, _itens.length);
    }
    return _itens[i];
  }

  @override
  String toString() {
    if (vazia) return 'Pilha vazia';
    final buffer = StringBuffer('Topo -> ');
    for (int i = _itens.length - 1; i >= 0; i--) {
      buffer.write(_itens[i]);
      if (i > 0) buffer.write(', ');
    }
    return buffer.toString();
  }
}

void main() {
  Pilha<int> pilha = Pilha<int>();

  pilha += 10;
  pilha += 20;
  pilha += 30;
  print(pilha);              // Topo -> 30, 20, 10
  print(pilha[0]);           // 10 (fundo)
  print(pilha[pilha.topo]); // 30 (topo)

  pilha -= 1;                // desempilha 1 item
  print(pilha);              // Topo -> 20, 10
}
