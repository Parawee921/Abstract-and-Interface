abstract class Game{
  int? level;

  void start();
  void pause();
  void toContinue();
  void stop();
  void play ();
}
abstract class Player {
  String? name;
  int selectgame();
  bool isPlayer();
}
abstract class Tictactoe implements Game,Player{
  @override
  void start() => print('Tictactoe : Start');
  void pause() => print('Tictactoe : Pause');
  void play () => print('Tictactoe : Play');
}
class TicTacToe extends Tictactoe{
  String? name;
  int? level;
  TicTacToe (this.name,this.level);
  @override
  void stop () => print('TicTacToe : Stop');
  void toContinue() => print('TicTacToe : toContinue');
  
  int selectgame() => 2;
  bool isPlayer() => true;
}

void main(List<String> args) {
  var tactoe = TicTacToe('xxx', 50);
  tactoe.start();
  tactoe.stop();
  tactoe.pause();
  tactoe.level = 50;
  print('Name: ${tactoe.name} Level: ${tactoe.level} level');
  print('Select Game is ${tactoe.selectgame()}');
  print('Is Player is ${tactoe.isPlayer()}');
}