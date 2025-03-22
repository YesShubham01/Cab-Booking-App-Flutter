import 'package:cab_app/features/other%20pages/Bookings%20Page/Support%20Widget/booking_card_widget.dart';
import 'package:flutter/material.dart';

class CompletedBookingScreen extends StatefulWidget {
  const CompletedBookingScreen({super.key});

  @override
  State<CompletedBookingScreen> createState() => _CompletedBookingScreenState();
}

class _CompletedBookingScreenState extends State<CompletedBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        BookingCardWidget(),
        BookingCardWidget(),
      ],
    );
  }
}
