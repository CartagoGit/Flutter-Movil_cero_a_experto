void main() async {
  print('Inicio del main');

  httpGet('Lo que sea')
      .then((value) => print(value))
      .catchError((onError) => print('Error en la petición: $onError'));



  print(await httpGetConAsync('Con async'));
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

Future<String> httpGetConAsync(String url) async {
  try {
    return await Future.delayed(const Duration(seconds: 2), () {
      // throw 'Error forzado';
      return 'Hola mundo desde $url';
    });
  } catch (e) {
    return 'Error: $e';
  }
}
