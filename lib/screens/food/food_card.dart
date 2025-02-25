import 'package:flutter/material.dart';
import 'package:mogu_mogu/models/food.dart';
import 'package:mogu_mogu/theme.dart';

class FoodCard extends StatelessWidget {
  const FoodCard(this.foodItem, {super.key});

  final Food foodItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            Text(foodItem.name),
            Expanded(child: SizedBox()),
            IconButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => {BabyProfile(baby)}),
                // );
              },
              icon: Icon(
                Icons.arrow_forward,
                color: AppColors.textColor,
                size: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
