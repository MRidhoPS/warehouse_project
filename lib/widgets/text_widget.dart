import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final double size;
  final Color colors;

  const TextWidget(
      {super.key,
      required this.text,
      this.size = 16,
      this.colors = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, color: colors),
    );
  }
}
