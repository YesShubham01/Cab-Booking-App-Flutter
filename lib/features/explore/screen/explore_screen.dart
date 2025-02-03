import 'package:cab_co19/utils/widgets/custom_web_view.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return const WebViewContainer(
      url: "https://flutter.dev/",
    );
  }
}
