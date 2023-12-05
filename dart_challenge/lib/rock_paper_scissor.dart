import 'dart:io';
import 'dart:math';

void rockPaperScissor() {
  int score = 0;
  List<String> select = ["rock", "paper", "scissors", "exit"];

  String? myChoose;
  String? yourChoose = "";

  Random random = new Random();

  do {
    print("Welcome to Rock, Paper, Scissors. \nType 'exit' to stop the game");
    print("Please choose Rock, Paper or Scissors: ");
    yourChoose = stdin.readLineSync() ?? "exit".toLowerCase();

    if (!select.contains(yourChoose)) {
      print("please choose  Rock, Paper or Scissors or exit to stop the game");
      continue;
    }

    myChoose = select[random.nextInt(3)];

    if ((myChoose == "rock" && yourChoose == "paper") ||
        (myChoose == "paper" && yourChoose == "scissors") ||
        (myChoose == "scissors" && yourChoose == "rock")) {
      print('You Win!!');
      score++;
    } else if (myChoose != yourChoose) {
      print("You Close!!");
      score--;
    } else {
      print("draw!!");
    }
  } while (yourChoose != "exit");

  print("total score: $score");
}
