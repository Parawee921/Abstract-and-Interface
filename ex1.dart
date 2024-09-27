abstract class Shape{
  int? dim1;
  int? dim2;

  //constactor
  Shape(this.dim1,this.dim2);

  
  void area();
}
class Rectangle extends Shape{
  
  Rectangle(dim1,dim2):super(dim1,dim2);

  @override
  void area(){
    print('The area of Rectangle is ${dim1! * dim2!}');
    
  }
}
class Triangle extends Shape{
  Triangle(dim1,dim2):super(dim1,dim2);

  @override
  void area(){
    print('The area of Triangle is ${(dim1! * dim2!)*1/2}');
  }
}
void main(List<String> args) {
  var rec = Rectangle(20, 10);
  var tri = Triangle(10,20);

  rec.area();
  tri.area();
}