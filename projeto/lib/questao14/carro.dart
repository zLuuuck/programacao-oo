class Motor {
  int potencia;
  String tipo;

  Motor(this.potencia, this.tipo){
    if (potencia <= 0){
      print("Potencia deve ser maior que 0");
    }
    if (tipo.isEmpty){
      print("Tipo não pode ser vazio");
    }
  }

  void exibirMotor(){
    print("====== MOTOR ======");
    print("Potencia: $potencia");
    print("Tipo $tipo");
    print("===================");
  }

}


class Carro {

  String modelo;
  Motor motor;

  Carro(this.modelo, this.motor){
    if(modelo.isEmpty){
      print("Modelo não pode ser vazio");
    }
  }

  void exibirCarro(){
    print("===== Carro =====");
    print("Modelo: $modelo");
    motor.exibirMotor();
  }

}