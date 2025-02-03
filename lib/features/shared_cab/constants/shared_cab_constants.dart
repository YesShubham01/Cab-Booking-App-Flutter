import 'package:flutter/material.dart';

class SharedCabConstant {
  SharedCabConstant._();

  static Color inputBoxBg = const Color.fromARGB(255, 239, 239, 239);

  static Decoration inputBoxDecoration = BoxDecoration(
    color: SharedCabConstant.inputBoxBg,
    borderRadius: const BorderRadius.all(
      Radius.circular(100),
    ),
  );
}
