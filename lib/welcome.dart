import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF02D8E9), // Use your desired color scheme
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Your logo goes here without Hero widget
            Container(
              padding: const EdgeInsets.all(8.0), // Adjust padding as needed
              decoration: BoxDecoration(
                  color: Colors.grey[200], // Background color
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ) // Optional: add border radius
                  ),
              child: Image.asset(
                'web/icons/Parrit.png', // Replace with your logo path
                height: 20, // Set the height of the image
                width: 20, // Set the width of the image
              ),
            ),

            // Welcome message
            const SizedBox(height: 20),
            const Text(
              'Welcome to Parrit',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Your personal notification companion',
              style: TextStyle(fontSize: 16),
            ),

            // Next button
            const SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black, // Border color
                  width: 2, // Border width
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the home page
                  Navigator.pushReplacementNamed(context, '/home');
                },
                child: const Text('Next'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
