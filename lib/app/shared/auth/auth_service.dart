import 'package:tests/app/shared/validators/email_validator.dart';
import 'package:tests/app/shared/validators/password_validator.dart';

class Auth {
  String? register(String? email, String? password) {
    final emailError = EmailValidator().validate(email: email);

    final passError = PasswordValidator().validate(password: password);

    return emailError ?? passError;
  }
}
