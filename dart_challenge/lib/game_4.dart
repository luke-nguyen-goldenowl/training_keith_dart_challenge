import 'dart:io';

void game4() {
  String word = "HELLOWORLD";
  String? yourLetter = "";
  int numberChar = word.length;
  List<String> hint = List.filled(numberChar, "___");

  do {
    print(hint.join(" "));

    print("Please guess a letter:");
    yourLetter = (stdin.readLineSync() ?? "EXIT").toUpperCase();

    if (yourLetter.length > 1 || yourLetter == "EXIT") continue;

    if (word.contains(yourLetter)) {
      // word = word.replaceAll(yourLetter, "_");
      word.split("").asMap().forEach((index, value) {
        if (value == yourLetter) {
          hint[index] = yourLetter!;
          numberChar--;
        }
      });
    }
    print("");
  } while (numberChar != 0 && yourLetter != "EXIT");
  print(hint.join(" "));
  print("Bingo!!!!");
}
