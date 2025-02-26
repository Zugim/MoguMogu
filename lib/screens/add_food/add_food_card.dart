import 'package:flutter/material.dart';
import 'package:mogu_mogu/models/food.dart';
import 'package:mogu_mogu/theme.dart';

class AddFoodCard extends StatelessWidget {
  const AddFoodCard(this.foodItem, {super.key});

  final Food foodItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: Row(
        children: [
          Image.asset(foodItem.img, width: 60, height: 60, fit: BoxFit.cover),
          Row(children: []),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(foodItem.name),
          ),
          Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.add, color: AppColors.textColor, size: 16),
          ),
        ],
      ),
    );
  }
}
