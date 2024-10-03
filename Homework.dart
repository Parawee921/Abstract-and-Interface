//วีรวรรณ เผ่าผาง 1122
import 'dart:math';

abstract class Shape{
  calculateArea();
}
abstract class Drawable {
  draw();
}
class Circle extends Shape implements Drawable{
  int? radius;
  Circle(this.radius);
  @override
  calculateArea() {
    // TODO: implement calculateArea
   //return print('Area of Circle ${3.14 * pow(radius!,2 )}');
    //String areaMessage = 'Area of Circle: ${ (pi * pow(radius!, 2)).toStringAsFixed(2) }';
    //print(areaMessage);
     print('Area of Circle: ${ (pi * pow(radius!, 2)).toStringAsFixed(2) }') ;
  }
  @override
  draw() {
    // TODO: implement draw
    print('Drawing Circle with radius : ${radius}');
  }
}
class Rectangle extends Shape implements Drawable{
  int? width;
  int? high;

  Rectangle(this.width,this.high);

  @override
  calculateArea() {
    // TODO: implement calculateArea
   print('Area of Rectangle : ${width! * high!}');

  }
  draw() => print('Drawing Rectangle with width:${width} and height: ${high}');
}
void main(List<String> args) {
  var ci = Circle(5);
 
  ci.calculateArea();
  ci.draw();

  var re = Rectangle(10,20);
  re.draw();
  re.calculateArea();
  
}
