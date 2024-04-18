import 'package:flutter/material.dart';

class AddNotificationDialog extends StatefulWidget {
  final Function(List<String>) onAddNotification;

  const AddNotificationDialog({super.key, required this.onAddNotification});

  @override
  // ignore: library_private_types_in_public_api
  _AddNotificationDialogState createState() => _AddNotificationDialogState();
}

class _AddNotificationDialogState extends State<AddNotificationDialog> {
  List<String> notificationInfo = ['']; // Initial entry

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: Colors.black, width: 2),
      ),
      title: const Text(
        'Add Notification',
        style: TextStyle(color: Colors.black),
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (int i = 0; i < notificationInfo.length; i++)
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          notificationInfo[i] = value;
                        });
                      },
                      decoration: const InputDecoration(
                        hintText: 'Enter your notification...',
                      ),
                    ),
                  ),
                  if (i == notificationInfo.length - 1) // Show "+" on last row
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          notificationInfo.add('');
                        });
                      },
                    ),
                ],
              ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
          child: const Text(
            'Cancel',
            style: TextStyle(color: Colors.black),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            elevation: 0,
            side: const BorderSide(color: Colors.black, width: 2),
          ),
          onPressed: () {
            widget.onAddNotification(notificationInfo);
            Navigator.of(context).pop(); // Close the dialog
          },
          child: const Text('Add'),
        ),
      ],
    );
  }
}

void showCustomDialog(
    BuildContext context, Function(List<String>) addNotification) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AddNotificationDialog(onAddNotification: addNotification);
    },
  );
}
