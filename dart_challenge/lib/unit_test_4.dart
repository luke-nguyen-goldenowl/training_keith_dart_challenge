bool validatePassword(String password) {
  RegExp regex = RegExp(
      r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[!@#$%^&*()_+{}\[\]:;<>,.?~\\-]).{6,}$');

  return regex.hasMatch(password);
}
