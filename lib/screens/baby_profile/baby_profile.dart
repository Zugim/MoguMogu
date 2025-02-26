import 'package:flutter/material.dart';
import 'package:mogu_mogu/models/baby.dart';
import 'package:mogu_mogu/screens/add_food/add_food.dart';
import 'package:mogu_mogu/screens/baby_profile/baby_profile_food_card.dart';
import 'package:mogu_mogu/shared/styled_text.dart';
import 'package:mogu_mogu/theme.dart';

class BabyProfile extends StatefulWidget {
  const BabyProfile(this.baby, {super.key});

  final Baby baby;

  @override
  State<BabyProfile> createState() => _BabyProfileState();
}

class _BabyProfileState extends State<BabyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: StyledTitle("MoguMogu"), centerTitle: true),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddFood(widget.baby)),
          );
        },
        backgroundColor: AppColors.accentColor,
        foregroundColor: Colors.white,
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(
        children: [
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Image.asset("assets/img/avatar.png", width: 120),
                      StyledTitle(widget.baby.name),
                    ],
                  ),
                ),
              ],
            ),
          ),
          StyledHeading("Foods your baby has tried..."),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ListView.builder(
                itemCount: widget.baby.triedFoods.length,
                itemBuilder: (_, index) {
                  return BabyProfileFoodCard(widget.baby.triedFoods[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
