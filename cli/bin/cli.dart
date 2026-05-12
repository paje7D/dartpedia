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
