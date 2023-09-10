void main() {
  print('Inicio del main');

  httpGet('Lo que sea')
      .then((value) => print(value))
      .catchError((onError) => print('Error en la petición: $onError'));
  print('Fin del programa');
}

/**
 * ? Holi
 */
Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 3), () {
    // throw 'Error forzado';
    return 'Hola mundo desde $url';
  });
}
