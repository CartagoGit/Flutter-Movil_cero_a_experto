
void main() {
  final numeros = {
    1,
    2,
    3,
  };

  final Map<String, dynamic> pokemon = {
    'nombre': 'Charmander',
    'tipo': 'Fuego',
    'poder': 10,
    'isAlive': true,
    'abilities': ['Bola de fuego', 'Lanzallamas'],
    'sprites': {'front': 'charmander/front.png', 'back': 'charmander/back.png'},
  };

  print({pokemon, numeros, pokemon['nombre']});
  print(pokemon['sprites']['back']);
  print(pokemon['sprites'].runtimeType);
  print(pokemon.runtimeType);
  print(numeros.runtimeType == numeros.runtimeType);
  print(pokemon['isAlive'].runtimeType == true.runtimeType);
}
