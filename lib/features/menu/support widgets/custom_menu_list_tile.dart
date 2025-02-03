import 'package:flutter/material.dart';

class CustomMenuListTile extends StatefulWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback? onPressed;
  final bool color;
  const CustomMenuListTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.onPressed,
    this.color = true,
  });

  @override
  State<CustomMenuListTile> createState() => _CustomMenuListTileState();
}

class _CustomMenuListTileState extends State<CustomMenuListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: widget.onPressed,
      tileColor: widget.color
          ? const Color.fromARGB(255, 234, 234, 234)
          : Colors.white,
      leading: Icon(widget.icon),
      title: Text(
        widget.title,
        style: const TextStyle(color: Colors.black),
      ),
      subtitle: Text(
        widget.subtitle,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
