abstract class Plane{
  //abstract method
  void fly ();
  void moveforward (int meters);
  void takeoff(){
    print('Plane : takeoff()');
  }
  landing() => print('Plane : Landing()');

  
}
class Beoing extends Plane{
  @override
  void fly(){
    print('Beoing Fly ()');
  }

  @override
  void moveforward(int meters){
    print('Beoing MoveForward  ($meters Meters)');
  }
}
void main(List<String> args) {
  //var p = Plane();
  var beoing = Beoing();

  beoing.takeoff();
  beoing.landing();
  beoing.fly();
  beoing.moveforward(150);
}