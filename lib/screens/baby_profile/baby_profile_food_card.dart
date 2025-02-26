import 'package:flutter/material.dart';
import 'package:mogu_mogu/models/food.dart';
import 'package:mogu_mogu/theme.dart';

class BabyProfileFoodCard extends StatefulWidget {
  const BabyProfileFoodCard(this.foodItem, {super.key});

  final Food foodItem;

  @override
  State<BabyProfileFoodCard> createState() => _BabyProfileFoodCardState();
}

class _BabyProfileFoodCardState extends State<BabyProfileFoodCard> {
  @override
  Widget build(BuildContext context) {
    List<bool> isSelected = [];

    if (widget.foodItem.likeLevel == 0) {
      isSelected = [true, false, false, false, false];
    }
    if (widget.foodItem.likeLevel == 1) {
      isSelected = [false, true, false, false, false];
    }
    if (widget.foodItem.likeLevel == 2) {
      isSelected = [false, false, true, false, false];
    }
    if (widget.foodItem.likeLevel == 3) {
      isSelected = [false, false, false, true, false];
    }
    if (widget.foodItem.likeLevel == 4) {
      isSelected = [false, false, false, false, true];
    }

    return Card(
      clipBehavior: Clip.hardEdge,
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                widget.foodItem.img,
                width: 76,
                height: 60,
                fit: BoxFit.cover,
              ),
              Row(children: []),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(widget.foodItem.name),
              ),
            ],
          ),

          LayoutBuilder(
            builder:
                (context, constraints) => ToggleButtons(
                  constraints: BoxConstraints.expand(
                    width: constraints.maxWidth / 5 - 1.2,
                  ),
                  isSelected: isSelected,
                  onPressed: (int newIndex) {
                    setState(() {
                      for (int index = 0; index < isSelected.length; index++) {
                        if (index == newIndex) {
                          isSelected[index] = true;
                          widget.foodItem.likeLevel = index;
                        } else {
                          isSelected[index] = false;
                        }
                      }
                    });
                  },
                  children: [
                    Icon(Icons.favorite),
                    Icon(Icons.sentiment_very_satisfied),
                    Icon(Icons.sentiment_neutral),
                    Icon(Icons.sentiment_very_dissatisfied),
                    Icon(Icons.warning),
                  ],
                ),
          ),
        ],
      ),
    );
  }
}
