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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Image.asset("assets/img/avatar.png", width: 120),
                      StyledTitle(widget.food.name),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
