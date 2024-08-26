
mixin CanFly {
 dynamic canReallyFly (){
  print("can fly was triggered");
 }
}

mixin CanJump {
 dynamic canReallyFly (){
  print("can fly was triggered");
 }
}


class Animal with CanFly {
  final String name; 

  Animal({required this.name});

  dynamic canJump (){
    print("$name Can jump was called");
  }
}


