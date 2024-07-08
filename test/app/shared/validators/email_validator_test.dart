import 'package:flutter_test/flutter_test.dart';
import 'package:tests/app/shared/validators/email_validator.dart';

void main() {
  late EmailValidator emailValidator;

  setUp(() {
    emailValidator = EmailValidator();
  });
  group(
    'Validate e-mail',
    () {
      test(
        'Must return an Erro message if the e-mail result is null',
        () {
          final result = emailValidator.validate();

          expect(result, equals("The e-mail field must be filled"));
        },
      );

      test(
        'Must return an Erro message if the e-mail result is empty',
        () {
          final result = emailValidator.validate(email: "");

          expect(result, equals('The e-mail field must be filled'));
        },
      );

      test(
        'Must return an Erro message if the e-mail result is invalid',
        () {
          final result = emailValidator.validate(email: "giuliano");

          expect(result, equals('Type a valid e-mail'));
        },
      );

      test(
        'Must return an Erro message if the e-mail is valid',
        () {
          final result =
              emailValidator.validate(email: "giuliano.notrealemail@gmail.com");

          expect(result, isNull);
        },
      );
    },
  );
}
