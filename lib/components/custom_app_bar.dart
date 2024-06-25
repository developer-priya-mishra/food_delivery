import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String label;

  const CustomAppBar({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFF2F2F2),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 20.0,
        ),
      ),
      title: Text(
        label,
        style: const TextStyle(
          fontSize: 18.0,
          fontFamily: 'SF-Pro-Rounded-Semibold',
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
