class PasswordValidator {
  String? validate({String? password}) {
    if (password == null || password == "") {
      return 'The password must be filled';
    }
    if (password.length < 8) {
      return 'The password must contain at least 8 characters';
    }
    final numberRegExp = RegExp(r'^(?=.*[a-zA-Z])(?=.*[0-9]).+$');

    if (!numberRegExp.hasMatch(password)) {
      return 'The password must contain at least one number';
    }
    return null;
  }
}
