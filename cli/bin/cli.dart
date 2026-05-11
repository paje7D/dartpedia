/*
=========================================================================================

 /darpedia/cli/bin

 Nome do Programa: cli.dart 
 Descrição: Ferramenta utilitária de terminal que gerencia argumentos de 
 entrada para fornecer informações sobre o sistema Dartpedia e realizar buscas 
 de títulos de artigos específicos. 

========================================================================================= 

 Autor: Rafael Silva e Pinto
 E-mail: rafael.s.pinto9@aluno.senai.br
 
 Manutenção: Rafael Silva e Pinto
 E-mail: rafael.s.pinto9@aluno.senai.br

 Manutenção: Ronaldo 
 E-mail: ronaldo.s.rodruigues9@aluno.senai.br 
========================================================================================= 
  
 Funcionamento: Funcionamento:Processamento de argumentos de entrada 
 (List<String> arguments) via terminal. O fluxo principal utiliza estruturas
 condicionais para validar o comando inserido, permitindo a verificação de
 versão, exibição de instruções de uso e futuras consultas à base de dados Dartpedia.

=========================================================================================

 Exemplo de uso:
 
 1. Primeira saudacao:
    $ dart run bin/main.dart
    Saída: Hello, Dart!

 2. Com versionamento:
    $ dart run bin/main.dart version
    Saída: Dartpedia CLI version 0.0.1

========================================================================================= 
 
 Historico de versao:

   v1.0 - 30/03/2026 - Licao 01 - Crie seu primeiro aplicativo

   v1.1 - Primeira modificação (Hello, Dart!)

   v2.0 - 30/03/2026 - Licao 02 - Comandos version e help

   v2.1 - 30/03/2026 - Tarefa - Comando search (estrutura inicial)

   v3.0 - 30/03/2026 - Tarefa - Entrada do usuario (stdin)

   v4.0 - 06/02/2026 - Implementar o comando de busca.

   v5.0 - 07/04/2026 - Defina a search Wikipedia funcao.

   v6.0 - 07/04/2026 - Versao final tarefa 02
   
   v7.0 - 05/05/2026 - Integre o search comando em main

   v8.0 - 05/05/2026 - Chame a searchWikipedia a funcao a partir da mainfuncao 

   v9.0 - 05/05/2026 - Lide com a falta do titulo do artigo ea entrada do usuario com o stdin comando
	
   v10.0 - 05/05/2026 - Finalizar searchWikipedia a impressao de resultados de pesquisa simulados: atualize searchWikipedia para exibir mensagens que indiquem que nosso que o programa encontrou o algo

========================================================================================= 

 Licenca: Copyright

=========================================================================================

 Comando principal


 - v1.0 - 30/03/2026 - Primeiro Codigo

	 	import 'package:cli/cli.dart' as cli;

	void main(List<String> arguments) {
		print('Hello world: ${cli.calculate()}!');
	}

 - v1.1 - 30/03/2026 - Primeira modificação (Hello, Dart!)

	void main(List<String> arguments) {
	print('Hello, Dart!');
	}


 - v2.0 - 30/03/2026 - Licao 02 - Comandos version e help

	const version = '0.0.1'; 

void main(List<String> arguments) {
	if (arguments.isEmpty) {
    		print('Hello, Dart!');
  	} else if (arguments.first == 'version') {
    		print('Dartpedia CLI version $version');
  	}
}

 - v2.1 - 06/04/2026 - Tarefa - Comando search (estrutura inicial)

	const version = '0.0.2'; // Add this line

	void main(List<String> arguments) {
	if (arguments.isEmpty) {
		print('Hello, Dart!');
	} else if (arguments.first == 'version') {
		print('Dartpedia CLI version $version');
	}

}

void printUsage() { // Add this new function
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}
	

 - v3.0 - 06/04/2026 - Tarefa - Entrada do usuario (stdin)

	const version = '0.0.3'; // Add this line

void main(List<String> arguments) {
	if (arguments.isEmpty || arguments.first == 'help') {
		printUsage(); // Change this from 'Hello, Dart!'
	} else if (arguments.first == 'version') {
		print('Dartpedia CLI version $version');
	} else {
	printUsage(); // Catch-all for any unrecognized command.
}

void printUsage() { // Add this new function
	print(
	"The following commends are valid: 'help', 'version', 'search >ARTICLE-TITLE>'");
}


 - v4.0 - 06/04/2026 - Implementar o comando de busca.

	const version = '0.0.4'; // Add this line

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    print('Search command recognized!');
  } else {
    printUsage();
  }
}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

 - v5.0 - 07/04/2026 - Defina a search Wikipedia funcao.

	const version = '0.0.5'; // Add this line

void main(List<String> arguments) {
	if (arguments.isEmpty || arguments.first == 'help') {
    		printUsage();
  	} else if (arguments.first == 'version') {
    		print('Dartpedia CLI version $version');
  	} else if (arguments.first == 'search') {
    	// Add this new block:
	final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    		searchWikipedia(inputArgs);
	} else {
    		printUsage();
  	}
}

void searchWikipedia(List<String>? arguments) { // Add this new function and add ? to arguments type
  print('searchWikipedia received arguments: $arguments');
}

void printUsage() { // Add this new function
  	print(
    	"The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

 - v6.0 - Versão final tarefa 02

const version = '0.0.6'; // <-- Adicionado esta linha na versao '0.0.2'

void main(List<String> arguments) {
	if (arguments.isEmpty || arguments.first == 'help') {
		printUsage();
	} else if (arguments.first == 'version') {
		print('Dartpedia CLI version $version');
	} else if (arguments.first == 'search') {
	// <-- Adicionado este bloco de codigo na versao '0.0.6:
	final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
		searchWikipedia(inputArgs);
	} else {
		printUsage();
	}
}

void searchWikipedia(List<String>? arguments) { // <-- Adicionado esta nova funcao e argumento do tipo "?" na versao '0.0.6' 
print('searchWikipedia received arguments: $arguments');
}

void printUsage() { // <-- Adicionado esta funcao na versao '0.0.3' e '0.0.4'
	print(
	"The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

 - v7.0 - Integre o search comando em main.

	const version = '0.0.7';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    print('Search command recognized!');
  } else {
    printUsage();

 - v8.0 - Chame a searchWikipedia funcao a partir da mainfuncao.

	const version = '0.08';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

 - v9.0 - Lide com a falta do titulo do artigo e a entrada do usuario com o stdin comando.

	const version = '0.09';
  
void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  // If the user didn't pass in arguments, request an article title.
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into a single string.
    articleTitle = arguments.join(' ');
  }

  print('Current article title: $articleTitle');
}


 - v10.0 - Finalizar searchWikipedia a impressao de resultados de pesquisa simulados: Atualize searchWikipedia para 
exibir mensagens que indiquem que nosso programa encontrou algo.

	const version = '0.10'; 
 
void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  // If the user didn't pass in arguments, request an article title.
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into the CLI into a single string
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

 - V11.0 - 

*/
/*
=========================================================================================

 /darpedia/cli/bin

 Nome do Programa: cli.dart 
 Descrição: Ferramenta utilitária de terminal que gerencia argumentos de 
 entrada para fornecer informações sobre o sistema Dartpedia e realizar buscas 
 de títulos de artigos específicos. 

========================================================================================= 

 Autor: Rafael Silva e Pinto
 E-mail: rafael.s.pinto9@aluno.senai.br
 
 Manutenção: Rafael Silva e Pinto
 E-mail: rafael.s.pinto9@aluno.senai.br

 Manutenção: Ronaldo 
 E-mail: ronaldo.s.rodruigues9@aluno.senai.br 
========================================================================================= 
  
 Funcionamento: Funcionamento:Processamento de argumentos de entrada 
 (List<String> arguments) via terminal. O fluxo principal utiliza estruturas
 condicionais para validar o comando inserido, permitindo a verificação de
 versão, exibição de instruções de uso e futuras consultas à base de dados Dartpedia.

=========================================================================================

 Exemplo de uso:
 
 1. Primeira saudacao:
    $ dart run bin/main.dart
    Saída: Hello, Dart!

 2. Com versionamento:
    $ dart run bin/main.dart version
    Saída: Dartpedia CLI version 0.0.1

========================================================================================= 
 
 Historico de versao:

   v1.0 - 30/03/2026 - Licao 01 - Crie seu primeiro aplicativo

   v1.1 - Primeira modificação (Hello, Dart!)

   v2.0 - 30/03/2026 - Licao 02 - Comandos version e help

   v2.1 - 30/03/2026 - Tarefa - Comando search (estrutura inicial)

   v3.0 - 30/03/2026 - Tarefa - Entrada do usuario (stdin)

   v4.0 - 06/02/2026 - Implementar o comando de busca.

   v5.0 - 07/04/2026 - Defina a search Wikipedia funcao.

   v6.0 - 07/04/2026 - Versao final tarefa 02
   
   v7.0 - 05/05/2026 - Integre o search comando em main

   v8.0 - 05/05/2026 - Chame a searchWikipedia a funcao a partir da mainfuncao 

   v9.0 - 05/05/2026 - Lide com a falta do titulo do artigo ea entrada do usuario com o stdin comando
	
   v10.0 - 05/05/2026 - Finalizar searchWikipedia a impressao de resultados de pesquisa simulados: atualize searchWikipedia para exibir mensagens que indiquem que nosso que o programa encontrou o algo

========================================================================================= 

 Licenca: Copyright

=========================================================================================

 Comando principal


 - v1.0 - 30/03/2026 - Primeiro Codigo

	 	import 'package:cli/cli.dart' as cli;

	void main(List<String> arguments) {
		print('Hello world: ${cli.calculate()}!');
	}

 - v1.1 - 30/03/2026 - Primeira modificação (Hello, Dart!)

	void main(List<String> arguments) {
	print('Hello, Dart!');
	}


 - v2.0 - 30/03/2026 - Licao 02 - Comandos version e help

	const version = '0.0.1'; 

void main(List<String> arguments) {
	if (arguments.isEmpty) {
    		print('Hello, Dart!');
  	} else if (arguments.first == 'version') {
    		print('Dartpedia CLI version $version');
  	}
}

 - v2.1 - 06/04/2026 - Tarefa - Comando search (estrutura inicial)

	const version = '0.0.2'; // Add this line

	void main(List<String> arguments) {
	if (arguments.isEmpty) {
		print('Hello, Dart!');
	} else if (arguments.first == 'version') {
		print('Dartpedia CLI version $version');
	}

}

void printUsage() { // Add this new function
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}
	

 - v3.0 - 06/04/2026 - Tarefa - Entrada do usuario (stdin)

	const version = '0.0.3'; // Add this line

void main(List<String> arguments) {
	if (arguments.isEmpty || arguments.first == 'help') {
		printUsage(); // Change this from 'Hello, Dart!'
	} else if (arguments.first == 'version') {
		print('Dartpedia CLI version $version');
	} else {
	printUsage(); // Catch-all for any unrecognized command.
}

void printUsage() { // Add this new function
	print(
	"The following commends are valid: 'help', 'version', 'search >ARTICLE-TITLE>'");
}


 - v4.0 - 06/04/2026 - Implementar o comando de busca.

	const version = '0.0.4'; // Add this line

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    print('Search command recognized!');
  } else {
    printUsage();
  }
}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

 - v5.0 - 07/04/2026 - Defina a search Wikipedia funcao.

	const version = '0.0.5'; // Add this line

void main(List<String> arguments) {
	if (arguments.isEmpty || arguments.first == 'help') {
    		printUsage();
  	} else if (arguments.first == 'version') {
    		print('Dartpedia CLI version $version');
  	} else if (arguments.first == 'search') {
    	// Add this new block:
	final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    		searchWikipedia(inputArgs);
	} else {
    		printUsage();
  	}
}

void searchWikipedia(List<String>? arguments) { // Add this new function and add ? to arguments type
  print('searchWikipedia received arguments: $arguments');
}

void printUsage() { // Add this new function
  	print(
    	"The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

 - v6.0 - Versão final tarefa 02

const version = '0.0.6'; // <-- Adicionado esta linha na versao '0.0.2'

void main(List<String> arguments) {
	if (arguments.isEmpty || arguments.first == 'help') {
		printUsage();
	} else if (arguments.first == 'version') {
		print('Dartpedia CLI version $version');
	} else if (arguments.first == 'search') {
	// <-- Adicionado este bloco de codigo na versao '0.0.6:
	final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
		searchWikipedia(inputArgs);
	} else {
		printUsage();
	}
}

void searchWikipedia(List<String>? arguments) { // <-- Adicionado esta nova funcao e argumento do tipo "?" na versao '0.0.6' 
print('searchWikipedia received arguments: $arguments');
}

void printUsage() { // <-- Adicionado esta funcao na versao '0.0.3' e '0.0.4'
	print(
	"The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

 - v7.0 - Integre o search comando em main.

	const version = '0.0.7';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    print('Search command recognized!');
  } else {
    printUsage();

 - v8.0 - Chame a searchWikipedia funcao a partir da mainfuncao.

	const version = '0.08';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

 - v9.0 - Lide com a falta do titulo do artigo e a entrada do usuario com o stdin comando.

	const version = '0.09';
  
void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  // If the user didn't pass in arguments, request an article title.
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into a single string.
    articleTitle = arguments.join(' ');
  }

  print('Current article title: $articleTitle');
}


 - v10.0 - Finalizar searchWikipedia a impressao de resultados de pesquisa simulados: Atualize searchWikipedia para 
exibir mensagens que indiquem que nosso programa encontrou algo.

	const version = '0.10'; 

import 'dart:io';
import 'package:http/http.dart' as http; // Add this line

void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  // If the user didn't pass in arguments, request an article title.
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into the CLI into a single string
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

 - V11.0 - 

*/

