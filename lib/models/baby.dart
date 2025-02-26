class Baby {
  Baby({
    required this.name,
    required this.age,
    required this.favouriteFood,
    required this.id,
  });

  final String name;
  final int age;
  final String favouriteFood;
  final int id;
  List triedFoods = [];
}

List babies = [Baby(name: "Meisa", age: 9, favouriteFood: "Banana", id: 1)];
