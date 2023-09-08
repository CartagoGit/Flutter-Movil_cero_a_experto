void main() {
  final String pokemon = 'Pikachu';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final sprites = <String>['pikachu/fron.png', 'pikachu/back.png'];

  // dynamic comienza como null
  dynamic errorMessage = 'Un error';
  // dynamic? successMessage = 'El tipo dynamic no puede ser nulleable porque ya puede ser nulo de por si';
  errorMessage = null;
  errorMessage = true;
  // errorMessage++; Generaria un error porque no se puede sumar un entero a un booleano
  // etc...

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  """);
}
