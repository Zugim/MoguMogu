class Food {
  Food({
    required this.name,
    required this.month,
    required this.img,
    required this.id,
  });

  final String name;
  final int month;
  final int id;
  final String img;
  int likeLevel = 2;
}

List foodItems = [
  Food(name: "Banana", month: 6, img: "assets/img/food/banana.jpg", id: 01),
  Food(name: "Carrot", month: 6, img: "assets/img/food/carrot.jpg", id: 02),
  Food(name: "Apple", month: 6, img: "assets/img/food/apple.jpg", id: 03),
  Food(name: "Chicken", month: 7, img: "assets/img/food/chicken.jpg", id: 04),
  Food(
    name: "Green Pepper",
    month: 10,
    img: "assets/img/food/green_pepper.jpg",
    id: 05,
  ),
  Food(
    name: "Pineapple",
    month: 12,
    img: "assets/img/food/pineapple.jpg",
    id: 06,
  ),
  Food(name: "Shirasu", month: 6, img: "assets/img/food/shirasu.jpg", id: 07),
  Food(
    name: "Strawberry",
    month: 6,
    img: "assets/img/food/strawberry.jpg",
    id: 08,
  ),
  Food(name: "Tuna", month: 10, img: "assets/img/food/tuna.jpg", id: 09),
  Food(name: "Ham", month: 12, img: "assets/img/food/ham.jpg", id: 10),
];
