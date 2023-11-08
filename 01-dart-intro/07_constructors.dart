void main() {
  final ironman = Hero(isAlive: false, power: 'Money', name: 'Tony Stark');

  print(ironman);

  final Map<String, dynamic> rawJson = {
    'name': 'Superman',
    'power': 'Fly',
    'isAlive': true
  };

  final superman = Hero.fromJson(rawJson);
  print(superman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, this.isAlive = true});

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power',
        isAlive = json['isAlive'] ?? false;

  @override
  String toString() {
    return '$name - $power - ${isAlive ? 'Alive' : 'Dead'}';
  }
}
