import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final double? radius;
  const CustomContainer({super.key, this.child, this.padding, this.radius});

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  late double w; // width
  late double h; // height
  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.sizeOf(context);
    w = dimensions.width;
    h = dimensions.height;
    return Container(
      padding: widget.padding ??
          EdgeInsets.symmetric(horizontal: w * 0.06, vertical: h * 0.03),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(widget.radius ?? 5),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 4,
            color: Colors.grey.shade300,
          )
        ],
        color: Colors.white,
      ),
      child: widget.child,
    );
  }
}
