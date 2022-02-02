import 'dart:html';
import 'dart:async';



int numCorrect = 0;
int numMissed = 0;
int secondsLeft = 0;
String? secretWord;

List wordList = ['Dictionary', 'Believers', 'Baptist', 'Source'];

// check if the word is descrambled

void checkGuess(Event e) {
  String guess = (querySelector("#guess") as InputElement).value!.toUpperCase();
  if (guess == secretWord) {
    numCorrect++;
    querySelector("#num_correct")!.text = numMissed.toString();
    newWord();
  }
}

void tick(Timer t) {
  secondsLeft--;
  querySelector("#seconds_left")!.text = secondsLeft.toString();
  if (secondsLeft <= 0) {
    numMissed++;
    querySelector("#num_missed")!.text = numMissed.toString();
  }
}

void newWord() {
  secondsLeft = 60;
  wordList.shuffle();
  secretWord = wordList[0];
  List<String> tempList = secretWord!.split("");
  tempList.shuffle();
  querySelector("#scrambled_word")!.text = tempList.join();
  (querySelector("#guess") as InputElement).value;
}

void main() {
  querySelector("#guess")!.onKeyUp.listen(checkGuess);
  // Timer t = new Timer.periodic(const Duration(seconds: 1), tick);
  newWord();
}
