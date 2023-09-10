void main() {
  final cuadrado = new Square(side: 5);
  // cuadrado.side = 12;
  print(cuadrado);
  print('Area: ${cuadrado.calculateArea()}');
  print('Area: ${cuadrado.area}');
  print('Lado: ${cuadrado._side}');
}

class Square {
  late double _side;

  Square({required double side}) : assert(side > 0) {
    if (side <= 0) throw 'El lado no puede ser menor o igual a 0';
    _side = side;
  }

  double get area => this._side * this._side;

  set side(double value) {
    if (value <= 0) throw 'El lado no puede ser menor o igual a 0';
    this._side = value;
  }

  double calculateArea() => this._side * this._side;
}
