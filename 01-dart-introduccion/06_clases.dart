void main() {
  final wolverine = new Hero(power: 'Regeneración', name: 'Logan');

  print(wolverine);
}

class Hero {
  String name;
  String power;

  Hero({required name, required power})
      : name = name,
        power = power;

  String _pepe() {
    return 'pepe';
  }

  String retornaNombre() {
    return this._pepe();
  }
}
