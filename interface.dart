abstract class Building{
  void draftBlueprint();
  void interior();
  void construct();
}
class House implements Building{
  @override
  void construct(){
    print('House : constuct()');
  }
  @override
  void draftBlueprint() => print('House : draftBlueprint()');
  @override
  void interior() => print('House : interior()');
}
void main(List<String> args) {
  var myhouse = House();
  myhouse.draftBlueprint();
  myhouse.interior();
  myhouse.construct();

}