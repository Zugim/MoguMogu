import 'package:flutter/material.dart';
import 'package:mogu_mogu/models/baby.dart';
import 'package:mogu_mogu/screens/babies/baby_card.dart';
import 'package:mogu_mogu/screens/baby_profile/baby_profile.dart';
import 'package:mogu_mogu/shared/styled_text.dart';

class Babies extends StatefulWidget {
  const Babies({super.key});

  @override
  State<Babies> createState() => _BabiesState();
}

class _BabiesState extends State<Babies> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Row(children: [StyledTitle("Babies")]),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: babies.length,
              itemBuilder: (_, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BabyProfile(babies[index]),
                      ),
                    );
                  },
                  child: BabyCard(babies[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
