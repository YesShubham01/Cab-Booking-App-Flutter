import 'package:cab_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'app.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Stripe.publishableKey =
      'pk_live_51NxrFZSByBFnaKsKtgT4jeZtrUQLtoLCX0JDjkpdQQTXBBXK6P4ayscA5CtQ15szoSfjqk2zhLGoPa6JiJacBBbu00xhEr4FlD';
  runApp(const MyApp());
}
