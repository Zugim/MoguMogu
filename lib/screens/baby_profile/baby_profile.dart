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
            child: SizedBox(
              height: 160,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/img/avatar.png",
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 4,
                          children: [
                            StyledTitle(widget.baby.name),
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  color: AppColors.textColor,
                                ),
                                StyledText("  ${widget.baby.age} months old"),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: AppColors.textColor,
                                ),
                                StyledText(
                                  "  Loves ${widget.baby.favouriteFood.toLowerCase()}",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          StyledHeading(
            widget.baby.triedFoods.isNotEmpty
                ? "Food your baby has tried..."
                : "Please add some food...",
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ListView.builder(
                itemCount: widget.baby.triedFoods.length,
                itemBuilder: (_, index) {
                  return Dismissible(
                    direction: DismissDirection.endToStart,
                    onDismissed: (direction) {
                      setState(() {
                        widget.baby.triedFoods.removeAt(index);
                      });
                    },
                    background: Container(
                      margin: EdgeInsets.only(bottom: 16),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: AppColors.accentColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Icon(Icons.delete, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    key: ValueKey(widget.baby.triedFoods[index].name),
                    child: BabyProfileFoodCard(widget.baby.triedFoods[index]),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
