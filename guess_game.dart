import 'dart:math';
import 'dart:io';

void main() {
  // bool playAgain = false;

  // Introductory Message to the Player
  print('Welcome to the Guessing Game');
  print('Chose your options');
  print('A: Play Game');
  print('B: Exit Game');

  void playGame() {
    int guess;
    Random random = new Random();
    int answer = random.nextInt(100);
    do {
      print('Enter your random Number');
      String? range = stdin.readLineSync();
      guess = int.parse(range!);

      if (guess < answer) {
        print('Too low');
      } else if (guess > answer) {
        print('Too high');
      }
    } while (guess != answer);
    print('You got it');

    // Option to replay the game or exit and play another game
    print('Chose your options');
    print('A: Replay Game');
    print('B: Exit Game');

    String? playerOption = stdin.readLineSync();
    playerOption = playerOption?.toUpperCase();

    if (answer == 'A') {
      playGame(); // gameplay restart
    } else {
      exit(0);
    }
  }
  String? option = stdin.readLineSync();
  option = option?.toUpperCase(); // Player choice: A or B.
  if (option == 'A') {
    playGame();
  } else if (option == 'B') {
    exit(0);
  } // Game running code mechanics
}
