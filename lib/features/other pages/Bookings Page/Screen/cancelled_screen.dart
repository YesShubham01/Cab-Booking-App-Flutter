import 'package:cab_co19/features/other%20pages/Bookings%20Page/Support%20Widget/booking_card_widget.dart';
import 'package:flutter/material.dart';

class CancelledBookingScreen extends StatefulWidget {
  const CancelledBookingScreen({super.key});

  @override
  State<CancelledBookingScreen> createState() => _CancelledBookingScreenState();
}

class _CancelledBookingScreenState extends State<CancelledBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        BookingCardWidget(),
        BookingCardWidget(),
        BookingCardWidget(),
      ],
    );
  }
}
