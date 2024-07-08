import 'package:flutter_test/flutter_test.dart';
import 'package:tests/app/shared/auth/auth_service.dart';

void main() {
  late Auth auth;

  setUp(() {
    auth = Auth();
  });
  group("Validate Credentials", () {
    test(
      'Must return a message if the credentials are invalid',
      () {
        final result = auth.register('Wilson', '123');

        expect(result, isA<String>());
      },
    );

    test(
      'Must return a message if the credentials are valid',
      () {
        final result = auth.register('Wilson@gmail.com', 'WilsonPass123');

        expect(result, isNull);
      },
    );
  });
}
