import 'package:command_runner/command_runner.dart';

void main() async {
  var runner = CommandRunner();

  // Exibe a mensagem de ajuda
  await runner.run(['help']);

  // Exibe a versão
  await runner.run(['version']);

  // Busca um artigo (título passado como argumento)
  await runner.run(['wikipedia', 'Dart', 'programming', 'language']);
}