import 'dart:io';
import 'dart:math';

void game3() {
  int cows = 0, bulls = 0, attempts = 0, oldCows = 0;
  Random random = new Random();
  List<String> listNumber = [(random.nextInt(9) + 1).toString()];
  for (var i = 0; i < 3; i++) {
    listNumber.add(random.nextInt(10).toString());
  }

  String? yourChoose = "";

  print(listNumber);
  do {
    print("\nWelcome to Cows and Bulls\nType 'exit' to stop the game");
    print("Please choose a four digit number:");
    yourChoose = (stdin.readLineSync() ?? "exit").toLowerCase();

    if (int.tryParse(yourChoose) == null) continue;

    if (yourChoose.length > 4) {
      print("Incorrect number. Make sure to give 4 digit number!");
      continue;
    }

    oldCows = cows;

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

    if (cows - oldCows == 4) {
      print("Bingo!!!");
      break;
    }
  } while (yourChoose != "exit");
}
