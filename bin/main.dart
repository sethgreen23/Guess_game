import 'package:guess_number/guess_game.dart';

main() {
  GuessGame guess=new GuessGame();
  do{
    int userInput=guess.userGuess();
    guess.checkUserInput(userInput);
    int computerInput=guess.computerGuess();
    guess.checkComputerInput(computerInput);
  }while(!guess.flag);

}
