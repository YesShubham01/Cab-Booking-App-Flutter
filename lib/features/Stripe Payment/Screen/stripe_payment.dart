import 'dart:convert';

import 'package:cab_app/utils/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:http/http.dart' as http;
import 'package:lottie/lottie.dart';

class PaymentPage extends StatefulWidget {
  final int amount;
  const PaymentPage({super.key, required this.amount});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  Map<String, dynamic>? paymentIntent;

  createPaymentIntent() async {
    try {
      String amount = (widget.amount * 100).toString();
      Map<String, dynamic> body = {
        "currency": "INR",
        "amount": amount,
        "payment_method_types[]": "card",
      };

      http.Response response = await http.post(
        Uri.parse("https://api.stripe.com/v1/payment_intents"),
        body: body,
        headers: {
          "Authorization":
              "Bearer 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",
          "Content-Type": "application/x-www-form-urlencoded",
        },
      );

      if (response.statusCode == 200) {
        print("Payment created successfully");
        return jsonDecode(response.body.toString());
      } else {
        print("Failed to create payment: ${response.statusCode}");
        throw Exception("Failed to create payment");
      }
    } catch (e) {
      print("Mew Failed: $e");
      throw Exception(e.toString());
    }
  }

  displayPaymentSheet() async {
    try {
      await Stripe.instance.presentPaymentSheet();
      print("sheet display done");
      setState(() {});
    } catch (e) {
      print("mew2 error:$e");
    }
  }

  makePayment() async {
    try {
      print("on click working");
      paymentIntent = await createPaymentIntent();
      var gpay = const PaymentSheetGooglePay(merchantCountryCode: "US");

      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          style: ThemeMode.light,
          paymentIntentClientSecret: paymentIntent?["client_secret"],
          merchantDisplayName: "Shubham",
          googlePay: const PaymentSheetGooglePay(
              merchantCountryCode: "IND", currencyCode: "INR"),
        ),
      );

      displayPaymentSheet();

      print("done");
    } catch (e) {
      print("mew3 error:$e");
    }

    //! remove this later
    // await Future.delayed(const Duration(seconds: 5));
    // Navigator.of(context).pushReplacement(
    //     MaterialPageRoute(builder: (context) => const OrderWaiting()));
  }

  @override
  void initState() {
    super.initState();
    makePayment();
  }

  @override
  Widget build(BuildContext context) {
    bool status = (paymentIntent == null);
    if (status == false) {
      Future.delayed(
        const Duration(seconds: 2),
        () {
          const snackBar = SnackBar(
            content: Text('Payment successful! Track in your Profile Page.'),
            duration: Duration(seconds: 3),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          Navigator.of(context).popUntil((route) => route.isFirst);
        },
      );
    }
    return Scaffold(
      appBar: const CustomAppBar(title: "Payment Page"),
      body: status
          ? Center(
              child: Lottie.asset('assets/lotties/waiting_sand_animation.json'),
            )
          : const CircularProgressIndicator(),
    );
  }
}
