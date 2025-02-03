import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:velocity_x/velocity_x.dart';

class MenuHeaderWidget extends StatefulWidget {
  const MenuHeaderWidget({super.key});

  @override
  State<MenuHeaderWidget> createState() => _MenuHeaderWidgetState();
}

class _MenuHeaderWidgetState extends State<MenuHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return Container(
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            radius: 40,
            backgroundColor: Color.fromARGB(255, 185, 194, 201),
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 70,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.2),
                child: const Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                ),
              ),
              Gap(h * 0.01),
              const Text(
                "Your Name",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Gap(1),
              const Text(
                "yourname@gmail.com",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          )
        ],
      ).py(h * 0.03).px(w * 0.08),
    );
  }
}
