import 'package:cab_app/utils/constants/colors.dart';
import 'package:cab_app/utils/constants/image_strings.dart';
import 'package:cab_app/utils/widgets/custom_appbar.dart';
import 'package:cab_app/utils/widgets/custom_button.dart';
import 'package:cab_app/utils/widgets/custom_container.dart';
import 'package:cab_app/utils/widgets/custom_round_container.dart';
import 'package:cab_app/utils/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:velocity_x/velocity_x.dart';

class ReferAndEarnPage extends StatefulWidget {
  const ReferAndEarnPage({super.key});

  @override
  State<ReferAndEarnPage> createState() => _ReferAndEarnPageState();
}

class _ReferAndEarnPageState extends State<ReferAndEarnPage> {
  late double w; // width
  late double h; // height

  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.sizeOf(context);
    w = dimensions.width;
    h = dimensions.height;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const CustomAppBar(
        title: "Refer & Earn",
        darktheme: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            _containerSection(),
            const Spacer(),
            const CustomText(
              text: "How to Refer?",
              color: Colors.white,
            ),
            Gap(h * 0.03),
            const CustomButton(
              text: "Refer & Earn",
              color: Colors.red,
            ).px(w * 0.08).pOnly(bottom: h * 0.04),
          ],
        ),
      ),
    );
  }

  Widget _containerSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: w * 0.06, vertical: h * 0.03),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(100),
          bottomRight: Radius.circular(100),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Lottie.asset(
            TImages.refer_and_earn_lottie,
            width: w,
            repeat: true,
            fit: BoxFit.contain,
          ),
          const CustomText(
            text: "You Earn When Your Friend Travels",
            weight: FontWeight.w500,
          ),
          Gap(h * 0.01),
          CustomColorContainer(
            color: Colors.pink.shade100,
            padding:
                EdgeInsets.symmetric(horizontal: w * 0.06, vertical: h * 0.01),
            child: const CustomText(text: "XXXXXX"),
          ),
          Gap(h * 0.02),
        ],
      ),
    );
  }
}
