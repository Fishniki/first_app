
// ignore_for_file: file_names

import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAligment = Alignment.topLeft;
const endAligment = Alignment.bottomRight;

// ignore: must_be_immutable
class GradienContainer extends StatelessWidget {
   const GradienContainer(this.color1, this.color2, this.color3, {super.key});

  final Color color1;
  final Color color2;
  final Color color3;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color1, color2, color3],
              begin: startAligment,
              end: endAligment)),
      child: const Center(
        child: DiceRoller(),
    ),
    );
  }
}
