import 'package:flutter/material.dart';

class DefaultContainer extends StatelessWidget {
  final double width;
  final double height;
  final Color colorContainer;
  final double circular;
  final Color colorBorder;
  final Widget? child;

  const DefaultContainer({
    super.key,
    required this.width,
    required this.height,
    this.colorContainer = Colors.white,
    this.circular = 7,
    this.colorBorder = Colors.black87,
    this.child
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / width,
      height: MediaQuery.of(context).size.height / height,
      decoration: BoxDecoration(
        color: colorContainer,
        borderRadius: BorderRadius.circular(circular),
        border: Border.all(color: colorBorder),
      ),
      child: child
    );
  }
}
