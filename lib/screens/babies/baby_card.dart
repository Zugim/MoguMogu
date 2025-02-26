import 'package:flutter/material.dart';
import 'package:mogu_mogu/models/baby.dart';
import 'package:mogu_mogu/theme.dart';

class BabyCard extends StatelessWidget {
  const BabyCard(this.baby, {super.key});

  final Baby baby;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Row(
          children: [
            Text(baby.name),
            Expanded(child: SizedBox()),
            Icon(Icons.arrow_forward, color: AppColors.textColor, size: 16),
          ],
        ),
      ),
    );
  }
}
