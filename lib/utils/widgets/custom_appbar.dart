import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool darktheme;
  const CustomAppBar({super.key, this.title, this.darktheme = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      centerTitle: true,
      backgroundColor: (darktheme ? Colors.black : Colors.white),
      foregroundColor: (darktheme ? Colors.white : Colors.black),
      title: Text(
        title ?? "",
        style: const TextStyle(fontSize: 18),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
