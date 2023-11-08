void main() {
  const String pokemon = "Ditto";
  const int hp = 100;
  const bool isAlive = true;
  const List<String> abilities = ['impostor'];
  const List<String> sprites = ['ditto/front.png', 'ditto/back.png'];

  //dynamic == null
  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5];
  errorMessage = {1, 2, 3, 4, 5};
  errorMessage = () => true;
  errorMessage = null;

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  """);
}
