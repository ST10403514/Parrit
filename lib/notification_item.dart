import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  final int index;
  final String notification;
  final double fontSize;
  final double lineHeight;

  const NotificationItem({
    super.key,
    required this.index,
    required this.notification,
    this.fontSize = 16.0,
    this.lineHeight = 1.2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16.0),
      width: 1920,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          color: Colors.black,
          width: 2.0,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Notification ${index + 1}:',
            style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            notification,
            style: TextStyle(fontSize: fontSize),
          ),
        ],
      ),
    );
  }
}
