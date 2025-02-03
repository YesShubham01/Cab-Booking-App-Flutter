import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomButtonWithIcon extends StatefulWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color color;
  final IconData icon;
  const CustomButtonWithIcon({
    super.key,
    required this.text,
    this.onPressed,
    this.color = Colors.black,
    this.icon = Icons.arrow_forward_ios,
  });

  @override
  State<CustomButtonWithIcon> createState() => _CustomButtonWithIconState();
}

class _CustomButtonWithIconState extends State<CustomButtonWithIcon> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        decoration: BoxDecoration(
            color: widget.color,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Row(
          children: [
            Icon(
              widget.icon,
              color: Colors.white,
            ),
            const Gap(10),
            Text(
              widget.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
