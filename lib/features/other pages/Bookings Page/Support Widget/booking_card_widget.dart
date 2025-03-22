import 'package:cab_app/features/other%20pages/Feedback%20Page/Screen/feedback_page.dart';
import 'package:cab_app/features/other%20pages/Ticket%20Page/Screens/ticket_page.dart';
import 'package:cab_app/utils/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';

class BookingCardWidget extends StatefulWidget {
  const BookingCardWidget({super.key});

  @override
  State<BookingCardWidget> createState() => _BookingCardWidgetState();
}

class _BookingCardWidgetState extends State<BookingCardWidget> {
  late double w; // width
  late double h; // height

  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.sizeOf(context);
    w = dimensions.width;
    h = dimensions.height;
    return Container(
      padding: EdgeInsets.only(
          left: w * 0.04, right: w * 0.04, top: w * 0.04, bottom: w * 0.02),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            spreadRadius: 8,
            color: Colors.grey.shade300,
          )
        ],
        color: Colors.white,
      ),
      child: Column(
        children: [
          _buildDetailRow(),
          Gap(w * 0.04),
          _buildButtonsRow(),
        ],
      ),
    ).px(w * 0.05).py(w * 0.05);
  }

  Widget _buildDetailRow() {
    return Row(
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlutterLogo(),
            CustomText(
              text: "INNOVA",
              size: 14,
              weight: FontWeight.w600,
            ),
            CustomText(
              text: "SHARE",
              size: 13,
              weight: FontWeight.w400,
            ),
          ],
        ),
        Gap(w * 0.04),
        Expanded(
          child: Column(
            children: [
              _buildPnrAndStatusContainer(),
              Gap(w * 0.04),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDateAndLocation(),
                  const Spacer(),
                  _buildViewDetailButton(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  _buildButtonsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Get.to(const FeedBackPage());
          },
          child: const CustomText(
            text: "Give Review",
            color: Colors.deepPurple,
            size: 12,
            weight: FontWeight.w500,
          ),
        ),
        const CustomText(
          text: "Driver Details",
          color: Colors.deepPurple,
          size: 12,
          weight: FontWeight.w500,
        ),
        const CustomText(
          text: "Cancel Ticket",
          color: Colors.deepPurple,
          size: 12,
          weight: FontWeight.w500,
        ),
      ],
    );
  }

  Widget _buildDateAndLocation() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "01/01/2024",
          size: 14,
          weight: FontWeight.w500,
        ),
        CustomText(
          text: "Start to Finish",
          size: 12,
        ),
      ],
    );
  }

  Widget _buildViewDetailButton() {
    return InkWell(
      onTap: () {
        Get.to(const TicketPage());
      },
      child: const CustomText(
        text: "View Details >",
        color: Colors.deepPurple,
        size: 13,
        weight: FontWeight.w700,
      ),
    );
  }

  Widget _buildPnrAndStatusContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: w * 0.04, vertical: w * 0.01),
      decoration: const BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: const Row(
        children: [
          CustomText(
            text: "PNR : XXXXXX",
            color: Colors.white,
            size: 12,
          ),
          Spacer(),
          CustomText(
            text: "Status : Active",
            color: Colors.white,
            size: 12,
          ),
        ],
      ),
    );
  }
}
