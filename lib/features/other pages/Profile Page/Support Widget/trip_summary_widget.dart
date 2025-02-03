import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:velocity_x/velocity_x.dart';

class TripSummaryWidget extends StatefulWidget {
  const TripSummaryWidget({super.key});

  @override
  State<TripSummaryWidget> createState() => _TripSummaryWidgetState();
}

class _TripSummaryWidgetState extends State<TripSummaryWidget> {
  final int _completeCount = 0;
  final int _upcomingCount = 0;
  final int _cancelledCount = 0;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Trip Summary",
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Gap(5),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          width: w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _summaryStatItem(_completeCount, "Completed"),
              _whiteContainerBar(),
              _summaryStatItem(_upcomingCount, "Upcoming"),
              _whiteContainerBar(),
              _summaryStatItem(_cancelledCount, "Cancelled"),
            ],
          ),
        )
      ],
    ).w(w);
  }

  _summaryStatItem(int i, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "$i",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  _whiteContainerBar() {
    return Container(
      height: 40,
      width: 1,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5))),
    );
  }
}
