import 'package:cab_co19/utils/constants/text_strings.dart';
import 'package:cab_co19/utils/widgets/custom_appbar.dart';
import 'package:cab_co19/utils/widgets/custom_button.dart';
import 'package:cab_co19/utils/widgets/custom_container.dart';
import 'package:cab_co19/utils/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:velocity_x/velocity_x.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  late double w; // width
  late double h; // height

  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.sizeOf(context);
    w = dimensions.width;
    h = dimensions.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text(
          "E-Ticket",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Roboto'),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Gap(h * 0.01),
            _buildSection1().px(w * 0.04),
            Gap(h * 0.01),
            _buildSection2().px(w * 0.04),
            Gap(h * 0.01),
            CustomButton(
              text: "Done",
              onPressed: () {
                Navigator.of(context).pop();
              },
            ).px(w * 0.04).pOnly(top: w * 0.04, bottom: h * 0.04),
          ],
        ),
      ),
    );
  }

  Widget _buildSection1() {
    return CustomContainer(
      padding: EdgeInsets.symmetric(horizontal: w * 0.06, vertical: w * 0.08),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              _buildDetail("Category", "Shared", true),
              const Spacer(),
              _buildDetail("Trip Type", "One way", false),
            ],
          ),
          Gap(h * 0.015),
          Row(
            children: [
              _buildDetail("Source", "Place A", true),
              const Spacer(),
              _buildDetail("Destination", "Place B", false),
            ],
          ),
          Gap(h * 0.015),
          Row(
            children: [
              _buildDetail("Travel Date", "XX/XX/XXXX", true),
              const Spacer(),
              _buildDetail("Pick Up Time", "XX:XX AM", false),
            ],
          ),
          Gap(h * 0.015),
          Row(
            children: [
              _buildDetail("Seat No.", "X", true),
              const Spacer(),
              _buildDetail("Total Fare", "₹ XXXX", false),
            ],
          ),
          Gap(h * 0.03),
          _buildQrSection(),
        ],
      ),
    );
  }

  Widget _buildSection2() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: w * 0.06, vertical: w * 0.08),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 4,
            color: Colors.grey.shade300,
          )
        ],
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.assignment_late),
              Expanded(
                child: CustomText(
                  text: "Important Instructions:",
                  weight: FontWeight.bold,
                  size: 15,
                ),
              ),
            ],
          ),
          Gap(h * 0.005),
          _buildInstruction(
              "This QR will be scanned at the time of Boarding the Cab."),
          _buildInstruction("Max of 2 Luggage Bags allowed by each passenger"),
          _buildInstruction(
              "The driver/cab details will be shared ONLY one hour before Pick Up Time."),
          _buildInstruction("Pets are strictly prohibited in shared cabs."),
          _buildInstruction(
              "Consumption of alcohol/Contraband substances is strictly prohibited."),
          _buildInstruction(
              "In case of any Emergency. Call our support Team."), //todo: add contact number
          _buildInstruction(
              "For the safety of all passengers, ${TTexts.brand_name} does not entertain passengers without a Valid Booking. In case of anyone found travelling without a valid PNR Booking, report this to /support email/ immediately."),
          _buildInstruction(
              "We give utmost priority to the safety of our lady passengers."),
          _buildInstruction(
              "Please reach the Pick up point on time, the cabs will not wait beyond the waiting time of 15 mins to ensure an ON-TIME service."),
        ],
      ),
    );
  }

  Widget _buildDetail(String field, String data, bool isleft) {
    return Column(
      crossAxisAlignment:
          isleft ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      children: [
        CustomText(
          text: field,
          size: 18,
          weight: FontWeight.w600,
        ),
        CustomText(
          text: data,
          size: 16,
          weight: FontWeight.w300,
        ),
      ],
    );
  }

  Widget _buildQrSection() {
    return Column(
      children: [
        Container(
          color: Colors.grey,
          width: w * 0.4,
          height: w * 0.4,
          child: const Center(
            child: CustomText(
              text: "QR here",
              color: Colors.white,
            ),
          ),
        ),
        Gap(h * 0.04),
        const CustomText(
          text: "PNR : XXXXXXXX",
          weight: FontWeight.bold,
          size: 24,
        ),
        Gap(h * 0.005),
        const CustomText(
          text: "Status : Active",
          // weight: FontWeight.bold,
        ),
      ],
    );
  }

  Widget _buildInstruction(String instruction) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(Icons.arrow_forward_ios, size: 15).pOnly(top: 2),
        Expanded(
          child: CustomText(
            text: instruction,
            size: 15,
          ),
        ),
      ],
    ).pOnly(bottom: h * 0.01);
  }
}
