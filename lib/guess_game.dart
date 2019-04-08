import 'dart:math';
import 'dart:io';
class GuessGame{
  Random _rand;
  int _min,_max;
  int max_guess=50;
  int _guessedNumber;
  bool flag=false;
  GuessGame(){
    _rand=new Random();
    _guessedNumber=_rand.nextInt(max_guess);
    _min=0;
    _max=max_guess;

  }
  //fill the new range of computer choice
  List<int> fillList(int min,int max){
    int result =max-min;

    List<int> resultList=new List(result);
    for(int i=0;i<result;i++){
      resultList[i]=min;
      min++;
    }

    return resultList;
  }
  //get the index of the new compter guess from the list of computer choice
  int RandomComputerNumber(int listLength){
    int randomNumber=_rand.nextInt(listLength);
    return randomNumber;
  }
  //get the computer guess from the list
  int computerGuess(){
    List<int> madeList=fillList(_min,_max);
    int guessedNumber=RandomComputerNumber(madeList.length);
    return madeList[guessedNumber];
  }
  //check the user  guess
  void checkUserInput(int userInput){
    if(flag==false){
      if(userInput<_guessedNumber){

        print('Too Low');
        if(userInput>_min){
          _min=userInput;
        }

      }else if(userInput>_guessedNumber){
        print('Too Hight');
        if(userInput<_max){
          _max=userInput;
        }
      }else if(userInput==_guessedNumber){
        print('Really Good you Guess it the secret number is ${_guessedNumber}');
        flag=true;
      }
    }

  print(fillList(_min, _max));
  }
  //check the computer guess
  void checkComputerInput(int computerInput){
    if(flag==false){
      if(computerInput<_guessedNumber){
        print(computerInput);
        print('Too Low');
        _min=computerInput;
      }else if(computerInput>_guessedNumber){
        print(computerInput);
        print('Too Hight');
        _max=computerInput;
      }else if(computerInput==_guessedNumber){
        print('Really Good the computer Guess it the secret number is ${_guessedNumber}');
        flag=true;
      }
    }
    print(fillList(_min, _max));

  }
  // take the user guess
  int userGuess(){
    print("Give a Guess");
    int userGuess=int.parse(stdin.readLineSync()) ;
    return userGuess;
  }
}