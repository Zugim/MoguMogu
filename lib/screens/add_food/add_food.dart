import 'package:flutter/material.dart';
import 'package:mogu_mogu/models/baby.dart';
import 'package:mogu_mogu/models/food.dart';
import 'package:mogu_mogu/screens/add_food/add_food_card.dart';
import 'package:mogu_mogu/screens/baby_profile/baby_profile.dart';
import 'package:mogu_mogu/shared/styled_text.dart';
import 'package:mogu_mogu/theme.dart';

class AddFood extends StatefulWidget {
  const AddFood(this.baby, {super.key});

  final Baby baby;

  @override
  State<AddFood> createState() => _AddFoodState();
}

class _AddFoodState extends State<AddFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: StyledTitle("MoguMogu"), centerTitle: true),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      body: Builder(
        builder:
            (context) => Padding(
              padding: const EdgeInsets.all(16),
              child: Expanded(
                child: ListView.builder(
                  itemCount: foodItems.length,
                  itemBuilder: (_, index) {
                    return GestureDetector(
                      onTap: () {
                        Food triedFood = Food(
                          name: foodItems[index].name,
                          month: foodItems[index].month,
                          img: foodItems[index].img,
                          id: foodItems[index].id,
                          type: foodItems[index].type,
                        );

                        if (!widget.baby.triedFoods.any(
                          (food) => food.id == triedFood.id,
                        )) {
                          widget.baby.triedFoods.add(triedFood);
                          Navigator.pop(context);
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BabyProfile(widget.baby),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: AppColors.accentColor,
                              showCloseIcon: true,
                              content: StyledErrorText(
                                "${widget.baby.name} has already tried that food.",
                              ),
                            ),
                          );
                        }
                      },
                      child: AddFoodCard(foodItems[index]),
                    );
                  },
                ),
              ),
            ),
      ),
    );
  }
}
