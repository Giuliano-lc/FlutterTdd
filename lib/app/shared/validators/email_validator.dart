class EmailValidator {
  String? validate({String? email}) {
    if (email == null || email == '') {
      return "The e-mail field must be filled";
    }
    final emailRegex = RegExp(r'^[\w\.-]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(email)) {
      return "Type a valid e-mail";
    }
    return null;
  }
}
