void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Inteligencia',
    // 'isAlive': true
  };
  // final ironman =
  //     new Hero(name: 'Tony Stark', power: 'Inteligencia', isAlive: true);
  final ironman = new Hero.fromJson(rawJson);
  final ironman2 = Hero.fromJson2(rawJson);

  print(ironman);
  print(ironman2);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    required this.isAlive,
  });

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name',
        power = json['power'] ?? 'No power',
        isAlive = json['isAlive'] ?? false;

  static Hero fromJson2(Map<String, dynamic> json) {
    return Hero(
      name: json['name'] ?? 'No name',
      power: json['power'] ?? 'No power',
      isAlive: json['isAlive'] ?? false,
    );
  }

  @override
  String toString() {
    return 'Heroe: ${this.name} - ${this.power} - ${this.isAlive ? 'Live' : 'Dead'}';
  }
}
