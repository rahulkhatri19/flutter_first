import 'dart:math';
class Rectangle{

int width;
int height;
Point origin;

  Rectangle({this.origin= const Point(0,0), this.width = 0, this.height =0});

  @override 
  String toString() => 'Origin x:${origin.x} y:${origin.y} width:$width, height:$height';

}
main() {
 print(Rectangle(origin: const Point(4,3), width: 5, height: 6));
 print(Rectangle(origin: const Point(2,9)));
 print(Rectangle(width: 5));
 print(Rectangle(height: 6));
 print(Rectangle());

// Output :
// Origin x:4 y:3 width:5, height:6
// Origin x:2 y:9 width:0, height:0
// Origin x:0 y:0 width:5, height:0
// Origin x:0 y:0 width:0, height:6
// Origin x:0 y:0 width:0, height:0
}