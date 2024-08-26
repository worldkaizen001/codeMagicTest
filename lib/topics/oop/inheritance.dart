// Base class
import 'package:senior/topics/mixins/mix.dart';

class Animal {
  void eat() {
    print('Animal is eating');
  }
}

// Derived class
class Dog extends Animal with CanFly, CanJump {
  void bark() {
    print('Dog is barking');
  }
}

void main() {
  var dog = Dog();
  dog.eat();  // Output: Animal is eating
  dog.bark(); // Output: Dog is barking
  dog.canReallyFly();
}
