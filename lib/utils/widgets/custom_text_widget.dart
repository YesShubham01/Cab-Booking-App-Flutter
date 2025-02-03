import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final FontWeight? weight;
  final double? size;
  final Color? color;

  const CustomText(
      {super.key, required this.text, this.weight, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        height: 1.2,
        color: color ?? Colors.black,
        fontSize: size ?? 15,
        fontWeight: weight ?? FontWeight.w400,
      ),
    );
  }
}
