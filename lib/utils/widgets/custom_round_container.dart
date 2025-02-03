import 'package:flutter/material.dart';

class CustomColorContainer extends StatefulWidget {
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final BorderRadiusGeometry? borderRadius;
  const CustomColorContainer(
      {super.key, this.child, this.padding, this.color, this.borderRadius});

  @override
  State<CustomColorContainer> createState() => _CustomColorContainerState();
}

class _CustomColorContainerState extends State<CustomColorContainer> {
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
        borderRadius: widget.borderRadius ??
            const BorderRadius.all(
              Radius.circular(5),
            ),
        color: widget.color ?? Colors.white,
      ),
      child: widget.child,
    );
  }
}
