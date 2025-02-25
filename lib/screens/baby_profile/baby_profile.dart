import 'package:flutter/material.dart';
import 'package:mogu_mogu/models/baby.dart';
import 'package:mogu_mogu/shared/styled_text.dart';
import 'package:mogu_mogu/theme.dart';

class BabyProfile extends StatefulWidget {
  const BabyProfile(this.baby, {super.key});

  final Baby baby;

  @override
  State<BabyProfile> createState() => _BabyProfileState();
}

class _BabyProfileState extends State<BabyProfile> {
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.accentColor,
        foregroundColor: Colors.white,
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      body: StyledTitle(widget.baby.name),
    );
  }
}

// return Scaffold(
//       appBar: AppBar(title: StyledTitle("MoguMogu"), centerTitle: true),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//         child: Column(children: [StyledTitle(widget.baby.name)]),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         backgroundColor: AppColors.accentColor,
//         foregroundColor: Colors.white,
//         elevation: 1,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
//         child: Icon(Icons.add),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.child_care),
//             label: 'Babies',
//           ),
//           BottomNavigationBarItem(icon: Icon(Icons.food_bank), label: 'Food'),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Color.fromRGBO(141, 80, 81, 1),
//         onTap: _onItemTapped,
//       ),
//     );
