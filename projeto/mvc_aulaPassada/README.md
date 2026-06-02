# Agenda de Contatos em MVC

Este projeto é um exemplo simples em Dart para explicar o padrão MVC em uma aplicação de terminal.

## Estrutura

```text
MVC/
├── main.dart
├── mvc.txt
└── contato/
    ├── controller/
    │   └── contato_controller.dart
    ├── model/
    │   └── contato.dart
    └── view/
        └── contato_view.dart
```

## Responsabilidade de cada camada

### Model
Arquivo: `contato/model/contato.dart`

Representa os dados da aplicação. Neste caso, a classe `Contato` guarda `nome` e `telefone`.

### View
Arquivo: `contato/view/contato_view.dart`

Cuida da entrada e saída de dados. Ela mostra o menu, lê informações do teclado e exibe mensagens no terminal.

### Controller
Arquivo: `contato/controller/contato_controller.dart`

Controla o fluxo do programa. Ele interpreta a opção escolhida pelo usuário e decide quando cadastrar, listar, atualizar ou deletar contatos.

## Como executar

Dentro da pasta `MVC`, execute:

```bash
dart run main.dart
```

ou:

```bash
dart main.dart
```

## Observação

Este projeto usa uma lista em memória para armazenar os contatos. Portanto, os dados são apagados quando o programa termina.
