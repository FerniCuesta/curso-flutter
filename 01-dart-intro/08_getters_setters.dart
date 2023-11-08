void main() {
  final mySquare = Square(side: 10);

  print('Area: $mySquare');
  print('Area: ${mySquare.calculateArea()}');
}

class Square {
  double _side;

  // Builder
  Square({required double side})
      : assert(side >= 0, 'side must be >= 0'),
        _side = side;

  // Get
  double get area {
    return _side * _side;
  }

  // Get
  set side(double value) {
    if (value < 0) throw 'Value must be >= 0';

    _side = value;
  }

  double calculateArea() => _side * _side;
}
