import 'package:cab_app/features/Stripe%20Payment/Screen/stripe_payment.dart';
import 'package:cab_app/utils/constants/colors.dart';
import 'package:cab_app/utils/constants/text_strings.dart';
import 'package:cab_app/utils/widgets/custom_appbar.dart';
import 'package:cab_app/utils/widgets/custom_button.dart';
import 'package:cab_app/utils/widgets/custom_container.dart';
import 'package:cab_app/utils/widgets/custom_round_container.dart';
import 'package:cab_app/utils/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';

class PassengerDetailScreen extends StatefulWidget {
  const PassengerDetailScreen({super.key});

  @override
  State<PassengerDetailScreen> createState() => _PassengerDetailScreenState();
}

class _PassengerDetailScreenState extends State<PassengerDetailScreen> {
  late double w; // width
  late double h; // height

  late EdgeInsetsGeometry containerPadding;
  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.sizeOf(context);
    w = dimensions.width;
    h = dimensions.height;
    containerPadding =
        EdgeInsets.symmetric(horizontal: w * 0.04, vertical: h * 0.02);

    double gap = h * 0.02;

    return Scaffold(
      appBar: const CustomAppBar(
          darktheme: true, title: "Primary Passenger Details"),
      body: SafeArea(
          child: ListView(
        children: [
          Gap(gap),
          _buildTravelDetailCard(),
          Gap(gap),
          _buildPassengerDetailInputCard(),
          Gap(gap),
          _buildFareDetailCard(),
          Gap(gap),
          _buildProceedButtonCard(),
          Gap(2 * gap),
        ],
      )),
    );
  }

  Widget _buildTravelDetailCard() {
    return CustomContainer(
      padding: containerPadding,
      radius: 10,
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: "Place A"),
              Icon(Icons.arrow_forward),
              CustomText(text: "Place B"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: "Place A"),
              Icon(Icons.arrow_forward),
              CustomText(text: "Place B"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: "Place A"),
              Icon(Icons.arrow_forward),
              CustomText(text: "Place B"),
            ],
          ),
        ],
      ),
    ).px(w * 0.04);
  }

  Widget _buildPassengerDetailInputCard() {
    double gap = h * 0.02;
    return CustomContainer(
      padding: containerPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            text: "Passenger Details",
            weight: FontWeight.bold,
          ),
          Gap(gap),
          const InputField(
            text: "First Name",
          ),
          Gap(gap / 2),
          const InputField(
            text: "Last Name",
          ),
          Gap(gap / 2),
          const InputField(
            text: "Email ID",
          ),
          Gap(gap / 2),
          Row(
            children: [
              const CustomText(
                text: "+91",
                weight: FontWeight.bold,
                size: 17,
              ).pOnly(top: 14),
              const Gap(10),
              const Expanded(
                child: InputField(
                  text: "Phone No.",
                ),
              ),
            ],
          ),
          // const Row(
          //   children: [
          //     CustomText(
          //       text: "+91",
          //       weight: FontWeight.bold,
          //       size: 13,
          //     ),
          //     Gap(10),
          //     InputField(
          //       text: "Email ID",
          //     ),
          //   ],
          // ),
        ],
      ),
    ).px(w * 0.04);
  }

  Widget _buildFareDetailCard() {
    double gap = h * 0.02;
    return CustomContainer(
      padding: containerPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            text: "Fare Details",
            weight: FontWeight.bold,
          ),
          Gap(gap),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: "Ride Fare",
              ),
              CustomText(
                text: "₹ XXXX.XX",
              ),
            ],
          ),
          Gap(gap / 2),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: "Goods & Services Tax (in INR)",
              ),
              CustomText(
                text: "₹ XXXX.XX",
              ),
            ],
          ),
          Gap(gap),
          CustomColorContainer(
            color: TColors.customTeal,
            padding:
                EdgeInsets.symmetric(horizontal: h * 0.02, vertical: w * 0.04),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Total Fare",
                  weight: FontWeight.bold,
                  color: Colors.white,
                ),
                CustomText(
                  text: "₹ XXXX.XX",
                  weight: FontWeight.bold,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    ).px(w * 0.04);
  }

  Widget _buildProceedButtonCard() {
    double gap = h * 0.02;
    return CustomContainer(
      padding: containerPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
              size: 12,
              text:
                  "By clicking on the PROCEED TO PAYMENT button, you agree to our Terms & Conditions of ${TTexts.brand_name} and that you have read our Privacy Policy and User Agreement."),
          Gap(gap / 2),
          const CustomText(
            size: 12,
            text: "Also make sure to check out Cancellation Policy.",
          ),
          Gap(gap),
          CustomButton(
            text: "Proceed To Payment",
            onPressed: () {
              print("payment page");
              Get.to(() => const PaymentPage(amount: 10));
            },
          ),
        ],
      ),
    ).px(w * 0.04);
  }
}

class InputField extends StatefulWidget {
  final TextEditingController? controller;
  final String? text;
  const InputField({super.key, this.controller, this.text});

  @override
  State<InputField> createState() => _InputFeildState();
}

class _InputFeildState extends State<InputField> {
  final TextEditingController _controller = TextEditingController();
  late double w; // width
  late double h; // height

  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.sizeOf(context);
    w = dimensions.width;
    h = dimensions.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CustomText(
          text: widget.text ?? 'Enter Detail',
        ),
        SizedBox(
          height: h * 0.04,
          child: TextField(
            cursorRadius: const Radius.circular(2),
            style: const TextStyle(color: Colors.black),
            controller: _controller,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
