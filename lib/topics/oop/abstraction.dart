// Abstract class
abstract class Shape {
  // Abstract method
  void draw();
}

// Concrete class
class Circle extends Shape {
  @override
  void draw() {
    print('Drawing a circle');
  }
}

void main() {
  Shape shape = Circle();
  shape.draw(); // Output: Drawing a circle
}
