void main() {
  print(greetEveryone());
  print(greetFernando());

  print('Suma int: ${addTwoNumbers(10, 20)}');
  print('Suma double: ${addTwoDoubleNumbers(10.5, 11.5)}');

  print(greetPerson(name: 'Fernando', message: 'Hola'));
}

String greetEveryone() {
  return 'Hello everyone!';
}

// Arrow notation
String greetFernando() => 'Hello Fernando';

int addTwoNumbers(int a, int b) {
  return a + b;
}

// Optional parameters
int addTwoNumbersOptional(int a, [int b = 0]) {
  return a + b;
}

double addTwoDoubleNumbers(double a, double b) => a + b;

// Named parameters
String greetPerson({required String name, String message = 'Hola'}) {
  return 'Greeting: $message $name';
}
