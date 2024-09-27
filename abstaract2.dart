abstract class ElectricAppliance{
  void on();
  void off();
  void work();
}
abstract class Fan1 extends ElectricAppliance{
  @override
  void on(){
    print('Fan1 On()');
  }

  @override
  void off(){
    print('Fan1 Off()');
  }
}
class Fan2 extends Fan1{
  @override
  void work(){
    print('Fan2 Work()');
  }
}
void main(List<String> args) {
  /*var fan2 = Fan2();
  fan2.on();
  fan2.off();
  fan2.work();*/

  useElectric(Fan2());
  var toshiba = Fan2();
  useElectric(toshiba);
}
void useElectric(ElectricAppliance elec){
  elec.on();
  elec.off();
  elec.work();
}