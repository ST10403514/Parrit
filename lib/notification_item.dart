import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  final String notification;

  const NotificationItem({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          color: Colors.black,
          width: 2.0,
        ),
      ),
      child: Text(
        notification,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
