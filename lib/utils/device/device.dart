import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class TDevice {
  TDevice._();

  static double? screenHight = 0;
  static double? screenWidth = 0;

  static double? getScreenHight() {
    return screenHight = MediaQuery.sizeOf(Get.context!).height;
  }

  static double? getScreenWidth() {
    return screenWidth = MediaQuery.sizeOf(Get.context!).width;
  }
}
