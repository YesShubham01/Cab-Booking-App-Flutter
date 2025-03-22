import 'package:cab_app/features/fullreserver/screens/support%20widgets/children_count_widget.dart';
import 'package:cab_app/features/fullreserver/screens/support%20widgets/passenger_count_widget_reserve.dart';
import 'package:cab_app/features/shared_cab/available%20shared%20cab%20page/screens/Support%20Widget/available_cabs_card_widget.dart';
import 'package:cab_app/features/shared_cab/available%20shared%20cab%20page/screens/available_shared_cabs_page.dart';
import 'package:cab_app/features/shared_cab/support%20Widget/date_input_widget.dart';
import 'package:cab_app/features/shared_cab/support%20Widget/from_input_widget.dart';
import 'package:cab_app/features/shared_cab/support%20Widget/passenger_count_widget.dart';
import 'package:cab_app/features/fullreserver/screens/support%20widgets/time_input_widget.dart';
import 'package:cab_app/features/shared_cab/support%20Widget/to_input_widget.dart';
import 'package:cab_app/utils/constants/colors.dart';
import 'package:cab_app/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ReserveCabScreen extends StatelessWidget {
  const ReserveCabScreen({super.key});

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
                "Want flexibility?\nReserve an Entire Cab.\nAll Car Categories",
                style: TextStyle(
                    height: 1.1,
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                    color: Colors.black),
              ),
              Gap(h * 0.01),
              Text(
                "Door pick & drop | Flexible Timing | Private Cab | Dedicated Car",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey.shade800),
              ),
              Gap(h * 0.035),
              const FromInputWidget(hintText: "From Source"),
              const Gap(1),
              const ToInputWidget(hintText: "To Destination"),
              Gap(h * 0.02),
              const CustomDateInput(),
              const Gap(1),
              const CustomTimeInput(),
              Gap(h * 0.02),
              const CustomPassengerCountReserve(),
              const Gap(1),
              const CustomChildrenCount(),
              Gap(h * 0.035),
              SizedBox(
                width: w,
                child: CustomButton(
                  text: "BOOK A CAB",
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
}
