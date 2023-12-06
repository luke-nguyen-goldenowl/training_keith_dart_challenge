import 'dart:io';
import 'dart:math';

void game3() {
  int cows = 0, bulls = 0, attempts = 0;
  Random random = new Random();
  List<String> listNumber =
      (random.nextInt(10000 - 1000) + 1000).toString().split("");

  String? yourChoose = "";

  do {
    print("\nWelcome to Cows and Bulls\nType 'exit' to stop the game");
    print("Please choose a four digit number:");
    yourChoose = (stdin.readLineSync() ?? "exit").toLowerCase();

    if (int.tryParse(yourChoose) == null) continue;

    if (yourChoose.length > 4) {
      print("Incorrect number. Make sure to give 4 digit number!");
      continue;
    }

    attempts++;
    for (int i = 0; i < 4; i++) {
      if (listNumber.contains(yourChoose[i])) {
        if (listNumber[i] == yourChoose[i]) {
          cows++;
        } else {
          bulls++;
        }
      }
    }
    print("Attempts: $attempts\nCows: $cows, Bulls: $bulls");

    if (cows == 4) {
      print("Bingo!!!");
      break;
    }
    cows = 0;
    bulls = 0;
  } while (yourChoose != "exit");
}
