import "package:flutter/material.dart";
import "package:mogu_mogu/screens/babies/babies.dart";
import "package:mogu_mogu/screens/food/food.dart";
import "package:mogu_mogu/shared/styled_text.dart";
import "package:mogu_mogu/theme.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void actionButtonPressed() {
    if (_selectedIndex == 0) {
      print("BABIES");
    }
    if (_selectedIndex == 1) {
      print("FOOD");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (_selectedIndex == 0) {
          return Scaffold(
            appBar: AppBar(title: StyledTitle("MoguMogu"), centerTitle: true),
            floatingActionButton: FloatingActionButton(
              onPressed: actionButtonPressed,
              backgroundColor: AppColors.accentColor,
              foregroundColor: Colors.white,
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(Icons.add),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: NavigationBar(
              backgroundColor: AppColors.secondaryColor.withAlpha(150),
              indicatorColor: AppColors.primaryColor.withAlpha(150),
              destinations: [
                NavigationDestination(
                  icon: Icon(Icons.child_care),
                  label: 'Babies',
                ),
                NavigationDestination(
                  icon: Icon(Icons.food_bank),
                  label: 'Food',
                ),
              ],
              selectedIndex: _selectedIndex,
              onDestinationSelected: _onItemTapped,
            ),
            body: [Babies(), Food()][_selectedIndex],
          );
        } else {
          return Scaffold(
            appBar: AppBar(title: StyledTitle("MoguMogu"), centerTitle: true),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: NavigationBar(
              backgroundColor: AppColors.secondaryColor.withAlpha(150),
              indicatorColor: AppColors.primaryColor.withAlpha(150),
              destinations: [
                NavigationDestination(
                  icon: Icon(Icons.child_care),
                  label: 'Babies',
                ),
                NavigationDestination(
                  icon: Icon(Icons.food_bank),
                  label: 'Food',
                ),
              ],
              selectedIndex: _selectedIndex,
              onDestinationSelected: _onItemTapped,
            ),
            body: [Babies(), Food()][_selectedIndex],
          );
        }
      },
    );
  }
}

// Scaffold(
      // appBar: AppBar(title: StyledTitle("MoguMogu"), centerTitle: true),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: actionButtonPressed,
      //   backgroundColor: AppColors.accentColor,
      //   foregroundColor: Colors.white,
      //   elevation: 1,
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      //   child: Icon(Icons.add),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: NavigationBar(
      //   backgroundColor: AppColors.secondaryColor.withAlpha(150),
      //   indicatorColor: AppColors.primaryColor.withAlpha(150),
      //   destinations: [
      //     NavigationDestination(icon: Icon(Icons.child_care), label: 'Babies'),
      //     NavigationDestination(icon: Icon(Icons.food_bank), label: 'Food'),
      //   ],
      //   selectedIndex: _selectedIndex,
      //   onDestinationSelected: _onItemTapped,
      // ),
      // body: [Babies(), Food()][_selectedIndex],
//     );
