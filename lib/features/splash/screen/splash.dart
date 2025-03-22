import 'package:cab_app/features/authentication/account/login/screens/login.dart';
import 'package:cab_app/features/welcome/screens/welcome_screen.dart';
import 'package:cab_app/utils/constants/colors.dart';
import 'package:cab_app/utils/constants/image_strings.dart';
import 'package:cab_app/utils/constants/text_strings.dart';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:velocity_x/velocity_x.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  late double w; // width
  late double h; // height
  @override
  void initState() {
    // TODO: implement initState

    Future.delayed(
        const Duration(seconds: 3), () => Get.off(const WelcomeScreen()));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.sizeOf(context);
    w = dimensions.width;
    h = dimensions.height;
    return SafeArea(
        child: Scaffold(
      backgroundColor: TColors.primary,
      body: Stack(
        children: [
          Center(child: Image.asset(TImages.brand_logo).p(w * 0.3)),

          /// Copyright brand
          Container(
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.all(10),
              child: Text(
                TTexts.brand_name,
                style: Theme.of(context).textTheme.labelMedium,
              ))
        ],
      ),
    ));
  }
}
