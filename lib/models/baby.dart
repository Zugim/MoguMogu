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
}

List babies = [
  Baby(name: "Meisa", age: 9, favouriteFood: "Banana", id: 01),
  Baby(name: "Kai", age: 12, favouriteFood: "Rice Balls", id: 02),
  Baby(name: "Mia", age: 4, favouriteFood: "Milk", id: 03),
];
