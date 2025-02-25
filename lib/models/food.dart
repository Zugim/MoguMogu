class Food {
  Food({
    required this.name,
    required this.age,
    required this.month,
    required this.id,
  });

  final String name;
  final String age;
  final String month;
  final int id;
  bool _hasTried = false;

  void toggleHasTried() {
    _hasTried = !_hasTried;
  }
}
