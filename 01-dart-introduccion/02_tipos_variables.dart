void main() {
  final String pokemon = 'Pikachu';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final sprites = <String>['pikachu/fron.png', 'pikachu/back.png'];

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  """);
}
