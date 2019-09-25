
String scream(int length) => "H${'a' * length}h!";

main(){
  final values = [1, 2, 3, 5, 10, 50];

//     Method 1 :
  for(var length in values){
    print(scream(length));
  }

//     Method 2 :
  values.map(scream).forEach(print);

// Output :
//Hah!
//Haah!
//Haaah!
//Haaaaah!
//Haaaaaaaaaah!
//Haaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaah!

//   Skip , take
  values.skip(1).take(3).map(scream).forEach(print);

//  skip(1)skips the first value, 1, in the values list literal.
//  take(3)gets the next 3 values—2, 3, and 5—in the values list literal.

//  Output :
 //Haah!
//Haaah!
//Haaaaah!
}


