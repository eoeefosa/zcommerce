import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key, required this.title, this.iconData, this.child});
  final String title;
  final IconData? iconData;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: iconData == null ? null : Icon(iconData),
      tileColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 4),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
      ),
      trailing: child ??
          const Icon(
            Icons.arrow_forward_ios,
            size: 13,
            color: Colors.black,
          ),
    );
  }
}
