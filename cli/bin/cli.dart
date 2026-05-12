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

