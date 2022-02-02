import 'dart:io';
import 'dart:math';

/* A game of rock paper scissors between two or more players*/
/* How to Play
Rock beat Scissors
Scissors beat paper
Paper beats Rock*/

String playerOneMove() {
  print('Choose your move.\n (R)ock, (P)aper or (S)cissors');
  String? selection =

      // 'R';

      stdin.readLineSync();
  selection = selection?.toUpperCase();

  switch (selection) {
    case "R":
      return "Rock";
    case "P":
      return "Paper";
    case "S":
      return "Scissors";
    default:
      return "Quit";
  }
}

String playerTwoMove() {
  print('Choose your move.\n (R)ock, (P)aper or (S)cissors');
  String? selection = stdin.readLineSync();
  selection = selection?.toUpperCase();

  switch (selection) {
    case "R":
      return "Rock";
    case "P":
      return "Paper";
    case "S":
      return "Scissors";
    default:
      return "Quit";
  }
}

getAiMove() {
  Random random = new Random();
  int aimove = random.nextInt(3);

  switch (aimove) {
    case 0:
      return "Rock";
    case 1:
      return "Paper";
    case 2:
      return "Scissors";
    default:
      break;
  }
}

String winner(String playerOneMove, String getAimove, {String? playerTwoMove}) {
  if (playerOneMove == getAimove) {
    return "Tie";
  } else if (playerOneMove == 'Rock' && getAimove == 'Scissors') {
    return 'You win';
  } else if (playerOneMove == 'Scissors' && getAimove == 'Paper') {
    return 'You win';
  } else if (playerOneMove == 'Paper' && getAimove == 'Rock') {
    return 'You win';
  } else {
    return 'Computer Wins';
  }
}

void main() {
  // while (true) {
  print('Rock, Paper Scissors Game');
  String playerMove = playerOneMove();

  if (playerMove == 'Quit') {
    return;
  }

  print("You played $playerMove");
  String computer = getAiMove();
  print('Computer played $computer');
  print(winner(playerMove, computer));
  // }
}
