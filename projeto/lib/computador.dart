class Notebook {
  
  late String marca;
  late String modelo;
  late String processador;
  late String placaVideo;
  late double quantidadeMemoriaGB;
  late String tipoMemoria;
  late double quantidadeArmazenamentoGB;
  late String tipoArmazenamento;

  Notebook(this.marca, this.modelo, this.processador, this.placaVideo,
          this.quantidadeMemoriaGB, this.tipoMemoria, this.quantidadeArmazenamentoGB, this.tipoArmazenamento);

  //Acessores
  String getMarca(){
    return marca;
  }

  String getModelo(){
    return modelo;
  }

  String getProcessador(){
    return processador;
  }

  String getPlacaVideo(){
    return placaVideo;
  }

  String getTipoMemoria(){
    return tipoMemoria;
  }

  String getTipoArmazenamento(){
    return tipoArmazenamento;
  }

  double getQuantidadeMemoriaGB(){
    return quantidadeMemoriaGB;
  }

  double getQuantidadeArmazenamentoGB(){
    return quantidadeArmazenamentoGB;
  }

}


