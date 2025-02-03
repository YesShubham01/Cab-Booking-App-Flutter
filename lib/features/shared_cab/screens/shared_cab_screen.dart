import 'package:cab_co19/features/shared_cab/available%20shared%20cab%20page/screens/available_shared_cabs_page.dart';
import 'package:cab_co19/features/shared_cab/constants/shared_cab_constants.dart';
import 'package:cab_co19/features/shared_cab/support%20Widget/date_input_widget.dart';
import 'package:cab_co19/features/shared_cab/support%20Widget/from_input_widget.dart';
import 'package:cab_co19/features/shared_cab/support%20Widget/passenger_count_widget.dart';
import 'package:cab_co19/features/shared_cab/support%20Widget/to_input_widget.dart';
import 'package:cab_co19/utils/constants/colors.dart';
import 'package:cab_co19/utils/constants/text_strings.dart';
import 'package:cab_co19/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:velocity_x/velocity_x.dart';

class SharedCabScreen extends StatefulWidget {
  const SharedCabScreen({super.key});

  @override
  State<SharedCabScreen> createState() => _SharedCabScreenState();
}

class _SharedCabScreenState extends State<SharedCabScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(h * 0.05),
              const Text(
                "Comfort & Economy.\nBook a Seat in a\nLuxury Inova.",
                style: TextStyle(
                    height: 1.1,
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                    color: Colors.black),
              ),
              Gap(h * 0.01),
              Text(
                "On-Time Departure | Airport Connectivity |\nShared Innova",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey.shade800),
              ),
              Gap(h * 0.035),
              const FromInputWidget(),
              const Gap(1),
              const ToInputWidget(),
              Gap(h * 0.02),
              const CustomDateInput(),
              const Gap(1),
              const CustomPassengerCountInput(),
              Gap(h * 0.035),
              _buildBulletPoints(w, h),
              Gap(h * 0.035),
              SizedBox(
                width: w,
                child: CustomButton(
                  text: "FIND YOUR RIDE",
                  onPressed: () {
                    Get.to(() => const AvailableSharedCabsPage());
                  },
                ),
              ),
            ],
          ).px(w * 0.08),
        ),
      ),
    );
  }

  _buildBulletPoints(double w, double h) {
    return Column(
      children: [
        Row(
          children: [
            const Icon(Icons.star),
            const Gap(10),
            Text(
              "Timing & Availability on the Next Page",
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ).px(w * 0.02),
        Gap(
          h * 0.01,
        ),
        Row(
          children: [
            const Icon(Icons.star),
            const Gap(10),
            Text(
              "Seat Selection on the Third Page",
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ).px(w * 0.02),
      ],
    );
  }
}
