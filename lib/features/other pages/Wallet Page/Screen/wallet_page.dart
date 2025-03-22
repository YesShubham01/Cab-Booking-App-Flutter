import 'package:cab_app/utils/constants/colors.dart';
import 'package:cab_app/utils/constants/image_strings.dart';
import 'package:cab_app/utils/widgets/custom_appbar.dart';
import 'package:cab_app/utils/widgets/custom_container.dart';
import 'package:cab_app/utils/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:velocity_x/velocity_x.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  late double w; // width
  late double h; // height

  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.sizeOf(context);
    w = dimensions.width;
    h = dimensions.height;
    return Scaffold(
      appBar: const CustomAppBar(
        darktheme: true,
        title: "My Wallet",
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Lottie.asset(
              TImages.wallet_lottie,
              height: w * 0.6,
              width: w * 0.6,
              repeat: true,
              fit: BoxFit.contain,
            ),
            _balanceSection().px(w * 0.06),
          ],
        ),
      ),
    );
  }

  Widget _balanceSection() {
    double gap = h * 0.015;

    return CustomContainer(
      child: Column(
        children: [
          _buildTitleContainer(),
          Gap(gap),
          _buildDetails(),
        ],
      ),
    );
  }

  Widget _buildTitleContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: w * 0.06, vertical: h * 0.005),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(100),
        ),
        color: TColors.customGold,
      ),
      child: const CustomText(
        text: "Referral Earned Points Wallet",
        color: Colors.white,
        weight: FontWeight.w500,
        size: 14,
      ),
    );
  }

  Widget _buildDetails() {
    double gap = h * 0.01;
    return Column(
      children: [
        _buildDetailTile("Referral Points Balance", 0.00),
        Gap(gap),
        _buildDetailTile("Referral Points Balance", 0.00),
        Gap(gap),
        _buildDetailTile("Referral Points Balance", 0.00),
      ],
    );
  }

  Widget _buildDetailTile(String text, double amount) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.currency_rupee,
          size: 15,
          color: TColors.customGold,
        ).pOnly(top: 2),
        Gap(w * 0.02),
        Expanded(
          child: CustomText(
            text: text,
            size: 15,
          ),
        ),
        CustomText(
          text: ":  ₹ $amount",
          size: 15,
        ),
      ],
    );
  }
}
