// Base class
class Animal {
  void makeSound() {
    print('Animal sound');
  }
}

// Derived class 1
class Dog extends Animal {
  @override
  void makeSound() {
    print('Bark');
  }
}

// Derived class 2
class Cat extends Animal {
  @override
  void makeSound() {
    print('Meow');
  }
}

void main() {
  Animal myAnimal = Dog();
  
  myAnimal.makeSound(); // Output: Bark

  myAnimal = Cat();
  myAnimal.makeSound(); // Output: Meow
}
