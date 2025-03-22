import 'package:cab_app/features/shared_cab/constants/shared_cab_constants.dart';
import 'package:flutter/material.dart';

class ToInputWidget extends StatefulWidget {
  final String hintText;
  const ToInputWidget({super.key, this.hintText = "To From?"});

  @override
  State<ToInputWidget> createState() => _ToInputWidgetState();
}

class _ToInputWidgetState extends State<ToInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: SharedCabConstant.inputBoxBg,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: TextFormField(
        //    controller: controller,

        enableSuggestions: false,
        autocorrect: false,
        maxLines: 1,

        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          hintText: widget.hintText,
        ),
      ),
    );
  }
}
