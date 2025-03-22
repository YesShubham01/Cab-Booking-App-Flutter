import 'package:cab_app/features/splash/screen/splash.dart';
import 'package:cab_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme,
      //   darkTheme: TAppTheme.darkTheme,
      home: const Splash(),
    );
  }
}
