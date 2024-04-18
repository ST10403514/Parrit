import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  final String notification;
  final double fontSize;

  const NotificationItem({
    super.key,
    required this.notification,
    this.fontSize = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16.0),
      width: 500, // Set the desired width
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          color: Colors.black,
          width: 2.0,
        ),
      ),
      child: Center(
        child: Text(
          notification,
          style: TextStyle(fontSize: fontSize),
          overflow: TextOverflow.ellipsis, // Show ellipsis if text overflows
        ),
      ),
    );
  }
}
