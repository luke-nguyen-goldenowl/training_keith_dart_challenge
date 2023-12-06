import 'dart:math';
import 'dart:io';

void game2() {
  int count = 0;
  Random random = new Random();
  String? select = "";
  int number = random.nextInt(101);

  do {
    print(
        "\nType exit to quit the game\nPlease choose a number between 0 and 100:");
    select = stdin.readLineSync() ?? "exit";

    if (select == "exit") continue;

    if (int.parse(select) == number) {
      print("Bingo! You tried $count times\n");
      break;
    } else if (int.parse(select) > number) {
      print("You are higher");
    } else {
      print("You are lower");
    }
    count++;
  } while (select != "exit");
}
