import 'package:flutter/material.dart';
import 'package:mogu_mogu/models/food.dart';
import 'package:mogu_mogu/screens/food/food_card.dart';
import 'package:mogu_mogu/screens/food_profile/food_profile.dart';
import 'package:mogu_mogu/shared/styled_text.dart';

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Row(children: [StyledTitle("Baby Safe Food")]),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: foodItems.length,
              itemBuilder: (_, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoodProfile(foodItems[index]),
                      ),
                    );
                  },
                  child: FoodCard(foodItems[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
