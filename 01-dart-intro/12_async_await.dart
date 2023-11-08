void main() async {
  print('inicio programa');

  try {
    final value = await httpGet('http://fernandocuesta.com');
    print(value);
  } catch (error) {
    print('Tenemos un error: $error');
  }

  print('fin programa');
}

// async always returns a Future
Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw 'Error en la peticion';

  // return 'Tenemos un valor de la peticion';
}
