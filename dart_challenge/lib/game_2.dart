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
    select = (stdin.readLineSync() ?? "exit").toLowerCase();

    var yourChoose = int.tryParse(select);
    if (yourChoose == null) continue;

    count++;
    if (yourChoose == number) {
      print("Bingo! You tried $count times\n");
      break;
    } else if (yourChoose > number) {
      print("You are higher");
    } else {
      print("You are lower");
    }
  } while (select != "exit");
}
