import 'package:cab_app/features/shared_cab/available%20shared%20cab%20page/screens/Support%20Widget/available_cabs_card_widget.dart';
import 'package:cab_app/utils/widgets/custom_round_container.dart';
import 'package:cab_app/utils/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:velocity_x/velocity_x.dart';

class AvailableSharedCabsPage extends StatefulWidget {
  const AvailableSharedCabsPage({super.key});

  @override
  State<AvailableSharedCabsPage> createState() =>
      _AvailableSharedCabsPageState();
}

class _AvailableSharedCabsPageState extends State<AvailableSharedCabsPage> {
  late double w; // width
  late double h; // height

  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.sizeOf(context);
    w = dimensions.width;
    h = dimensions.height;
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          text: "Can't find your Timing?",
          weight: FontWeight.w600,
          size: 16,
        ),
        actions: [_buildActionButton()],
      ),
      body: SafeArea(
        child: ListView(children: [
          const AvailableCabsCard(),
          Gap(h * 0.01),
          const AvailableCabsCard(),
        ]),
      ),
    );
  }

  _buildActionButton() {
    return CustomColorContainer(
      color: Colors.blue,
      padding: EdgeInsets.symmetric(horizontal: w * 0.04, vertical: h * 0.01),
      child: const CustomText(
        text: "Tell us",
        color: Colors.white,
      ),
    ).px(w * 0.04);
  }
}
