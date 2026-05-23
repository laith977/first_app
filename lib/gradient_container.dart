import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

Alignment startAlignment = Alignment.topLeft;
Alignment endAlignment = Alignment.bottomRight;

// color array instead of two colors
class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.colors,
  });
  const GradientContainer.purple({super.key})
    : colors = const [
        Color.fromARGB(255, 63, 5, 120),
        Color.fromARGB(255, 100, 5, 120),
      ];

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          spacing: 20,
          children: [DiceRoller()],
        ),
      ),
    );
  }
}
