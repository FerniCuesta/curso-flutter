void main() async {
  print('inicio programa');

  try {
    final value = await httpGet('http://fernandocuesta.com');
    print('Exito: $value');
  } on Exception catch (error) {
    print('Tenemos una Exception: $error');
  } catch (error) {
    print('OPPS!! Algo terrible ha pasado: $error');
  } finally {
    print('fin del try - catch');
  }

  print('fin programa');
}

// async always returns a Future
Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  // throw Exception('No hay parametros en la URL');
  throw 'Error en la peticion';

  // return 'Tenemos un valor de la peticion';
}
