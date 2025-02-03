import 'package:cab_co19/features/shared_cab/constants/shared_cab_constants.dart';
import 'package:flutter/material.dart';

class FromInputWidget extends StatefulWidget {
  final String hintText;
  const FromInputWidget({
    super.key,
    this.hintText = "Where From?",
  });

  @override
  State<FromInputWidget> createState() => _FromInputWidgetState();
}

class _FromInputWidgetState extends State<FromInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: SharedCabConstant.inputBoxBg,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: TextFormField(
        //    controller: controller,

        enableSuggestions: false,
        autocorrect: false,
        maxLines: 1,

        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          hintText: widget.hintText,
        ),
      ),
    );
  }
}
