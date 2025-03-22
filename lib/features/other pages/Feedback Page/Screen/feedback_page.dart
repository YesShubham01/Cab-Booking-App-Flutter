import 'package:cab_app/utils/constants/text_strings.dart';
import 'package:cab_app/utils/widgets/custom_appbar.dart';
import 'package:cab_app/utils/widgets/custom_button.dart';
import 'package:cab_app/utils/widgets/custom_container.dart';
import 'package:cab_app/utils/widgets/custom_ratingbar.dart';
import 'package:cab_app/utils/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:velocity_x/velocity_x.dart';

class FeedBackPage extends StatefulWidget {
  const FeedBackPage({super.key});

  @override
  State<FeedBackPage> createState() => _FeedBackPageState();
}

class _FeedBackPageState extends State<FeedBackPage> {
  late double w; // width
  late double h; // height

  late double sidePadding;
  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.sizeOf(context);
    w = dimensions.width;
    h = dimensions.height;
    sidePadding = w * 0.05;
    double gap = h * 0.03;
    return Scaffold(
      appBar: const CustomAppBar(title: "Give Us Your Feedback"),
      body: SafeArea(
          child: ListView(
        children: [
          _buildTextParagraph().px(sidePadding),
          Gap(gap),
          _buildTravelDetailSection().px(sidePadding),
          Gap(gap),
          _buildRatingSection().px(sidePadding),
          Gap(gap),
          _buildFeedbackCommentSection().px(sidePadding),
          Gap(gap),
          const CustomButton(text: "Submit")
              .px(sidePadding)
              .pOnly(top: h * 0.02, bottom: h * 0.04),
        ],
      )),
    );
  }

  Widget _buildTextParagraph() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
            size: 14,
            text:
                "Your Feedback helps us know what we are doing right and what we can improve to help you serve better."),
        Gap(h * 0.01),
        const CustomText(
            size: 14,
            text:
                "We assure you that the ${TTexts.brand_name} Team works relentlessly, to deliver a top-notch Travel Experience, the first of its kind in the region."),
        Gap(h * 0.01),
        const CustomText(
            size: 14,
            text:
                "We hope you appreciate our initiative and help us make our service better."),
      ],
    );
  }

  Widget _buildTravelDetailSection() {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomText(
            text: "Travel Details",
            size: 16,
            weight: FontWeight.w600,
          ),
          Gap(h * 0.02),
          Row(
            children: [
              _buildDetail("Booking Type", "Shared", true),
              const Spacer(),
              _buildDetail("Booking PNR", "XXXXX", false),
            ],
          ),
          Gap(h * 0.015),
          Row(
            children: [
              _buildDetail("Trip Detail", "Place A - Place B", true),
              const Spacer(),
              _buildDetail("Travel Date", "XX/XX/XXXX", false),
            ],
          ),
          Gap(h * 0.015),
          Row(
            children: [
              _buildDetail("Car type", "Innova", true),
              const Spacer(),
              _buildDetail("Pick Up Time", "XX:XX AM", false),
            ],
          ),
          Gap(h * 0.015),
          Row(
            children: [
              _buildDetail("Driver Name", "xxxx", true),
              const Spacer(),
              _buildDetail("Car Registration No.", "XXXXXXX", false),
            ],
          ),
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
          size: 14,
          weight: FontWeight.w600,
        ),
        CustomText(
          text: data,
          size: 14,
          weight: FontWeight.w300,
        ),
      ],
    );
  }

  // ignore: prefer_final_fields
  double _driverRating = 0;

  Widget _buildRatingSection() {
    double gap = h * 0.01;
    return CustomContainer(
      child: Column(
        children: [
          _buildRating("Driver Rating"),
          Gap(gap),
          _buildRating("Punctuality Rating"),
          Gap(gap),
          _buildRating("Cleanliness Rating"),
          Gap(gap),
          _buildRating("Car Condition Rating"),
          Gap(gap),
          _buildRating("Call Support Team Rating"),
        ],
      ),
    );
  }

  _buildRating(String text) {
    return Column(
      children: [
        const CustomRatingBar(),
        Gap(h * 0.005),
        CustomText(
          text: "$text : 0.0",
          weight: FontWeight.w300,
        ),
      ],
    );
  }

  Widget _buildFeedbackCommentSection() {
    return CustomContainer(
      child: TextFormField(
        // controller: _feedbackController,
        minLines: 1,
        maxLines: null,
        style: const TextStyle(
          color: Colors.black,
        ),
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Your Feedback',
        ),
        // validator: (value) {
        //   if (value == null || value.isEmpty) {
        //     return 'Please enter your feedback';
        //   }
        //   return null;
        // },
      ),
    );
  }
}
