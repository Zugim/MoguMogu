import 'package:flutter/material.dart';
import 'package:mogu_mogu/models/food.dart';
import 'package:mogu_mogu/shared/styled_text.dart';

class FoodProfile extends StatefulWidget {
  const FoodProfile(this.food, {super.key});

  final Food food;

  @override
  State<FoodProfile> createState() => _FoodProfileState();
}

class _FoodProfileState extends State<FoodProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: StyledTitle("MoguMogu"), centerTitle: true),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(
        children: [
          Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  widget.food.img,
                  width: 180,
                  height: 160,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StyledTitle(widget.food.name),
                        StyledText(
                          "Your baby can eat\n${widget.food.name.toLowerCase()} at\n${widget.food.month} months old.",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            spacing: 16,
            children: [StyledTitle("Recipes"), StyledHeading("Coming Soon...")],
          ),
        ],
      ),
    );
  }
}
