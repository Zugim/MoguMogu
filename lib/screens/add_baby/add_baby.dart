import 'package:flutter/material.dart';
import 'package:mogu_mogu/models/baby.dart';
import 'package:mogu_mogu/screens/home/home.dart';
import 'package:mogu_mogu/shared/styled_text.dart';
import "package:google_fonts/google_fonts.dart";

class AddBaby extends StatefulWidget {
  const AddBaby({super.key});

  @override
  State<AddBaby> createState() => _AddBabyState();
}

class _AddBabyState extends State<AddBaby> {
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _favFoodController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    _favFoodController.dispose();
    super.dispose();
  }

  void handleSubmit() {
    if (_nameController.text.trim().isEmpty ||
        _ageController.text.trim().isEmpty ||
        _favFoodController.text.trim().isEmpty) {
      print("Please fill in all fields");
      return;
    }

    babies.add(
      Baby(
        name: _nameController.text,
        age: int.parse(_ageController.text),
        favouriteFood: _favFoodController.text,
        id: babies[babies.length - 1].id + 1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: StyledTitle("MoguMogu"), centerTitle: true),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          spacing: 16,
          children: [
            StyledTitle("Add your baby"),
            Column(
              children: [
                TextField(
                  controller: _nameController,
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.child_care),
                    label: StyledText("Baby's Nickname"),
                  ),
                ),
                TextField(
                  controller: _ageController,
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.calendar_month),
                    label: StyledText("Baby's Age in Months"),
                  ),
                ),
                TextField(
                  controller: _favFoodController,
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.food_bank),
                    label: StyledText("Baby's Favorite Food"),
                  ),
                ),
              ],
            ),
            Center(
              child: FilledButton(
                onPressed: () {
                  handleSubmit();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                child: Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
