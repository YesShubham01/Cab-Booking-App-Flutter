import 'package:cab_co19/utils/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class Seat {
  final int number;
  final double price;
  final SeatStatus status;

  Seat({required this.number, required this.price, required this.status});
}

enum SeatStatus { selected, available, unavailable }

class SeatWidget extends StatefulWidget {
  final Seat seat;

  const SeatWidget({super.key, required this.seat});

  @override
  State<SeatWidget> createState() => _SeatWidgetState();
}

class _SeatWidgetState extends State<SeatWidget> {
  late double w;
  late double h;
  @override
  Widget build(BuildContext context) {
    // var dimensions = MediaQuery.sizeOf(context);
    // w = dimensions.width;
    // h = dimensions.height;
    Color color;
    switch (widget.seat.status) {
      case SeatStatus.selected:
        color = Colors.green;
        break;
      case SeatStatus.available:
        color = Colors.black;
        break;
      case SeatStatus.unavailable:
        color = Colors.red;
        break;
    }

    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: color, width: 2),
            borderRadius: BorderRadius.circular(8),
          ),
          height: 30,
          width: 30,
          child: Center(
            child: CustomText(
              text: widget.seat.number.toString(),
              color: color,
              size: 20,
              weight: FontWeight.w600,
            ),
          ),
        ),
        CustomText(
          text: '₹${widget.seat.price}',
          color: color,
          size: 15,
        ),
      ],
    );
  }
}
