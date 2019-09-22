
class Bicycle{
  int wheel;
  int _speed=0;
   int get speed => _speed;
  int gear;

void speedDown(int decrease){
 _speed -= decrease; 
}

void speedUp(int increse){
_speed +=increse;
}
  Bicycle(this.wheel, this.gear);
  @override
  String toString() => 'Bycycle $speed mph';
}


void main(){

  var bike= Bicycle(2, 7);
  print(bike);
}
