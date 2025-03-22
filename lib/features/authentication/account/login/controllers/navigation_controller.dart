import 'package:cab_app/features/contact/screen/contact_screen.dart';
import 'package:cab_app/features/explore/screen/explore_screen.dart';
import 'package:cab_app/features/menu/screen/menu_screen.dart';
import 'package:cab_app/features/shared_cab/screens/shared_cab_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../fullreserver/screens/reserve_cab_screen.dart';

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const ReserveCabScreen(),
    const SharedCabScreen(),
    const ExploreScreen(),
    const ContactScreen(),
    const MenuScreen(),
  ];
}
