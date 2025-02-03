import 'package:cab_co19/features/shared_cab/constants/shared_cab_constants.dart';
import 'package:cab_co19/features/shared_cab/support%20Widget/passenger_count_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomChildrenCount extends StatefulWidget {
  const CustomChildrenCount({super.key});

  @override
  State<CustomChildrenCount> createState() => _CustomChildrenCountState();
}

class _CustomChildrenCountState extends State<CustomChildrenCount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: SharedCabConstant.inputBoxBg,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: const Row(
        children: [
          Icon(Icons.person),
          Gap(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "No. of Children",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              Text(
                "Less than 5 year old.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 11,
                ),
              ),
            ],
          ),
          Spacer(),
          CustomCounter(),
        ],
      ).px(12).py(5),
    );
  }
}
