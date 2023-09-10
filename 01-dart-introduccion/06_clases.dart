void main() {
  final wolverine = new Hero(power: 'Regeneración', name: 'Logan');
  final chachito = new Hero(name: 'Chachote');

  print(wolverine);
  print(chachito);
}

class Hero {
  String name;
  String power;

  // Hero({required name, required power})
  //     : name = name,
  //       power = power;
  Hero({required this.name, this.power = 'No tiene poderes'});

  String _pepe() {
    // privado
    return 'pepe';
  }

  String retornaPepe() {
    return this._pepe();
  }

  @override
  String toString() {
    return 'Heroe: ${this.name} - ${this.power}';
  }
}
