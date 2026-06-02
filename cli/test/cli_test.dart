import 'package:cli/cli.dart';
import 'package:test/test.dart';

void main() {
  test('appVersion não está vazio', () {
    expect(appVersion, isNotEmpty);
  });

  test('appVersion tem formato de versão válido (x.y.z)', () {
    final versionRegex = RegExp(r'^\d+\.\d+\.\d+$');
    expect(versionRegex.hasMatch(appVersion), isTrue);
  });
}