/*
=========================================================================================
 Dartpedia CLI - v11.0
=========================================================================================
*/

import 'dart:io';
import 'package:http/http.dart' as http;

const version = '0.11';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();

  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');

  } else if (arguments.first == 'wikipedia') {

    // Pega os argumentos depois do comando wikipedia
    final inputArgs =
        arguments.length > 1 ? arguments.sublist(1) : null;

    searchWikipedia(inputArgs);

  } else {
    printUsage();
  }
}

void printUsage() {
  print(
    "The following commands are valid: "
    "'help', 'version', 'wikipedia <ARTICLE-TITLE>'"
  );
}

void searchWikipedia(List<String>? arguments) async {

  final String articleTitle;

  // Caso o usuário não passe argumentos
  if (arguments == null || arguments.isEmpty) {

    print('Please provide an article title.');

    final inputFromStdin = stdin.readLineSync();

    // Verifica se veio vazio ou null
    if (inputFromStdin == null || inputFromStdin.isEmpty) {

      print('No article title provided. Exiting.');
      return;
    }

    articleTitle = inputFromStdin;

  } else {

    // Junta os argumentos em uma única string
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');

  // Chama a API
  final articleContent =
      await getWikipediaArticle(articleTitle);

  print(articleContent);
}

Future<String> getWikipediaArticle(String articleTitle) async {

  final url = Uri.https(
    'en.wikipedia.org',
    '/api/rest_v1/page/summary/$articleTitle',
  );

  // Faz a requisição HTTP
  final response = await http.get(url);

  // Se deu certo
  if (response.statusCode == 200) {

    return response.body;
  }

  // Se deu erro
  return 'Error: Failed to fetch article '
      '"$articleTitle". '
      'Status code: ${response.statusCode}';
}
