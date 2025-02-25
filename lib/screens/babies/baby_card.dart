import 'package:flutter/material.dart';
import 'package:mogu_mogu/models/baby.dart';
import 'package:mogu_mogu/screens/baby_profile/baby_profile.dart';
import 'package:mogu_mogu/theme.dart';

class BabyCard extends StatelessWidget {
  const BabyCard(this.baby, {super.key});

  final Baby baby;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            Text(baby.name),
            Expanded(child: SizedBox()),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BabyProfile(baby)),
                );
              },
              icon: Icon(
                Icons.arrow_forward,
                color: AppColors.textColor,
                size: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
