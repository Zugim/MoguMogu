class Food {
  Food({
    required this.name,
    required this.month,
    required this.img,
    required this.type,
    required this.id,
  });

  final String name;
  final int month;
  final int id;
  final String img;
  final String type;
  int likeLevel = 2;
}

List foodItems = [
  Food(
    name: "Banana",
    month: 6,
    img: "assets/img/food/banana.jpg",
    type: "fruit",
    id: 01,
  ),
  Food(
    name: "Carrot",
    month: 6,
    img: "assets/img/food/carrot.jpg",
    type: "veg",
    id: 02,
  ),
  Food(
    name: "Apple",
    month: 6,
    img: "assets/img/food/apple.jpg",
    type: "fruit",
    id: 03,
  ),
  Food(
    name: "Chicken",
    month: 7,
    img: "assets/img/food/chicken.jpg",
    type: "meat",
    id: 04,
  ),
  Food(
    name: "Green Pepper",
    month: 10,
    img: "assets/img/food/green_pepper.jpg",
    type: "veg",
    id: 05,
  ),
  Food(
    name: "Pineapple",
    month: 12,
    img: "assets/img/food/pineapple.jpg",
    type: "fruit",
    id: 06,
  ),
  Food(
    name: "Shirasu",
    month: 6,
    img: "assets/img/food/shirasu.jpg",
    type: "fish",
    id: 07,
  ),
  Food(
    name: "Strawberry",
    month: 6,
    img: "assets/img/food/strawberry.jpg",
    type: "fruit",
    id: 08,
  ),
  Food(
    name: "Tuna",
    month: 10,
    img: "assets/img/food/tuna.jpg",
    type: "fish",
    id: 09,
  ),
  Food(
    name: "Ham",
    month: 12,
    img: "assets/img/food/ham.jpg",
    type: "meat",
    id: 10,
  ),
];
