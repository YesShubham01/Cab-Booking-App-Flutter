import 'dart:ffi';

import 'package:cab_app/features/shared_cab/available%20shared%20cab%20page/screens/select_cab_seat.dart';
import 'package:cab_app/utils/constants/colors.dart';
import 'package:cab_app/utils/constants/image_strings.dart';
import 'package:cab_app/utils/widgets/custom_container.dart';
import 'package:cab_app/utils/widgets/custom_round_container.dart';
import 'package:cab_app/utils/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class AvailableCabsCard extends StatefulWidget {
  const AvailableCabsCard({super.key});

  @override
  State<AvailableCabsCard> createState() => _AvailableCabsCardState();
}

class _AvailableCabsCardState extends State<AvailableCabsCard> {
  late double w; // width
  late double h; // height

  Color customLightBlue = Colors.blue.shade100;

  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.sizeOf(context);
    w = dimensions.width;
    h = dimensions.height;
    double gap = h * 0.01;
    double px = w * 0.015;
    return InkWell(
      onTap: () {
        Get.to(() => const SelectCabSeat());
      },
      child: CustomContainer(
        padding: EdgeInsets.symmetric(horizontal: w * 0.03, vertical: h * 0.03),
        child: Column(
          children: [
            // row 1
            Row(
              children: [
                _textContainer("From"),
                _customDivider().expand(),
                _textContainer("To"),
              ],
            ),
            Gap(gap),
            // row 2
            Row(
              children: [
                _buildLocationAndTime(
                    "Place A", "Stop Name", "Fir, 31 May", "XX:XX P.M.", true),
                const Spacer(),
                _buildLocationAndTime(
                    "Place B", "Stop Name", "Fir, 31 May", "XX:XX P.M.", false),
              ],
            ).px(px),
            Gap(gap),
            Row(
              children: [
                _buildfeatures(),
                const Spacer(),
                _buildCabImageAndName(),
              ],
            ).px(px),
            Gap(1.5 * gap),
            _availableSeatAndPrice(1, 1000),
          ],
        ),
      ).px(w * 0.04).pOnly(top: gap),
    );
  }

  _textContainer(String text) {
    return CustomColorContainer(
      color: customLightBlue,
      padding: EdgeInsets.symmetric(horizontal: w * 0.04, vertical: w * 0.02),
      child: CustomText(
        text: text,
        weight: FontWeight.w800,
        size: 20,
      ),
    );
  }

  Widget _customDivider() {
    return Row(
      children: [
        const CustomColorContainer(
          color: Colors.grey,
          padding: EdgeInsets.all(5),
        ),
        const Divider(
          color: Colors.grey,
          thickness: 3,
        ).expand(),
        Image(
          image: const AssetImage(TImages.cab_top_view),
          width: w * 0.15,
        ),
        const Divider(
          color: Colors.grey,
          thickness: 3,
        ).expand(),
        const CustomColorContainer(
          color: Colors.grey,
          padding: EdgeInsets.all(5),
        ),
      ],
    ).px(w * 0.01);
  }

  _buildLocationAndTime(
      String location, String stopName, String date, String time, bool align) {
    double textSize = 12;
    return Column(
      crossAxisAlignment:
          align ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      children: [
        CustomText(
          text: location,
          size: textSize + 2,
          weight: FontWeight.w600,
        ),
        CustomText(
          text: "($stopName)",
          size: textSize - 1,
        ),
        Gap(h * 0.005),
        Row(
          children: [
            CustomText(
              text: date,
              size: textSize,
              weight: FontWeight.w500,
            ),
            Gap(w * 0.01),
            CustomColorContainer(
              padding: EdgeInsets.symmetric(
                  horizontal: w * 0.01, vertical: w * 0.005),
              color: TColors.customTeal,
              child: CustomText(
                size: textSize,
                text: time,
                weight: FontWeight.w400,
                color: Colors.white,
              ),
            )
          ],
        ),
      ],
    );
  }

  _buildfeatures() {
    double gap = h * 0.000;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _iconAndText(Icons.ac_unit, "Air Conditioned"),
        Gap(gap),
        _iconAndText(Icons.fastfood, "On-Board Refreshment"),
        Gap(gap),
        _iconAndText(Icons.card_travel, "1 Trolley & Hand Bag per seat"),
      ],
    );
  }

  _iconAndText(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 12),
        Gap(w * 0.01),
        CustomText(
          text: text,
          size: 12,
          weight: FontWeight.w500,
        ),
      ],
    );
  }

  _buildCabImageAndName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomColorContainer(
          color: Colors.grey,
          padding:
              EdgeInsets.symmetric(horizontal: w * 0.04, vertical: w * 0.04),
          child: const CustomText(
            color: Colors.white,
            text: "Cab image",
            size: 11,
          ),
        ),
        const CustomText(
          text: "Innova Crysta",
          size: 12,
          weight: FontWeight.w500,
        ),
      ],
    );
  }

  _availableSeatAndPrice(int availableSeats, int ticketPrice) {
    return CustomColorContainer(
      color: customLightBlue,
      padding: EdgeInsets.symmetric(vertical: h * 0.015, horizontal: w * 0.02),
      child: Row(
        children: [
          const Icon(Icons.chair, size: 12),
          Gap(w * 0.01),
          CustomText(
            text: "Seat Left: $availableSeats",
            size: 12,
            weight: FontWeight.w700,
          ),
          const Spacer(),
          CustomText(
            text: "Starts @ ₹ $ticketPrice",
            size: 12,
            weight: FontWeight.w700,
          ),
        ],
      ),
    );
  }
}
