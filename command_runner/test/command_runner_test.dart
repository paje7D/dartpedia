import 'package:command_runner/command_runner.dart';
import 'package:test/test.dart';

void main() {
  group('CommandRunner', () {
    late CommandRunner runner;

    setUp(() {
      runner = CommandRunner();
    });

    test('run with no arguments calls printUsage without throwing', () async {
      await expectLater(runner.run([]), completes);
    });

    test('run with "help" calls printUsage without throwing', () async {
      await expectLater(runner.run(['help']), completes);
    });

    test('run with "version" completes without throwing', () async {
      await expectLater(runner.run(['version']), completes);
    });

    test('run with unknown command completes without throwing', () async {
      await expectLater(runner.run(['unknowncommand']), completes);
    });

    test('getWikipediaArticle returns a non-empty string', () async {
      final result = await runner.getWikipediaArticle('Dart programming language');
      expect(result, isNotEmpty);
    });
  });
}