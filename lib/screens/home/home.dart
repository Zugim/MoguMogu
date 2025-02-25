import "package:flutter/material.dart";
import "package:mogu_mogu/models/baby.dart";
import "package:mogu_mogu/screens/home/baby_card.dart";
import "package:mogu_mogu/shared/styled_text.dart";
import "package:mogu_mogu/theme.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List babies = [
    Baby(name: "Meisa", favouriteFood: "Banana", id: 01),
    Baby(name: "Kai", favouriteFood: "Rice Balls", id: 02),
    Baby(name: "Mia", favouriteFood: "Milk", id: 03),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: StyledTitle("MoguMogu"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: babies.length,
                itemBuilder: (_, index) {
                  return BabyCard(babies[index]);
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.accentColor,
        foregroundColor: Colors.white,
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.child_care),
            label: 'Babies',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.food_bank), label: 'Food'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(141, 80, 81, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}
