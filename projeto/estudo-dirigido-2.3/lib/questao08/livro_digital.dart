import 'informativo.dart';
import 'livro.dart';

class LivroDigital extends Livro implements Informativo {
  double _tamanhoArquivo = 0;

  LivroDigital(super.titulo, super.autor, double tamanhoArquivo) {
    this.tamanhoArquivo = tamanhoArquivo;
  }

  double get tamanhoArquivo => _tamanhoArquivo;

  set tamanhoArquivo(double tamanhoArquivo) {
    if (tamanhoArquivo < 0) {
      print(
        'Tamanho do arquivo não pode ser negativo. Mantido: $_tamanhoArquivo MB',
      );
      return;
    }

    _tamanhoArquivo = tamanhoArquivo;
  }

  @override
  void exibirInformacoes() {
    print('Livro digital');
    print('Título: $titulo');
    print('Autor: $autor');
    print('Tamanho do arquivo: $tamanhoArquivo MB');
  }
}
