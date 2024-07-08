import 'package:flutter_test/flutter_test.dart';
import 'package:tests/app/shared/validators/password_validator.dart';

void main() {
  late PasswordValidator passwordValidator;

  setUp(
    () {
      passwordValidator = PasswordValidator();
    },
  );

  group(
    'Validade Password',
    () {
      test(
        "Must return an Error Message if password is null",
        () {
          final result = passwordValidator.validate();

          expect(result, equals('The password must be filled'));
        },
      );

      test(
        "Must return an Error Message if password is empty",
        () {
          final result = passwordValidator.validate(password: "");

          expect(result, equals('The password must be filled'));
        },
      );

      test(
        "Must return an Error Message if password contains fewer than 8 characters",
        () {
          final result = passwordValidator.validate(password: "123456");

          expect(result,
              equals('The password must contain at least 8 characters'));
        },
      );

      test(
        "Must return an Error Message if password does not contain any numbers",
        () {
          final result =
              passwordValidator.validate(password: "AnaCreativePassword");

          expect(
              result, equals('The password must contain at least one number'));
        },
      );

      test(
        "Must return an Error Message if password is valid",
        () {
          final result = passwordValidator.validate(password: "AnaPass3");

          expect(result, isNull);
        },
      );
    },
  );
}
