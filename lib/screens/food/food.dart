import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mogu_mogu/models/food.dart';
import 'package:mogu_mogu/screens/food/food_card.dart';
import 'package:mogu_mogu/screens/food_profile/food_profile.dart';
import 'package:mogu_mogu/shared/styled_text.dart';
import 'package:mogu_mogu/theme.dart';

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  String dropdownValue = "all";
  var filteredFoods = List.from(foodItems);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StyledTitle("Baby Safe Food"),
                DropdownButton(
                  value: dropdownValue,
                  style: GoogleFonts.vollkorn(
                    textStyle: Theme.of(context).textTheme.titleMedium,
                  ),
                  underline: Container(height: 2, color: AppColors.textColor),
                  icon: Icon(
                    Icons.filter_alt_sharp,
                    size: 15,
                    color: AppColors.textColor,
                  ),
                  items: [
                    DropdownMenuItem<String>(value: "all", child: Text("All")),
                    DropdownMenuItem<String>(
                      value: "fruit",
                      child: Text("Fruit"),
                    ),
                    DropdownMenuItem<String>(value: "veg", child: Text("Veg")),
                    DropdownMenuItem<String>(
                      value: "meat",
                      child: Text("Meat"),
                    ),
                    DropdownMenuItem<String>(
                      value: "fish",
                      child: Text("Fish"),
                    ),
                  ],
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;

                      if (newValue == "all") {
                        filteredFoods = List.from(foodItems);
                      } else {
                        filteredFoods = List.from(
                          foodItems.where((food) => food.type == newValue),
                        );
                      }

                      print(filteredFoods[0].name);
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredFoods.length,
              itemBuilder: (_, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoodProfile(filteredFoods[index]),
                      ),
                    );
                  },
                  child: FoodCard(filteredFoods[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
