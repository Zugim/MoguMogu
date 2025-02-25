class Food {
  Food({required this.name, required this.month, required this.id});

  final String name;
  final int month;
  final int id;
  bool _hasTried = false;

  void toggleHasTried() {
    _hasTried = !_hasTried;
  }
}

List foodItems = [
  Food(name: "Banana", month: 6, id: 01),
  Food(name: "Carrot", month: 6, id: 02),
  Food(name: "Apple", month: 6, id: 03),
  Food(name: "Chicken", month: 7, id: 04),
  Food(name: "Green Pepper", month: 10, id: 05),
  Food(name: "Pineapple", month: 12, id: 06),
  Food(name: "Shirasu", month: 6, id: 07),
  Food(name: "Strawberry", month: 6, id: 08),
  Food(name: "Tuna", month: 10, id: 09),
  Food(name: "Ham", month: 12, id: 10),
];
