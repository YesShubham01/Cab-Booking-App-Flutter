import 'package:cab_co19/features/authentication/account/login/controllers/navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(
                icon: Icon(Iconsax.reserve), label: 'Reserve'),
            NavigationDestination(icon: Icon(Iconsax.share), label: 'Shared'),
            NavigationDestination(icon: Icon(Iconsax.global), label: 'Explore'),
            NavigationDestination(icon: Icon(Iconsax.call), label: 'Contact'),
            NavigationDestination(
                icon: Icon(Iconsax.personalcard), label: 'Menu'),
          ],
        ),
      ),
      body: SafeArea(
          child: Obx(() => controller.screens[controller.selectedIndex.value])),
    );
  }
}
