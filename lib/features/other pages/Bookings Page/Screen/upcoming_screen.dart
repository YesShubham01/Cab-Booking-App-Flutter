import 'package:cab_app/features/other%20pages/Bookings%20Page/Support%20Widget/booking_card_widget.dart';
import 'package:flutter/material.dart';

class UpcomingBookingScreen extends StatefulWidget {
  const UpcomingBookingScreen({super.key});

  @override
  State<UpcomingBookingScreen> createState() => _UpcomingBookingScreenState();
}

class _UpcomingBookingScreenState extends State<UpcomingBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        BookingCardWidget(),
      ],
    );
  }
}
