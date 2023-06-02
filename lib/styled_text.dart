import 'package:flutter/material.dart';

class StyledText extends StatefulWidget {
  final String text;
  const StyledText(this.text, {super.key});

  @override
  State<StyledText> createState() => _StyledTextState();
}

class _StyledTextState extends State<StyledText> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.text,
        style: const TextStyle(
          fontSize: 28,
          color: Colors.white,
        ));
  }
}
