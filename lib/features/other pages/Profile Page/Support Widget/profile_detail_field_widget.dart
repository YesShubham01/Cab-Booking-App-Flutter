import 'package:flutter/material.dart';

class ProfileDetailFieldWidget extends StatefulWidget {
  final String title;
  final String detail;

  const ProfileDetailFieldWidget({
    super.key,
    required this.title,
    required this.detail,
  });

  @override
  State<ProfileDetailFieldWidget> createState() =>
      _ProfileDetailFieldWidgetState();
}

class _ProfileDetailFieldWidgetState extends State<ProfileDetailFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(
            color: Colors.teal,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          widget.detail,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
