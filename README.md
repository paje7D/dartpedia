# Dartpedia CLI

Ferramenta de linha de comando desenvolvida em Dart para buscar artigos da Wikipedia diretamente pelo terminal. O projeto é organizado como um monorepo com dois pacotes: `cli` (aplicação principal) e `command_runner` (biblioteca de execução de comandos).

---

## Estrutura do Projeto

```
dartpedia/
├── cli/                        # Aplicação CLI principal
│   ├── bin/
│   │   └── cli.dart            # Ponto de entrada da aplicação
│   ├── lib/
│   │   └── cli.dart
│   ├── test/
│   │   └── cli_test.dart
│   └── pubspec.yaml
│
└── command_runner/             # Pacote auxiliar de execução de comandos
    ├── lib/
    │   ├── command_runner.dart
    │   └── src/
    │       └── command_runner_base.dart
    ├── example/
    │   └── command_runner_example.dart
    ├── test/
    │   └── command_runner_test.dart
    └── pubspec.yaml
```

---

## Pré-requisitos

- [Dart SDK](https://dart.dev/get-dart) `^3.11.1`

---

## Instalação

Clone o repositório e instale as dependências de cada pacote:

```bash
# Dependências do CLI
cd cli
dart pub get

# Dependências do command_runner
cd ../command_runner
dart pub get
```

---

## Uso

Execute a partir do diretório `cli/`:

```bash
# Exibe as instruções de uso
dart run bin/cli.dart help

# Exibe a versão atual
dart run bin/cli.dart version

# Busca um artigo na Wikipedia
dart run bin/cli.dart wikipedia <TÍTULO-DO-ARTIGO>

# Exemplo
dart run bin/cli.dart wikipedia Dart programming language
```

Se o título do artigo não for fornecido junto ao comando `wikipedia`, a aplicação solicitará a entrada pelo terminal (stdin).

---

## Comandos Disponíveis

| Comando                          | Descrição                                      |
|----------------------------------|------------------------------------------------|
| `help`                           | Exibe as instruções de uso                     |
| `version`                        | Exibe a versão atual da CLI                    |
| `wikipedia <TÍTULO-DO-ARTIGO>`   | Busca e exibe o resumo do artigo na Wikipedia  |

---

## Como Funciona

A aplicação utiliza a [API REST da Wikipedia](https://en.wikipedia.org/api/rest_v1/) para buscar o resumo de artigos. O endpoint utilizado é:

```
GET https://en.wikipedia.org/api/rest_v1/page/summary/{articleTitle}
```

O fluxo principal:

1. Os argumentos da linha de comando são recebidos pela `main`.
2. O `CommandRunner` interpreta e despacha o comando correspondente.
3. Para o comando `wikipedia`, a função `searchWikipedia` trata o título do artigo (via argumento ou stdin) e realiza a requisição HTTP.
4. O resultado (resumo do artigo) é impresso no terminal.

---

## Pacotes Utilizados

| Pacote           | Versão    | Finalidade                           |
|------------------|-----------|--------------------------------------|
| `http`           | `^1.3.0`  | Requisições HTTP à API da Wikipedia  |
| `command_runner` | local     | Execução e despacho de comandos CLI  |
| `lints`          | `^6.0.0`  | Regras de análise estática           |
| `test`           | `^1.25.6` | Testes unitários                     |

---

## Testes

```bash
# Dentro do diretório cli/
dart test

# Dentro do diretório command_runner/
dart test
```

---

## Histórico de Versões

| Versão | Data       | Descrição                                                     |
|--------|------------|---------------------------------------------------------------|
| v1.0   | 30/03/2026 | Primeira versão — Hello, Dart!                                |
| v2.0   | 30/03/2026 | Comandos `version` e `help`                                   |
| v2.1   | 06/04/2026 | Estrutura inicial do comando `search`                         |
| v2.2   | 06/04/2026 | Leitura de entrada do usuário via stdin                       |
| v2.3   | 06/04/2026 | Implementação do comando `search`                             |
| v2.4   | 07/04/2026 | Definição da função `searchWikipedia`                         |
| v2.5   | 07/04/2026 | Versão final da Tarefa 02                                     |
| v2.8   | 05/05/2026 | Tratamento de título ausente e entrada via stdin              |
| v2.9   | 05/05/2026 | Exibição de resultados de busca simulados                     |
| v3.0   | 11/05/2026 | Integração real com a API REST da Wikipedia via HTTP          |
| v4.0   | 12/05/2026 | Refatoração com `CommandRunner` como pacote separado          |

---

## Autores

- **Eduardo da Silva Oliveirao**
- **Guilherme Natan**
- **Pedro Otavio** 
  **Gustavo Rodrigues**
---

## Licença

Copyright © 2026 — Todos os direitos reservados.
