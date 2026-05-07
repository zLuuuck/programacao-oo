import 'ingressos.dart';
void main() {
  print('=== DEMONSTRAÇÃO DO SISTEMA DE INGRESSOS ===\n');

  print('--- Ingresso Normal ---');
  Ingresso ingressoNormal = Ingresso('Show de Rock', 150.0);
  ingressoNormal.exibirResumo();

  print('\n--- Teste: nome vazio ---');
  Ingresso ingressoInvalidoNome = Ingresso('', 100.0);
  ingressoInvalidoNome.exibirResumo(); 

  print('\n--- Teste: preço negativo ---');
  Ingresso ingressoInvalidoPreco = Ingresso('Teatro', -50.0);
  ingressoInvalidoPreco.exibirResumo(); 

  print('\n--- Alterando o ingresso normal ---');
  ingressoNormal.evento = 'Show de Rock (Edição Especial)';
  ingressoNormal.preco = 200.0;
  ingressoNormal.exibirResumo();

  print('\n--- Tentando set inválido ---');
  ingressoNormal.evento = '';  
  ingressoNormal.preco = -10;   
  ingressoNormal.exibirResumo(); 

  print('\n--- Ingresso VIP ---');
  IngressoVIP ingressoVip = IngressoVIP('Camarote Premium', 300.0);
  ingressoVip.exibirResumo();

  print('\n--- Teste VIP com preço negativo ---');
  IngressoVIP vipInvalido = IngressoVIP('Festa VIP', -100);
  vipInvalido.exibirResumo();
}