import 'package:cab_app/features/other%20pages/Passenger%20Detail%20Page/Screen/passenger_detail_screen.dart';
import 'package:cab_app/utils/constants/image_strings.dart';
import 'package:cab_app/utils/widgets/custom_appbar.dart';
import 'package:cab_app/utils/widgets/custom_button.dart';
import 'package:cab_app/utils/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';

import 'Support Widget/cab_seat_widget.dart';

class SelectCabSeat extends StatefulWidget {
  const SelectCabSeat({super.key});

  @override
  State<SelectCabSeat> createState() => _SelectCabSeatState();
}

class _SelectCabSeatState extends State<SelectCabSeat> {
  late double w; // width
  late double h; // height
  final List<Seat> seats = [
    Seat(number: 1, price: 1184.76, status: SeatStatus.selected),
    Seat(number: 2, price: 1184.76, status: SeatStatus.available),
    Seat(number: 3, price: 1184.76, status: SeatStatus.unavailable),
    Seat(number: 4, price: 1184.76, status: SeatStatus.unavailable),
    Seat(number: 5, price: 1184.76, status: SeatStatus.available),
    Seat(number: 6, price: 1184.76, status: SeatStatus.available),
  ];
  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.sizeOf(context);
    w = dimensions.width;
    h = dimensions.height;

    double gap = h * 0.02;
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomText(
                text: '** All Seats are Front Facing.',
                color: Colors.red,
                weight: FontWeight.w600,
              ),
              _seatAndCabView(),
              Gap(gap),
              _seatStatusIndex(),
              Gap(gap),
              CustomButton(
                text: "Proceed",
                onPressed: () {
                  Get.to(() => const PassengerDetailScreen());
                },
              ).px(w * 0.06),
              Gap(2 * gap),
            ],
          ).w(w),
        ),
      ),
    );
  }

  _seatAndCabView() {
    return SizedBox(
      height: 400,
      width: w / 2,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: const Image(
              image: AssetImage(TImages.cab_top_view_select_seat),
              height: 400,
              // width: w * 1,
              fit: BoxFit.contain,
            ).opacity50(),
          ),
          Positioned(
            top: 165,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SeatWidget(seat: seats[0]),
                    const Gap(8),
                    const Icon(Icons.person, size: 50).pOnly(bottom: 15),
                  ],
                ),
                const Gap(5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SeatWidget(seat: seats[2]),
                    const Gap(5),
                    SeatWidget(seat: seats[3]),
                  ],
                ),
                const Gap(5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SeatWidget(seat: seats[4]),
                    const Gap(5),
                    SeatWidget(seat: seats[5]),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _seatStatusIndex() {
    double gap = h * 0.01;
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _iconWithText(Colors.green, "Seat Selected"),
            Gap(gap),
            _iconWithText(Colors.red, "Seat Unavailable "),
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _iconWithText(Colors.black, "Seat Available"),
            Gap(gap),
            _driverIconWithText(Icons.person, "Driver Seat"),
          ],
        ),
      ],
    ).px(w * 0.06);
  }

  _iconWithText(Color color, String text) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: color, width: 2),
            borderRadius: BorderRadius.circular(4),
          ),
          height: 18,
          width: 18,
        ),
        Gap(w * 0.02),
        CustomText(
          text: text,
          size: 14,
        ),
      ],
    );
  }

  _driverIconWithText(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          size: 18,
        ),
        Gap(w * 0.02),
        CustomText(
          text: text,
          size: 14,
        ),
      ],
    );
  }
}
