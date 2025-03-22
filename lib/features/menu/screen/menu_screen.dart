import 'package:cab_app/features/dashboard/screen/dashboard_screen.dart';
import 'package:cab_app/features/menu/support%20widgets/custom_menu_list_tile.dart';
import 'package:cab_app/features/menu/support%20widgets/menu_header_widget.dart';
import 'package:cab_app/features/other%20pages/Bookings%20Page/Screen/booking_page.dart';
import 'package:cab_app/features/other%20pages/Feedback%20Page/Screen/feedback_page.dart';
import 'package:cab_app/features/other%20pages/Profile%20Page/Screen/profile_page.dart';
import 'package:cab_app/features/other%20pages/Refer%20&%20Earn%20Page/Screen/refer_and_earn.dart';
import 'package:cab_app/features/other%20pages/Ticket%20Page/Screens/ticket_page.dart';
import 'package:cab_app/features/other%20pages/Wallet%20Page/Screen/wallet_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  late double w; // width
  late double h; // height

  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.sizeOf(context);
    w = dimensions.width;
    h = dimensions.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const MenuHeaderWidget(),
            Flexible(
              child: ListView(
                children: [
                  CustomMenuListTile(
                    icon: Icons.person,
                    title: "My Profile",
                    subtitle: "View My Profile Details",
                    onPressed: () {
                      Get.to(() => const ProfilePage());
                    },
                  ),
                  CustomMenuListTile(
                      color: false,
                      icon: Icons.history,
                      title: "My Booking",
                      subtitle: "View All My Booked Rides",
                      onPressed: () {
                        Get.to(() => const MyBookingPage());
                      }),
                  CustomMenuListTile(
                    icon: Icons.person_pin,
                    title: "Cancel Ticket",
                    subtitle: "Cancel Your Ride",
                    onPressed: () {
                      Get.to(() =>
                          const TicketPage()); //todo move this to booking section
                    },
                  ),
                  CustomMenuListTile(
                    color: false,
                    icon: Icons.chat_outlined,
                    title: "Give Review",
                    subtitle: "Review Your Experience With Us",
                    onPressed: () {
                      Get.to(() =>
                          const FeedBackPage()); //todo move this to booking section
                    },
                  ),
                  const CustomMenuListTile(
                      icon: Icons.person_pin,
                      title: "Call Driver",
                      subtitle: "Call The Assigned Driver"),
                  CustomMenuListTile(
                    color: false,
                    icon: Icons.currency_rupee,
                    title: "My Wallet",
                    subtitle: "View Your Earnings",
                    onPressed: () {
                      Get.to(() => const WalletPage());
                    },
                  ),
                  const CustomMenuListTile(
                      icon: Icons.phone,
                      title: "Call Customer Support",
                      subtitle: "Call For Any Assistance"),
                  CustomMenuListTile(
                    color: false,
                    icon: Icons.share,
                    title: "Refer And Earn",
                    subtitle: "Earn When Your Friends Travels",
                    onPressed: () {
                      Get.to(() => const ReferAndEarnPage());
                    },
                  ),
                  const CustomMenuListTile(
                      icon: Icons.info,
                      title: "About Us",
                      subtitle: "Learn About Us"),
                  CustomMenuListTile(
                    color: false,
                    icon: Icons.exit_to_app,
                    title: "Logout",
                    subtitle: "SignOff From This Account",
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
