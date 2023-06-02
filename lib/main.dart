import 'package:flutter/material.dart';
import 'dart:math';
import 'package:mac_p1/colors.dart';

void main() {
  runApp(const GradientContainer());
}

class GradientContainer extends StatefulWidget {
  const GradientContainer({super.key});

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  var myColors = MyColor();
  var activeDice = 2;
  void rollDice() {
    Random().nextInt(activeDice);
    setState(() {
      activeDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [myColors.orange, myColors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset("assets/images/dice-$activeDice.png", width: 200),
                TextButton(
                    onPressed: rollDice,
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        foregroundColor: Colors.white,
                        textStyle: const TextStyle(fontSize: 28)),
                    child: const Text("Roll Dice")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
