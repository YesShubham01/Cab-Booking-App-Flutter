import 'package:cab_app/features/other%20pages/Bookings%20Page/Screen/cancelled_screen.dart';
import 'package:cab_app/features/other%20pages/Bookings%20Page/Screen/completed_screen.dart';
import 'package:cab_app/features/other%20pages/Bookings%20Page/Screen/upcoming_screen.dart';
import 'package:cab_app/utils/widgets/custom_appbar.dart';
import 'package:cab_app/utils/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class MyBookingPage extends StatefulWidget {
  const MyBookingPage({super.key});

  @override
  State<MyBookingPage> createState() => _MyBookingPageState();
}

class _MyBookingPageState extends State<MyBookingPage> {
  late double w; // width
  late double h; // height
  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.sizeOf(context);
    w = dimensions.width;
    h = dimensions.height;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: const Text(
            "My Bookings",
            style: TextStyle(fontSize: 18),
          ),
          bottom: const TabBar(
            dividerHeight: 0,
            indicatorColor: Colors.black,
            tabs: [
              Tab(
                icon: CustomText(
                  text: "Upcoming",
                  weight: FontWeight.w500,
                ),
              ),
              Tab(
                icon: CustomText(
                  text: "Completed",
                  weight: FontWeight.w500,
                ),
              ),
              Tab(
                icon: CustomText(
                  text: "Cancelled",
                  weight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        body: const SafeArea(
          child: TabBarView(
            children: [
              UpcomingBookingScreen(),
              CompletedBookingScreen(),
              CancelledBookingScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
