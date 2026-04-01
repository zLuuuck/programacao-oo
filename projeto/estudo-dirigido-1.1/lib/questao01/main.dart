import 'pessoa.dart';

void main()
{
    var lucas = Pessoa('Lucas Toterol', 18);
    var chaua = Pessoa('Chaua Queriolo', 39);
    var caio = Pessoa('Caio Arze', 27);

    lucas.exibirDados();
    caio.exibirDados();
    chaua.exibirDados();

}