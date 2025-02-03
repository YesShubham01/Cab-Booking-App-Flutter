import 'package:cab_co19/utils/widgets/custom_button.dart';
import 'package:cab_co19/utils/widgets/custom_button_with_icon.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:velocity_x/velocity_x.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  late double w; // width
  late double h; // height
  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.sizeOf(context);
    w = dimensions.width;
    h = dimensions.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(h * 0.05),
            const Text(
              "We are at your Service.\nHow can we help?",
              style: TextStyle(
                  height: 1.1,
                  fontSize: 26,
                  fontWeight: FontWeight.w900,
                  color: Colors.black),
            ),
            Gap(h * 0.02),
            Column(
              children: [
                _buildTile("Own a vehicle?",
                    "Attach your Car and earn while you sleep."),
                Gap(h * 0.01),
                _buildTile("Believe in our Dream?", "Become an Investor."),
                Gap(h * 0.01),
                _buildTile("Do we inspire you?", "Work, Learn & Grow with Us."),
              ],
            ).px(10),
            const Spacer(),
            const CustomButtonWithIcon(
              text: "Call our Support Team",
              icon: Icons.phone,
              color: Colors.green,
            ).w(w),
            Gap(h * 0.02),
            const CustomButtonWithIcon(
              text: "Send on Whatsapp",
              icon: Icons.mark_chat_unread,
              color: Colors.blue,
            ).w(w),
            Gap(h * 0.02),
            SizedBox(
              width: w,
              child: const CustomButtonWithIcon(
                text: "Send us an Email",
                icon: Icons.mail,
                color: Colors.red,
              ),
            ),
            Gap(h * 0.035),
          ],
        ).px(w * 0.08),
      ),
    );
  }

  _buildTile(String title, String subtitle) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(Icons.arrow_forward_ios, size: 15).pOnly(top: 4),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 60, 60, 60),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
