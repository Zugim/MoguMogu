class TriedFood {
  TriedFood({required this.name, required this.month, required this.id});

  final String name;
  final int month;
  final int id;
  bool _hasTried = false;

  void toggleHasTried() {
    _hasTried = !_hasTried;
  }
}
