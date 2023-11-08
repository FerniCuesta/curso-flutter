void main() {
  print('inicio programa');

  httpGet('http://fernandocuesta.com').then((value) {
    print(value);
  }).catchError((error) {
    print('Error: $error');
  });

  print('fin programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    throw 'Error en la peticion http';
    //return 'Respuesta de la peticion http';
  });
}
