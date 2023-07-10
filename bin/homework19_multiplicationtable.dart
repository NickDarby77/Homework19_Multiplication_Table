import 'dart:math';

// Question 1
abstract class Shape {
  double calculateArea();
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

// Question 2
class MultiplicationTable {
  int size;
  MultiplicationTable({required this.size});

  void printTable() {
    // int result = 0;
    for (int i = 1; i <= size; i++) {
      for (int e = 1; e <= size; e++) {
        int result = i * e;
        print('$i * $e = $result');
      }
      print('---------');
    }
  }
}

void main() {
  // 1
  List<Shape> shapes = [
    Rectangle(2, 5),
    Circle(4),
    Rectangle(3, 7),
    Circle(5),
  ];

  // for (Shape element in shapes) {
  //   double area = element.calculateArea();
  //   print('The area of the shape is: $area');
  // }

  for (int i = 0; i < shapes.length; i++) {
    Shape x = shapes[i];
    double area = x.calculateArea();
    print('The area of shape $i is: $area');
  }

  // for (int i = 0; i < shapes.length; i++) {
  //   print('The area of shape $i is: ${shapes[i].calculateArea()}');

  // 2
  MultiplicationTable table = MultiplicationTable(size: 5);
  table.printTable();
}
