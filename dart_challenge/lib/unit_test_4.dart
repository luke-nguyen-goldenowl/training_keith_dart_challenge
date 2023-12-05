List<String> validatePassword(String password) {
//   Validate password

// - Tối thiểu 6 ký tự
// - Chứa ít nhất 1 số
// - Chứa ít nhất 1 ký tự đặc biệt
// - Chứa ít nhất 1 chữ cái
  List<String> result = [];

  if (password.length < 6) result.add("minimum 6 character");

  bool checkNumber = false, checkSpecial = false, checkAlphabet = false;

  List<String> number = "1234567890".split("");
  List<String> special = r"!@#$%^&*()".split("");
  List<String> char = "qwertyuiopasdfghjklzxcvbnm".split("");

  for (int i = 0; i < password.length; i++) {
    if (number.contains(password[i])) checkNumber = true;
    if (special.contains(password[i])) checkSpecial = true;
    if (char.contains(password[i])) checkAlphabet = true;
  }

  if (!checkNumber) result.add("minimum 1 number");
  if (!checkSpecial) result.add("minimum 1 special character");
  if (!checkAlphabet) result.add("minimum 1 alphabet character");

  return result;
}
