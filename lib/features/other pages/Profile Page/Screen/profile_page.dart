import 'package:cab_app/features/other%20pages/Profile%20Page/Support%20Widget/profile_detail_field_widget.dart';
import 'package:cab_app/features/other%20pages/Profile%20Page/Support%20Widget/profile_ratingbar_widget.dart';
import 'package:cab_app/features/other%20pages/Profile%20Page/Support%20Widget/trip_summary_widget.dart';
import 'package:cab_app/utils/constants/colors.dart';
import 'package:cab_app/utils/widgets/custom_appbar.dart';
import 'package:cab_app/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: const CustomAppBar(
        title: "My Profile",
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: h * 0.08,
              backgroundColor: const Color.fromARGB(255, 185, 194, 201),
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: h * 0.16,
              ),
            ),
            const Text(
              "Your Name",
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            const ProfileRatingBar(),
            Gap(h * 0.02),
            const TripSummaryWidget(),
            Gap(h * 0.02),
            _buildDetails(h),
          ],
        ).w(w).px(w * 0.06),
      ),
    );
  }

  _buildDetails(double h) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const ProfileDetailFieldWidget(
              title: "email ID",
              detail: "xyz@gmail.com",
            ),
            const Spacer(),
            _buildChangeEmailButton(),
          ],
        ),
        Gap(h * 0.01),
        const ProfileDetailFieldWidget(
          title: "Phone",
          detail: "+91 XXXXXXXXX",
        ),
        Gap(h * 0.01),
        const ProfileDetailFieldWidget(
          title: "Gender",
          detail: "Male",
        ),
      ],
    ).objectCenterLeft();
  }

  _buildChangeEmailButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
        decoration: BoxDecoration(
            color: TColors.customTeal,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: const Center(
          child: Text(
            "Change",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}
