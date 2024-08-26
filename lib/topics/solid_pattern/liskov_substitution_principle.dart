// Base class
class Bird {
  void fly() {
    print('Flying');
  }
}

// Subclass
class Sparrow extends Bird {
  @override
  void fly() {
    print('Sparrow flying');
  }
}

// Incorrect Subclass violating LSP
class Penguin extends Bird {
  @override
  void fly() {
    throw Exception('Penguins cannot fly');
  }
}

void main() {
  Bird bird = Sparrow();
  bird.fly(); // Output: Sparrow flying

  bird = Penguin();
  bird.fly(); // Throws exception, violates LSP
}
