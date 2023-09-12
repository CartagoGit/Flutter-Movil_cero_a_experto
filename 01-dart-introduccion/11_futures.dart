void main() async {
  print('Inicio del main');

  httpGet(url: 'Lo que sea', time: 5)
      .then((value) => print(value))
      .catchError((onError) => print('Error en la petición: $onError'));

  print(await httpGetConAsync(url: 'Con async', time: 1));

  try {
    final value = await httpGet(url: 'desde try an catch', time: 1);
    print('exito: $value');
  } on Error {
    print('Hubo un Error');
  } on Exception catch (e) {
    print('Hubo una excepcion pero mostrandola $e');
  } catch (e) {
    print('fallo: $e');
  } finally {
    print('Fin try and catch');
  }
  print('Fin del programa');
}

/**
 * ? Holi
 */
Future<String> httpGet({required String url, int time = 3}) {
  return Future.delayed(Duration(seconds: time), () {
    // throw 'Error forzado';
    // throw Pepote(){
    //   print('algo');
    // }
    throw Exception('Error con expcecion o con lo que sea');
    // throw Error();
    // return 'Hola mundo desde $url';
  });
}

Future<String> httpGetConAsync({required String url, int time = 3}) async {
  try {
    return await Future.delayed(Duration(seconds: time), () {
      // throw 'Error forzado';
      return 'Hola mundo desde $url';
    });
  } catch (e) {
    return 'Error: $e';
  }
}
