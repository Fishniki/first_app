
import 'dart:math';
import 'package:flutter/material.dart';

var randomizer = Random();


class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var angkadadu = 1;

  void kocokdadu() {
    setState(() {
      angkadadu = randomizer.nextInt(5) + 1; //syntax tersebut mekukan gacha bilangan randon yang di mulai dari satu, dan terdapat 6 angka
    });
  }

  

  @override
  Widget build(BuildContext context) {
    return Column(
            mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/img/waifu-$angkadadu.png",
            width: 200,
          ),
          
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              kocokdadu();
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue, // Ubah warna teks tombol di sini
            ),
            child: const Text("Gacha Dadu")
          )
        ],
      );
  }
}